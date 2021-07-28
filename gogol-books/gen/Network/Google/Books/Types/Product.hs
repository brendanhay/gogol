{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Books.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Books.Types.Product where

import Network.Google.Books.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'userSettings' smart constructor.
data UserSettings =
  UserSettings'
    { _usNotification :: !(Maybe UserSettingsNotification)
    , _usKind :: !(Maybe Text)
    , _usNotesExport :: !(Maybe UserSettingsNotesExport)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usNotification'
--
-- * 'usKind'
--
-- * 'usNotesExport'
userSettings
    :: UserSettings
userSettings =
  UserSettings'
    {_usNotification = Nothing, _usKind = Nothing, _usNotesExport = Nothing}


usNotification :: Lens' UserSettings (Maybe UserSettingsNotification)
usNotification
  = lens _usNotification
      (\ s a -> s{_usNotification = a})

-- | Resource type.
usKind :: Lens' UserSettings (Maybe Text)
usKind = lens _usKind (\ s a -> s{_usKind = a})

-- | User settings in sub-objects, each for different purposes.
usNotesExport :: Lens' UserSettings (Maybe UserSettingsNotesExport)
usNotesExport
  = lens _usNotesExport
      (\ s a -> s{_usNotesExport = a})

instance FromJSON UserSettings where
        parseJSON
          = withObject "UserSettings"
              (\ o ->
                 UserSettings' <$>
                   (o .:? "notification") <*> (o .:? "kind") <*>
                     (o .:? "notesExport"))

instance ToJSON UserSettings where
        toJSON UserSettings'{..}
          = object
              (catMaybes
                 [("notification" .=) <$> _usNotification,
                  ("kind" .=) <$> _usKind,
                  ("notesExport" .=) <$> _usNotesExport])

--
-- /See:/ 'annotations' smart constructor.
data Annotations =
  Annotations'
    { _aTotalItems :: !(Maybe (Textual Int32))
    , _aNextPageToken :: !(Maybe Text)
    , _aKind :: !(Maybe Text)
    , _aItems :: !(Maybe [Annotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Annotations'
    { _aTotalItems = Nothing
    , _aNextPageToken = Nothing
    , _aKind = Nothing
    , _aItems = Nothing
    }


-- | Total number of annotations found. This may be greater than the number
-- of notes returned in this response if results have been paginated.
aTotalItems :: Lens' Annotations (Maybe Int32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a}) .
      mapping _Coerce

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
aNextPageToken :: Lens' Annotations (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Resource type.
aKind :: Lens' Annotations (Maybe Text)
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
                 Annotations' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Annotations where
        toJSON Annotations'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aTotalItems,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  ("kind" .=) <$> _aKind, ("items" .=) <$> _aItems])

--
-- /See:/ 'seriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo' smart constructor.
data SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo'
    { _ssissricriReleaseTime :: !(Maybe Text)
    , _ssissricriCurrencyCode :: !(Maybe Text)
    , _ssissricriAmountInMicros :: !(Maybe (Textual Double))
    , _ssissricriReleaseNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssissricriReleaseTime'
--
-- * 'ssissricriCurrencyCode'
--
-- * 'ssissricriAmountInMicros'
--
-- * 'ssissricriReleaseNumber'
seriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo
    :: SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo
seriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo'
    { _ssissricriReleaseTime = Nothing
    , _ssissricriCurrencyCode = Nothing
    , _ssissricriAmountInMicros = Nothing
    , _ssissricriReleaseNumber = Nothing
    }


ssissricriReleaseTime :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo (Maybe Text)
ssissricriReleaseTime
  = lens _ssissricriReleaseTime
      (\ s a -> s{_ssissricriReleaseTime = a})

ssissricriCurrencyCode :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo (Maybe Text)
ssissricriCurrencyCode
  = lens _ssissricriCurrencyCode
      (\ s a -> s{_ssissricriCurrencyCode = a})

ssissricriAmountInMicros :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo (Maybe Double)
ssissricriAmountInMicros
  = lens _ssissricriAmountInMicros
      (\ s a -> s{_ssissricriAmountInMicros = a})
      . mapping _Coerce

ssissricriReleaseNumber :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo (Maybe Text)
ssissricriReleaseNumber
  = lens _ssissricriReleaseNumber
      (\ s a -> s{_ssissricriReleaseNumber = a})

instance FromJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo
         where
        parseJSON
          = withObject
              "SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo"
              (\ o ->
                 SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo'
                   <$>
                   (o .:? "releaseTime") <*> (o .:? "currencyCode") <*>
                     (o .:? "amountInMicros")
                     <*> (o .:? "releaseNumber"))

instance ToJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo
         where
        toJSON
          SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo'{..}
          = object
              (catMaybes
                 [("releaseTime" .=) <$> _ssissricriReleaseTime,
                  ("currencyCode" .=) <$> _ssissricriCurrencyCode,
                  ("amountInMicros" .=) <$> _ssissricriAmountInMicros,
                  ("releaseNumber" .=) <$> _ssissricriReleaseNumber])

-- | The reading modes available for this volume.
--
-- /See:/ 'volumeVolumeInfoReadingModes' smart constructor.
data VolumeVolumeInfoReadingModes =
  VolumeVolumeInfoReadingModes'
    { _vvirmImage :: !(Maybe Bool)
    , _vvirmText :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeVolumeInfoReadingModes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvirmImage'
--
-- * 'vvirmText'
volumeVolumeInfoReadingModes
    :: VolumeVolumeInfoReadingModes
volumeVolumeInfoReadingModes =
  VolumeVolumeInfoReadingModes' {_vvirmImage = Nothing, _vvirmText = Nothing}


vvirmImage :: Lens' VolumeVolumeInfoReadingModes (Maybe Bool)
vvirmImage
  = lens _vvirmImage (\ s a -> s{_vvirmImage = a})

vvirmText :: Lens' VolumeVolumeInfoReadingModes (Maybe Bool)
vvirmText
  = lens _vvirmText (\ s a -> s{_vvirmText = a})

instance FromJSON VolumeVolumeInfoReadingModes where
        parseJSON
          = withObject "VolumeVolumeInfoReadingModes"
              (\ o ->
                 VolumeVolumeInfoReadingModes' <$>
                   (o .:? "image") <*> (o .:? "text"))

instance ToJSON VolumeVolumeInfoReadingModes where
        toJSON VolumeVolumeInfoReadingModes'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _vvirmImage,
                  ("text" .=) <$> _vvirmText])

--
-- /See:/ 'annotationsData' smart constructor.
data AnnotationsData =
  AnnotationsData'
    { _adTotalItems :: !(Maybe (Textual Int32))
    , _adNextPageToken :: !(Maybe Text)
    , _adKind :: !(Maybe Text)
    , _adItems :: !(Maybe [GeoAnnotationData])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnnotationsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adTotalItems'
--
-- * 'adNextPageToken'
--
-- * 'adKind'
--
-- * 'adItems'
annotationsData
    :: AnnotationsData
annotationsData =
  AnnotationsData'
    { _adTotalItems = Nothing
    , _adNextPageToken = Nothing
    , _adKind = Nothing
    , _adItems = Nothing
    }


-- | The total number of volume annotations found.
adTotalItems :: Lens' AnnotationsData (Maybe Int32)
adTotalItems
  = lens _adTotalItems (\ s a -> s{_adTotalItems = a})
      . mapping _Coerce

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
adNextPageToken :: Lens' AnnotationsData (Maybe Text)
adNextPageToken
  = lens _adNextPageToken
      (\ s a -> s{_adNextPageToken = a})

-- | Resource type
adKind :: Lens' AnnotationsData (Maybe Text)
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | A list of Annotation Data.
adItems :: Lens' AnnotationsData [GeoAnnotationData]
adItems
  = lens _adItems (\ s a -> s{_adItems = a}) . _Default
      . _Coerce

instance FromJSON AnnotationsData where
        parseJSON
          = withObject "AnnotationsData"
              (\ o ->
                 AnnotationsData' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AnnotationsData where
        toJSON AnnotationsData'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _adTotalItems,
                  ("nextPageToken" .=) <$> _adNextPageToken,
                  ("kind" .=) <$> _adKind, ("items" .=) <$> _adItems])

--
-- /See:/ 'userSettingsNotificationMoreFromAuthors' smart constructor.
newtype UserSettingsNotificationMoreFromAuthors =
  UserSettingsNotificationMoreFromAuthors'
    { _usnmfaOptedState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotificationMoreFromAuthors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnmfaOptedState'
userSettingsNotificationMoreFromAuthors
    :: UserSettingsNotificationMoreFromAuthors
userSettingsNotificationMoreFromAuthors =
  UserSettingsNotificationMoreFromAuthors' {_usnmfaOptedState = Nothing}


usnmfaOptedState :: Lens' UserSettingsNotificationMoreFromAuthors (Maybe Text)
usnmfaOptedState
  = lens _usnmfaOptedState
      (\ s a -> s{_usnmfaOptedState = a})

instance FromJSON
           UserSettingsNotificationMoreFromAuthors
         where
        parseJSON
          = withObject
              "UserSettingsNotificationMoreFromAuthors"
              (\ o ->
                 UserSettingsNotificationMoreFromAuthors' <$>
                   (o .:? "opted_state"))

instance ToJSON
           UserSettingsNotificationMoreFromAuthors
         where
        toJSON UserSettingsNotificationMoreFromAuthors'{..}
          = object
              (catMaybes
                 [("opted_state" .=) <$> _usnmfaOptedState])

--
-- /See:/ 'volumeannotations' smart constructor.
data Volumeannotations =
  Volumeannotations'
    { _vTotalItems :: !(Maybe (Textual Int32))
    , _vNextPageToken :: !(Maybe Text)
    , _vKind :: !(Maybe Text)
    , _vItems :: !(Maybe [Volumeannotation])
    , _vVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Volumeannotations'
    { _vTotalItems = Nothing
    , _vNextPageToken = Nothing
    , _vKind = Nothing
    , _vItems = Nothing
    , _vVersion = Nothing
    }


-- | The total number of volume annotations found.
vTotalItems :: Lens' Volumeannotations (Maybe Int32)
vTotalItems
  = lens _vTotalItems (\ s a -> s{_vTotalItems = a}) .
      mapping _Coerce

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
vNextPageToken :: Lens' Volumeannotations (Maybe Text)
vNextPageToken
  = lens _vNextPageToken
      (\ s a -> s{_vNextPageToken = a})

-- | Resource type
vKind :: Lens' Volumeannotations (Maybe Text)
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
                 Volumeannotations' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON Volumeannotations where
        toJSON Volumeannotations'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _vTotalItems,
                  ("nextPageToken" .=) <$> _vNextPageToken,
                  ("kind" .=) <$> _vKind, ("items" .=) <$> _vItems,
                  ("version" .=) <$> _vVersion])

-- | Information regarding the source of this review, when the review is not
-- from a Google Books user.
--
-- /See:/ 'reviewSource' smart constructor.
data ReviewSource =
  ReviewSource'
    { _rsExtraDescription :: !(Maybe Text)
    , _rsURL :: !(Maybe Text)
    , _rsDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ReviewSource'
    {_rsExtraDescription = Nothing, _rsURL = Nothing, _rsDescription = Nothing}


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
                 ReviewSource' <$>
                   (o .:? "extraDescription") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON ReviewSource where
        toJSON ReviewSource'{..}
          = object
              (catMaybes
                 [("extraDescription" .=) <$> _rsExtraDescription,
                  ("url" .=) <$> _rsURL,
                  ("description" .=) <$> _rsDescription])

--
-- /See:/ 'volumeannotation' smart constructor.
data Volumeannotation =
  Volumeannotation'
    { _volSelectedText :: !(Maybe Text)
    , _volAnnotationDataLink :: !(Maybe Text)
    , _volPageIds :: !(Maybe [Text])
    , _volKind :: !(Maybe Text)
    , _volData :: !(Maybe Text)
    , _volSelfLink :: !(Maybe Text)
    , _volAnnotationType :: !(Maybe Text)
    , _volAnnotationDataId :: !(Maybe Text)
    , _volContentRanges :: !(Maybe VolumeannotationContentRanges)
    , _volVolumeId :: !(Maybe Text)
    , _volId :: !(Maybe Text)
    , _volDeleted :: !(Maybe Bool)
    , _volUpdated :: !(Maybe Text)
    , _volLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Volumeannotation'
    { _volSelectedText = Nothing
    , _volAnnotationDataLink = Nothing
    , _volPageIds = Nothing
    , _volKind = Nothing
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
volKind :: Lens' Volumeannotation (Maybe Text)
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
volUpdated :: Lens' Volumeannotation (Maybe Text)
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
                 Volumeannotation' <$>
                   (o .:? "selectedText") <*>
                     (o .:? "annotationDataLink")
                     <*> (o .:? "pageIds" .!= mempty)
                     <*> (o .:? "kind")
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
        toJSON Volumeannotation'{..}
          = object
              (catMaybes
                 [("selectedText" .=) <$> _volSelectedText,
                  ("annotationDataLink" .=) <$> _volAnnotationDataLink,
                  ("pageIds" .=) <$> _volPageIds,
                  ("kind" .=) <$> _volKind, ("data" .=) <$> _volData,
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
data BooksCloudLoadingResource =
  BooksCloudLoadingResource'
    { _bclrProcessingState :: !(Maybe Text)
    , _bclrVolumeId :: !(Maybe Text)
    , _bclrAuthor :: !(Maybe Text)
    , _bclrTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  BooksCloudLoadingResource'
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
                 BooksCloudLoadingResource' <$>
                   (o .:? "processingState") <*> (o .:? "volumeId") <*>
                     (o .:? "author")
                     <*> (o .:? "title"))

instance ToJSON BooksCloudLoadingResource where
        toJSON BooksCloudLoadingResource'{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _bclrProcessingState,
                  ("volumeId" .=) <$> _bclrVolumeId,
                  ("author" .=) <$> _bclrAuthor,
                  ("title" .=) <$> _bclrTitle])

--
-- /See:/ 'volumeseriesInfoVolumeSeriesItemIssueItem' smart constructor.
data VolumeseriesInfoVolumeSeriesItemIssueItem =
  VolumeseriesInfoVolumeSeriesItemIssueItem'
    { _vivsiiiIssueOrderNumber :: !(Maybe (Textual Int32))
    , _vivsiiiIssueDisplayNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeseriesInfoVolumeSeriesItemIssueItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vivsiiiIssueOrderNumber'
--
-- * 'vivsiiiIssueDisplayNumber'
volumeseriesInfoVolumeSeriesItemIssueItem
    :: VolumeseriesInfoVolumeSeriesItemIssueItem
volumeseriesInfoVolumeSeriesItemIssueItem =
  VolumeseriesInfoVolumeSeriesItemIssueItem'
    {_vivsiiiIssueOrderNumber = Nothing, _vivsiiiIssueDisplayNumber = Nothing}


vivsiiiIssueOrderNumber :: Lens' VolumeseriesInfoVolumeSeriesItemIssueItem (Maybe Int32)
vivsiiiIssueOrderNumber
  = lens _vivsiiiIssueOrderNumber
      (\ s a -> s{_vivsiiiIssueOrderNumber = a})
      . mapping _Coerce

vivsiiiIssueDisplayNumber :: Lens' VolumeseriesInfoVolumeSeriesItemIssueItem (Maybe Text)
vivsiiiIssueDisplayNumber
  = lens _vivsiiiIssueDisplayNumber
      (\ s a -> s{_vivsiiiIssueDisplayNumber = a})

instance FromJSON
           VolumeseriesInfoVolumeSeriesItemIssueItem
         where
        parseJSON
          = withObject
              "VolumeseriesInfoVolumeSeriesItemIssueItem"
              (\ o ->
                 VolumeseriesInfoVolumeSeriesItemIssueItem' <$>
                   (o .:? "issueOrderNumber") <*>
                     (o .:? "issueDisplayNumber"))

instance ToJSON
           VolumeseriesInfoVolumeSeriesItemIssueItem
         where
        toJSON VolumeseriesInfoVolumeSeriesItemIssueItem'{..}
          = object
              (catMaybes
                 [("issueOrderNumber" .=) <$>
                    _vivsiiiIssueOrderNumber,
                  ("issueDisplayNumber" .=) <$>
                    _vivsiiiIssueDisplayNumber])

--
-- /See:/ 'annotation' smart constructor.
data Annotation =
  Annotation'
    { _annSelectedText :: !(Maybe Text)
    , _annLayerSummary :: !(Maybe AnnotationLayerSummary)
    , _annHighlightStyle :: !(Maybe Text)
    , _annClientVersionRanges :: !(Maybe AnnotationClientVersionRanges)
    , _annPageIds :: !(Maybe [Text])
    , _annKind :: !(Maybe Text)
    , _annData :: !(Maybe Text)
    , _annCreated :: !(Maybe Text)
    , _annAfterSelectedText :: !(Maybe Text)
    , _annSelfLink :: !(Maybe Text)
    , _annCurrentVersionRanges :: !(Maybe AnnotationCurrentVersionRanges)
    , _annVolumeId :: !(Maybe Text)
    , _annBeforeSelectedText :: !(Maybe Text)
    , _annId :: !(Maybe Text)
    , _annDeleted :: !(Maybe Bool)
    , _annUpdated :: !(Maybe Text)
    , _annLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'annSelectedText'
--
-- * 'annLayerSummary'
--
-- * 'annHighlightStyle'
--
-- * 'annClientVersionRanges'
--
-- * 'annPageIds'
--
-- * 'annKind'
--
-- * 'annData'
--
-- * 'annCreated'
--
-- * 'annAfterSelectedText'
--
-- * 'annSelfLink'
--
-- * 'annCurrentVersionRanges'
--
-- * 'annVolumeId'
--
-- * 'annBeforeSelectedText'
--
-- * 'annId'
--
-- * 'annDeleted'
--
-- * 'annUpdated'
--
-- * 'annLayerId'
annotation
    :: Annotation
annotation =
  Annotation'
    { _annSelectedText = Nothing
    , _annLayerSummary = Nothing
    , _annHighlightStyle = Nothing
    , _annClientVersionRanges = Nothing
    , _annPageIds = Nothing
    , _annKind = Nothing
    , _annData = Nothing
    , _annCreated = Nothing
    , _annAfterSelectedText = Nothing
    , _annSelfLink = Nothing
    , _annCurrentVersionRanges = Nothing
    , _annVolumeId = Nothing
    , _annBeforeSelectedText = Nothing
    , _annId = Nothing
    , _annDeleted = Nothing
    , _annUpdated = Nothing
    , _annLayerId = Nothing
    }


-- | Excerpt from the volume.
annSelectedText :: Lens' Annotation (Maybe Text)
annSelectedText
  = lens _annSelectedText
      (\ s a -> s{_annSelectedText = a})

annLayerSummary :: Lens' Annotation (Maybe AnnotationLayerSummary)
annLayerSummary
  = lens _annLayerSummary
      (\ s a -> s{_annLayerSummary = a})

-- | The highlight style for this annotation.
annHighlightStyle :: Lens' Annotation (Maybe Text)
annHighlightStyle
  = lens _annHighlightStyle
      (\ s a -> s{_annHighlightStyle = a})

-- | Selection ranges sent from the client.
annClientVersionRanges :: Lens' Annotation (Maybe AnnotationClientVersionRanges)
annClientVersionRanges
  = lens _annClientVersionRanges
      (\ s a -> s{_annClientVersionRanges = a})

-- | Pages that this annotation spans.
annPageIds :: Lens' Annotation [Text]
annPageIds
  = lens _annPageIds (\ s a -> s{_annPageIds = a}) .
      _Default
      . _Coerce

-- | Resource type.
annKind :: Lens' Annotation (Maybe Text)
annKind = lens _annKind (\ s a -> s{_annKind = a})

-- | User-created data for this annotation.
annData :: Lens' Annotation (Maybe Text)
annData = lens _annData (\ s a -> s{_annData = a})

-- | Timestamp for the created time of this annotation.
annCreated :: Lens' Annotation (Maybe Text)
annCreated
  = lens _annCreated (\ s a -> s{_annCreated = a})

-- | Anchor text after excerpt. For requests, if the user bookmarked a screen
-- that has no flowing text on it, then this field should be empty.
annAfterSelectedText :: Lens' Annotation (Maybe Text)
annAfterSelectedText
  = lens _annAfterSelectedText
      (\ s a -> s{_annAfterSelectedText = a})

-- | URL to this resource.
annSelfLink :: Lens' Annotation (Maybe Text)
annSelfLink
  = lens _annSelfLink (\ s a -> s{_annSelfLink = a})

-- | Selection ranges for the most recent content version.
annCurrentVersionRanges :: Lens' Annotation (Maybe AnnotationCurrentVersionRanges)
annCurrentVersionRanges
  = lens _annCurrentVersionRanges
      (\ s a -> s{_annCurrentVersionRanges = a})

-- | The volume that this annotation belongs to.
annVolumeId :: Lens' Annotation (Maybe Text)
annVolumeId
  = lens _annVolumeId (\ s a -> s{_annVolumeId = a})

-- | Anchor text before excerpt. For requests, if the user bookmarked a
-- screen that has no flowing text on it, then this field should be empty.
annBeforeSelectedText :: Lens' Annotation (Maybe Text)
annBeforeSelectedText
  = lens _annBeforeSelectedText
      (\ s a -> s{_annBeforeSelectedText = a})

-- | Id of this annotation, in the form of a GUID.
annId :: Lens' Annotation (Maybe Text)
annId = lens _annId (\ s a -> s{_annId = a})

-- | Indicates that this annotation is deleted.
annDeleted :: Lens' Annotation (Maybe Bool)
annDeleted
  = lens _annDeleted (\ s a -> s{_annDeleted = a})

-- | Timestamp for the last time this annotation was modified.
annUpdated :: Lens' Annotation (Maybe Text)
annUpdated
  = lens _annUpdated (\ s a -> s{_annUpdated = a})

-- | The layer this annotation is for.
annLayerId :: Lens' Annotation (Maybe Text)
annLayerId
  = lens _annLayerId (\ s a -> s{_annLayerId = a})

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation' <$>
                   (o .:? "selectedText") <*> (o .:? "layerSummary") <*>
                     (o .:? "highlightStyle")
                     <*> (o .:? "clientVersionRanges")
                     <*> (o .:? "pageIds" .!= mempty)
                     <*> (o .:? "kind")
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
        toJSON Annotation'{..}
          = object
              (catMaybes
                 [("selectedText" .=) <$> _annSelectedText,
                  ("layerSummary" .=) <$> _annLayerSummary,
                  ("highlightStyle" .=) <$> _annHighlightStyle,
                  ("clientVersionRanges" .=) <$>
                    _annClientVersionRanges,
                  ("pageIds" .=) <$> _annPageIds,
                  ("kind" .=) <$> _annKind, ("data" .=) <$> _annData,
                  ("created" .=) <$> _annCreated,
                  ("afterSelectedText" .=) <$> _annAfterSelectedText,
                  ("selfLink" .=) <$> _annSelfLink,
                  ("currentVersionRanges" .=) <$>
                    _annCurrentVersionRanges,
                  ("volumeId" .=) <$> _annVolumeId,
                  ("beforeSelectedText" .=) <$> _annBeforeSelectedText,
                  ("id" .=) <$> _annId, ("deleted" .=) <$> _annDeleted,
                  ("updated" .=) <$> _annUpdated,
                  ("layerId" .=) <$> _annLayerId])

-- | Author of this review.
--
-- /See:/ 'reviewAuthor' smart constructor.
newtype ReviewAuthor =
  ReviewAuthor'
    { _raDisplayName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raDisplayName'
reviewAuthor
    :: ReviewAuthor
reviewAuthor = ReviewAuthor' {_raDisplayName = Nothing}


-- | Name of this person.
raDisplayName :: Lens' ReviewAuthor (Maybe Text)
raDisplayName
  = lens _raDisplayName
      (\ s a -> s{_raDisplayName = a})

instance FromJSON ReviewAuthor where
        parseJSON
          = withObject "ReviewAuthor"
              (\ o -> ReviewAuthor' <$> (o .:? "displayName"))

instance ToJSON ReviewAuthor where
        toJSON ReviewAuthor'{..}
          = object
              (catMaybes [("displayName" .=) <$> _raDisplayName])

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
--
-- /See:/ 'geolayerDataGeoViewport' smart constructor.
data GeolayerDataGeoViewport =
  GeolayerDataGeoViewport'
    { _gdgvHi :: !(Maybe GeolayerDataGeoViewportHi)
    , _gdgvLo :: !(Maybe GeolayerDataGeoViewportLo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerDataGeoViewport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgvHi'
--
-- * 'gdgvLo'
geolayerDataGeoViewport
    :: GeolayerDataGeoViewport
geolayerDataGeoViewport =
  GeolayerDataGeoViewport' {_gdgvHi = Nothing, _gdgvLo = Nothing}


gdgvHi :: Lens' GeolayerDataGeoViewport (Maybe GeolayerDataGeoViewportHi)
gdgvHi = lens _gdgvHi (\ s a -> s{_gdgvHi = a})

gdgvLo :: Lens' GeolayerDataGeoViewport (Maybe GeolayerDataGeoViewportLo)
gdgvLo = lens _gdgvLo (\ s a -> s{_gdgvLo = a})

instance FromJSON GeolayerDataGeoViewport where
        parseJSON
          = withObject "GeolayerDataGeoViewport"
              (\ o ->
                 GeolayerDataGeoViewport' <$>
                   (o .:? "hi") <*> (o .:? "lo"))

instance ToJSON GeolayerDataGeoViewport where
        toJSON GeolayerDataGeoViewport'{..}
          = object
              (catMaybes
                 [("hi" .=) <$> _gdgvHi, ("lo" .=) <$> _gdgvLo])

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
--
-- /See:/ 'volumeUserInfo' smart constructor.
data VolumeUserInfo =
  VolumeUserInfo'
    { _vuiIsFamilySharingAllowed :: !(Maybe Bool)
    , _vuiIsFamilySharedToUser :: !(Maybe Bool)
    , _vuiCopy :: !(Maybe VolumeUserInfoCopy)
    , _vuiUserUploadedVolumeInfo :: !(Maybe VolumeUserInfoUserUploadedVolumeInfo)
    , _vuiIsPurchased :: !(Maybe Bool)
    , _vuiEntitlementType :: !(Maybe (Textual Int32))
    , _vuiAcquisitionType :: !(Maybe (Textual Int32))
    , _vuiAcquiredTime :: !(Maybe Text)
    , _vuiRentalState :: !(Maybe Text)
    , _vuiIsPreOrdered :: !(Maybe Bool)
    , _vuiReview :: !(Maybe Review)
    , _vuiIsFamilySharedFromUser :: !(Maybe Bool)
    , _vuiRentalPeriod :: !(Maybe VolumeUserInfoRentalPeriod)
    , _vuiUpdated :: !(Maybe Text)
    , _vuiIsUploaded :: !(Maybe Bool)
    , _vuiIsInMyBooks :: !(Maybe Bool)
    , _vuiReadingPosition :: !(Maybe ReadingPosition)
    , _vuiFamilySharing :: !(Maybe VolumeUserInfoFamilySharing)
    , _vuiIsFamilySharingDisabledByFop :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuiIsFamilySharingAllowed'
--
-- * 'vuiIsFamilySharedToUser'
--
-- * 'vuiCopy'
--
-- * 'vuiUserUploadedVolumeInfo'
--
-- * 'vuiIsPurchased'
--
-- * 'vuiEntitlementType'
--
-- * 'vuiAcquisitionType'
--
-- * 'vuiAcquiredTime'
--
-- * 'vuiRentalState'
--
-- * 'vuiIsPreOrdered'
--
-- * 'vuiReview'
--
-- * 'vuiIsFamilySharedFromUser'
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
--
-- * 'vuiFamilySharing'
--
-- * 'vuiIsFamilySharingDisabledByFop'
volumeUserInfo
    :: VolumeUserInfo
volumeUserInfo =
  VolumeUserInfo'
    { _vuiIsFamilySharingAllowed = Nothing
    , _vuiIsFamilySharedToUser = Nothing
    , _vuiCopy = Nothing
    , _vuiUserUploadedVolumeInfo = Nothing
    , _vuiIsPurchased = Nothing
    , _vuiEntitlementType = Nothing
    , _vuiAcquisitionType = Nothing
    , _vuiAcquiredTime = Nothing
    , _vuiRentalState = Nothing
    , _vuiIsPreOrdered = Nothing
    , _vuiReview = Nothing
    , _vuiIsFamilySharedFromUser = Nothing
    , _vuiRentalPeriod = Nothing
    , _vuiUpdated = Nothing
    , _vuiIsUploaded = Nothing
    , _vuiIsInMyBooks = Nothing
    , _vuiReadingPosition = Nothing
    , _vuiFamilySharing = Nothing
    , _vuiIsFamilySharingDisabledByFop = Nothing
    }


-- | Deprecated: Replaced by familySharing.
vuiIsFamilySharingAllowed :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsFamilySharingAllowed
  = lens _vuiIsFamilySharingAllowed
      (\ s a -> s{_vuiIsFamilySharingAllowed = a})

-- | Whether or not the user received this volume through family sharing.
vuiIsFamilySharedToUser :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsFamilySharedToUser
  = lens _vuiIsFamilySharedToUser
      (\ s a -> s{_vuiIsFamilySharedToUser = a})

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

-- | Whether this volume is purchased, sample, pd download etc.
vuiEntitlementType :: Lens' VolumeUserInfo (Maybe Int32)
vuiEntitlementType
  = lens _vuiEntitlementType
      (\ s a -> s{_vuiEntitlementType = a})
      . mapping _Coerce

-- | How this volume was acquired.
vuiAcquisitionType :: Lens' VolumeUserInfo (Maybe Int32)
vuiAcquisitionType
  = lens _vuiAcquisitionType
      (\ s a -> s{_vuiAcquisitionType = a})
      . mapping _Coerce

-- | Timestamp when this volume was acquired by the user. (RFC 3339 UTC
-- date-time format) Acquiring includes purchase, user upload, receiving
-- family sharing, etc.
vuiAcquiredTime :: Lens' VolumeUserInfo (Maybe Text)
vuiAcquiredTime
  = lens _vuiAcquiredTime
      (\ s a -> s{_vuiAcquiredTime = a})

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

-- | Whether or not the user shared this volume with the family.
vuiIsFamilySharedFromUser :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsFamilySharedFromUser
  = lens _vuiIsFamilySharedFromUser
      (\ s a -> s{_vuiIsFamilySharedFromUser = a})

-- | Period during this book is\/was a valid rental.
vuiRentalPeriod :: Lens' VolumeUserInfo (Maybe VolumeUserInfoRentalPeriod)
vuiRentalPeriod
  = lens _vuiRentalPeriod
      (\ s a -> s{_vuiRentalPeriod = a})

-- | Timestamp when this volume was last modified by a user action, such as a
-- reading position update, volume purchase or writing a review. (RFC 3339
-- UTC date-time format).
vuiUpdated :: Lens' VolumeUserInfo (Maybe Text)
vuiUpdated
  = lens _vuiUpdated (\ s a -> s{_vuiUpdated = a})

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

-- | Information on the ability to share with the family.
vuiFamilySharing :: Lens' VolumeUserInfo (Maybe VolumeUserInfoFamilySharing)
vuiFamilySharing
  = lens _vuiFamilySharing
      (\ s a -> s{_vuiFamilySharing = a})

-- | Deprecated: Replaced by familySharing.
vuiIsFamilySharingDisabledByFop :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsFamilySharingDisabledByFop
  = lens _vuiIsFamilySharingDisabledByFop
      (\ s a -> s{_vuiIsFamilySharingDisabledByFop = a})

instance FromJSON VolumeUserInfo where
        parseJSON
          = withObject "VolumeUserInfo"
              (\ o ->
                 VolumeUserInfo' <$>
                   (o .:? "isFamilySharingAllowed") <*>
                     (o .:? "isFamilySharedToUser")
                     <*> (o .:? "copy")
                     <*> (o .:? "userUploadedVolumeInfo")
                     <*> (o .:? "isPurchased")
                     <*> (o .:? "entitlementType")
                     <*> (o .:? "acquisitionType")
                     <*> (o .:? "acquiredTime")
                     <*> (o .:? "rentalState")
                     <*> (o .:? "isPreordered")
                     <*> (o .:? "review")
                     <*> (o .:? "isFamilySharedFromUser")
                     <*> (o .:? "rentalPeriod")
                     <*> (o .:? "updated")
                     <*> (o .:? "isUploaded")
                     <*> (o .:? "isInMyBooks")
                     <*> (o .:? "readingPosition")
                     <*> (o .:? "familySharing")
                     <*> (o .:? "isFamilySharingDisabledByFop"))

instance ToJSON VolumeUserInfo where
        toJSON VolumeUserInfo'{..}
          = object
              (catMaybes
                 [("isFamilySharingAllowed" .=) <$>
                    _vuiIsFamilySharingAllowed,
                  ("isFamilySharedToUser" .=) <$>
                    _vuiIsFamilySharedToUser,
                  ("copy" .=) <$> _vuiCopy,
                  ("userUploadedVolumeInfo" .=) <$>
                    _vuiUserUploadedVolumeInfo,
                  ("isPurchased" .=) <$> _vuiIsPurchased,
                  ("entitlementType" .=) <$> _vuiEntitlementType,
                  ("acquisitionType" .=) <$> _vuiAcquisitionType,
                  ("acquiredTime" .=) <$> _vuiAcquiredTime,
                  ("rentalState" .=) <$> _vuiRentalState,
                  ("isPreordered" .=) <$> _vuiIsPreOrdered,
                  ("review" .=) <$> _vuiReview,
                  ("isFamilySharedFromUser" .=) <$>
                    _vuiIsFamilySharedFromUser,
                  ("rentalPeriod" .=) <$> _vuiRentalPeriod,
                  ("updated" .=) <$> _vuiUpdated,
                  ("isUploaded" .=) <$> _vuiIsUploaded,
                  ("isInMyBooks" .=) <$> _vuiIsInMyBooks,
                  ("readingPosition" .=) <$> _vuiReadingPosition,
                  ("familySharing" .=) <$> _vuiFamilySharing,
                  ("isFamilySharingDisabledByFop" .=) <$>
                    _vuiIsFamilySharingDisabledByFop])

--
-- /See:/ 'layersummary' smart constructor.
data Layersummary =
  Layersummary'
    { _lAnnotationsDataLink :: !(Maybe Text)
    , _lAnnotationsLink :: !(Maybe Text)
    , _lKind :: !(Maybe Text)
    , _lDataCount :: !(Maybe (Textual Int32))
    , _lContentVersion :: !(Maybe Text)
    , _lVolumeAnnotationsVersion :: !(Maybe Text)
    , _lAnnotationCount :: !(Maybe (Textual Int32))
    , _lAnnotationTypes :: !(Maybe [Text])
    , _lSelfLink :: !(Maybe Text)
    , _lVolumeId :: !(Maybe Text)
    , _lId :: !(Maybe Text)
    , _lUpdated :: !(Maybe Text)
    , _lLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Layersummary'
    { _lAnnotationsDataLink = Nothing
    , _lAnnotationsLink = Nothing
    , _lKind = Nothing
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
lKind :: Lens' Layersummary (Maybe Text)
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The number of data items for this layer.
lDataCount :: Lens' Layersummary (Maybe Int32)
lDataCount
  = lens _lDataCount (\ s a -> s{_lDataCount = a}) .
      mapping _Coerce

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
      . mapping _Coerce

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
lUpdated :: Lens' Layersummary (Maybe Text)
lUpdated = lens _lUpdated (\ s a -> s{_lUpdated = a})

-- | The layer id for this summary.
lLayerId :: Lens' Layersummary (Maybe Text)
lLayerId = lens _lLayerId (\ s a -> s{_lLayerId = a})

instance FromJSON Layersummary where
        parseJSON
          = withObject "Layersummary"
              (\ o ->
                 Layersummary' <$>
                   (o .:? "annotationsDataLink") <*>
                     (o .:? "annotationsLink")
                     <*> (o .:? "kind")
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
        toJSON Layersummary'{..}
          = object
              (catMaybes
                 [("annotationsDataLink" .=) <$>
                    _lAnnotationsDataLink,
                  ("annotationsLink" .=) <$> _lAnnotationsLink,
                  ("kind" .=) <$> _lKind,
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
data VolumeannotationContentRanges =
  VolumeannotationContentRanges'
    { _vcrGbImageRange :: !(Maybe BooksAnnotationsRange)
    , _vcrContentVersion :: !(Maybe Text)
    , _vcrGbTextRange :: !(Maybe BooksAnnotationsRange)
    , _vcrCfiRange :: !(Maybe BooksAnnotationsRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeannotationContentRanges'
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
                 VolumeannotationContentRanges' <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON VolumeannotationContentRanges where
        toJSON VolumeannotationContentRanges'{..}
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
data VolumeAccessInfo =
  VolumeAccessInfo'
    { _vaiWebReaderLink :: !(Maybe Text)
    , _vaiCountry :: !(Maybe Text)
    , _vaiDriveImportedContentLink :: !(Maybe Text)
    , _vaiExplicitOfflineLicenseManagement :: !(Maybe Bool)
    , _vaiViewability :: !(Maybe Text)
    , _vaiQuoteSharingAllowed :: !(Maybe Bool)
    , _vaiEpub :: !(Maybe VolumeAccessInfoEpub)
    , _vaiPdf :: !(Maybe VolumeAccessInfoPdf)
    , _vaiTextToSpeechPermission :: !(Maybe Text)
    , _vaiEmbeddable :: !(Maybe Bool)
    , _vaiAccessViewStatus :: !(Maybe Text)
    , _vaiDownloadAccess :: !(Maybe DownloadAccessRestriction)
    , _vaiViewOrderURL :: !(Maybe Text)
    , _vaiPublicDomain :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeAccessInfo'
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
                 VolumeAccessInfo' <$>
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
        toJSON VolumeAccessInfo'{..}
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

-- | A top-level summary of the panelization info in this volume.
--
-- /See:/ 'volumeVolumeInfoPanelizationSummary' smart constructor.
data VolumeVolumeInfoPanelizationSummary =
  VolumeVolumeInfoPanelizationSummary'
    { _vvipsEpubBubbleVersion :: !(Maybe Text)
    , _vvipsContainsImageBubbles :: !(Maybe Bool)
    , _vvipsContainsEpubBubbles :: !(Maybe Bool)
    , _vvipsImageBubbleVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeVolumeInfoPanelizationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvipsEpubBubbleVersion'
--
-- * 'vvipsContainsImageBubbles'
--
-- * 'vvipsContainsEpubBubbles'
--
-- * 'vvipsImageBubbleVersion'
volumeVolumeInfoPanelizationSummary
    :: VolumeVolumeInfoPanelizationSummary
volumeVolumeInfoPanelizationSummary =
  VolumeVolumeInfoPanelizationSummary'
    { _vvipsEpubBubbleVersion = Nothing
    , _vvipsContainsImageBubbles = Nothing
    , _vvipsContainsEpubBubbles = Nothing
    , _vvipsImageBubbleVersion = Nothing
    }


vvipsEpubBubbleVersion :: Lens' VolumeVolumeInfoPanelizationSummary (Maybe Text)
vvipsEpubBubbleVersion
  = lens _vvipsEpubBubbleVersion
      (\ s a -> s{_vvipsEpubBubbleVersion = a})

vvipsContainsImageBubbles :: Lens' VolumeVolumeInfoPanelizationSummary (Maybe Bool)
vvipsContainsImageBubbles
  = lens _vvipsContainsImageBubbles
      (\ s a -> s{_vvipsContainsImageBubbles = a})

vvipsContainsEpubBubbles :: Lens' VolumeVolumeInfoPanelizationSummary (Maybe Bool)
vvipsContainsEpubBubbles
  = lens _vvipsContainsEpubBubbles
      (\ s a -> s{_vvipsContainsEpubBubbles = a})

vvipsImageBubbleVersion :: Lens' VolumeVolumeInfoPanelizationSummary (Maybe Text)
vvipsImageBubbleVersion
  = lens _vvipsImageBubbleVersion
      (\ s a -> s{_vvipsImageBubbleVersion = a})

instance FromJSON VolumeVolumeInfoPanelizationSummary
         where
        parseJSON
          = withObject "VolumeVolumeInfoPanelizationSummary"
              (\ o ->
                 VolumeVolumeInfoPanelizationSummary' <$>
                   (o .:? "epubBubbleVersion") <*>
                     (o .:? "containsImageBubbles")
                     <*> (o .:? "containsEpubBubbles")
                     <*> (o .:? "imageBubbleVersion"))

instance ToJSON VolumeVolumeInfoPanelizationSummary
         where
        toJSON VolumeVolumeInfoPanelizationSummary'{..}
          = object
              (catMaybes
                 [("epubBubbleVersion" .=) <$>
                    _vvipsEpubBubbleVersion,
                  ("containsImageBubbles" .=) <$>
                    _vvipsContainsImageBubbles,
                  ("containsEpubBubbles" .=) <$>
                    _vvipsContainsEpubBubbles,
                  ("imageBubbleVersion" .=) <$>
                    _vvipsImageBubbleVersion])

--
-- /See:/ 'seriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo' smart constructor.
data SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo'
    { _ssissrinriReleaseTime :: !(Maybe Text)
    , _ssissrinriCurrencyCode :: !(Maybe Text)
    , _ssissrinriAmountInMicros :: !(Maybe (Textual Double))
    , _ssissrinriReleaseNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssissrinriReleaseTime'
--
-- * 'ssissrinriCurrencyCode'
--
-- * 'ssissrinriAmountInMicros'
--
-- * 'ssissrinriReleaseNumber'
seriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo
    :: SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo
seriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo'
    { _ssissrinriReleaseTime = Nothing
    , _ssissrinriCurrencyCode = Nothing
    , _ssissrinriAmountInMicros = Nothing
    , _ssissrinriReleaseNumber = Nothing
    }


ssissrinriReleaseTime :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo (Maybe Text)
ssissrinriReleaseTime
  = lens _ssissrinriReleaseTime
      (\ s a -> s{_ssissrinriReleaseTime = a})

ssissrinriCurrencyCode :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo (Maybe Text)
ssissrinriCurrencyCode
  = lens _ssissrinriCurrencyCode
      (\ s a -> s{_ssissrinriCurrencyCode = a})

ssissrinriAmountInMicros :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo (Maybe Double)
ssissrinriAmountInMicros
  = lens _ssissrinriAmountInMicros
      (\ s a -> s{_ssissrinriAmountInMicros = a})
      . mapping _Coerce

ssissrinriReleaseNumber :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo (Maybe Text)
ssissrinriReleaseNumber
  = lens _ssissrinriReleaseNumber
      (\ s a -> s{_ssissrinriReleaseNumber = a})

instance FromJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo
         where
        parseJSON
          = withObject
              "SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo"
              (\ o ->
                 SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo'
                   <$>
                   (o .:? "releaseTime") <*> (o .:? "currencyCode") <*>
                     (o .:? "amountInMicros")
                     <*> (o .:? "releaseNumber"))

instance ToJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo
         where
        toJSON
          SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo'{..}
          = object
              (catMaybes
                 [("releaseTime" .=) <$> _ssissrinriReleaseTime,
                  ("currencyCode" .=) <$> _ssissrinriCurrencyCode,
                  ("amountInMicros" .=) <$> _ssissrinriAmountInMicros,
                  ("releaseNumber" .=) <$> _ssissrinriReleaseNumber])

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
--
-- /See:/ 'volumeVolumeInfoImageLinks' smart constructor.
data VolumeVolumeInfoImageLinks =
  VolumeVolumeInfoImageLinks'
    { _vviilThumbnail :: !(Maybe Text)
    , _vviilSmall :: !(Maybe Text)
    , _vviilExtraLarge :: !(Maybe Text)
    , _vviilLarge :: !(Maybe Text)
    , _vviilMedium :: !(Maybe Text)
    , _vviilSmallThumbnail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeVolumeInfoImageLinks'
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
                 VolumeVolumeInfoImageLinks' <$>
                   (o .:? "thumbnail") <*> (o .:? "small") <*>
                     (o .:? "extraLarge")
                     <*> (o .:? "large")
                     <*> (o .:? "medium")
                     <*> (o .:? "smallThumbnail"))

instance ToJSON VolumeVolumeInfoImageLinks where
        toJSON VolumeVolumeInfoImageLinks'{..}
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
newtype VolumeUserInfoUserUploadedVolumeInfo =
  VolumeUserInfoUserUploadedVolumeInfo'
    { _vuiuuviProcessingState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeUserInfoUserUploadedVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuiuuviProcessingState'
volumeUserInfoUserUploadedVolumeInfo
    :: VolumeUserInfoUserUploadedVolumeInfo
volumeUserInfoUserUploadedVolumeInfo =
  VolumeUserInfoUserUploadedVolumeInfo' {_vuiuuviProcessingState = Nothing}


vuiuuviProcessingState :: Lens' VolumeUserInfoUserUploadedVolumeInfo (Maybe Text)
vuiuuviProcessingState
  = lens _vuiuuviProcessingState
      (\ s a -> s{_vuiuuviProcessingState = a})

instance FromJSON
           VolumeUserInfoUserUploadedVolumeInfo
         where
        parseJSON
          = withObject "VolumeUserInfoUserUploadedVolumeInfo"
              (\ o ->
                 VolumeUserInfoUserUploadedVolumeInfo' <$>
                   (o .:? "processingState"))

instance ToJSON VolumeUserInfoUserUploadedVolumeInfo
         where
        toJSON VolumeUserInfoUserUploadedVolumeInfo'{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _vuiuuviProcessingState])

-- | Copy\/Paste accounting information.
--
-- /See:/ 'volumeUserInfoCopy' smart constructor.
data VolumeUserInfoCopy =
  VolumeUserInfoCopy'
    { _vuicLimitType :: !(Maybe Text)
    , _vuicAllowedCharacterCount :: !(Maybe (Textual Int32))
    , _vuicUpdated :: !(Maybe Text)
    , _vuicRemainingCharacterCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeUserInfoCopy'
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
      . mapping _Coerce

vuicUpdated :: Lens' VolumeUserInfoCopy (Maybe Text)
vuicUpdated
  = lens _vuicUpdated (\ s a -> s{_vuicUpdated = a})

vuicRemainingCharacterCount :: Lens' VolumeUserInfoCopy (Maybe Int32)
vuicRemainingCharacterCount
  = lens _vuicRemainingCharacterCount
      (\ s a -> s{_vuicRemainingCharacterCount = a})
      . mapping _Coerce

instance FromJSON VolumeUserInfoCopy where
        parseJSON
          = withObject "VolumeUserInfoCopy"
              (\ o ->
                 VolumeUserInfoCopy' <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON VolumeUserInfoCopy where
        toJSON VolumeUserInfoCopy'{..}
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
newtype BooksVolumesRecommendedRateResponse =
  BooksVolumesRecommendedRateResponse'
    { _bvrrrConsistencyToken :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooksVolumesRecommendedRateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvrrrConsistencyToken'
booksVolumesRecommendedRateResponse
    :: BooksVolumesRecommendedRateResponse
booksVolumesRecommendedRateResponse =
  BooksVolumesRecommendedRateResponse' {_bvrrrConsistencyToken = Nothing}


bvrrrConsistencyToken :: Lens' BooksVolumesRecommendedRateResponse (Maybe Text)
bvrrrConsistencyToken
  = lens _bvrrrConsistencyToken
      (\ s a -> s{_bvrrrConsistencyToken = a})

instance FromJSON BooksVolumesRecommendedRateResponse
         where
        parseJSON
          = withObject "BooksVolumesRecommendedRateResponse"
              (\ o ->
                 BooksVolumesRecommendedRateResponse' <$>
                   (o .:? "consistency_token"))

instance ToJSON BooksVolumesRecommendedRateResponse
         where
        toJSON BooksVolumesRecommendedRateResponse'{..}
          = object
              (catMaybes
                 [("consistency_token" .=) <$>
                    _bvrrrConsistencyToken])

--
-- /See:/ 'userSettingsNotificationPriceDrop' smart constructor.
newtype UserSettingsNotificationPriceDrop =
  UserSettingsNotificationPriceDrop'
    { _usnpdOptedState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotificationPriceDrop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnpdOptedState'
userSettingsNotificationPriceDrop
    :: UserSettingsNotificationPriceDrop
userSettingsNotificationPriceDrop =
  UserSettingsNotificationPriceDrop' {_usnpdOptedState = Nothing}


usnpdOptedState :: Lens' UserSettingsNotificationPriceDrop (Maybe Text)
usnpdOptedState
  = lens _usnpdOptedState
      (\ s a -> s{_usnpdOptedState = a})

instance FromJSON UserSettingsNotificationPriceDrop
         where
        parseJSON
          = withObject "UserSettingsNotificationPriceDrop"
              (\ o ->
                 UserSettingsNotificationPriceDrop' <$>
                   (o .:? "opted_state"))

instance ToJSON UserSettingsNotificationPriceDrop
         where
        toJSON UserSettingsNotificationPriceDrop'{..}
          = object
              (catMaybes [("opted_state" .=) <$> _usnpdOptedState])

--
-- /See:/ 'volumeseriesInfo' smart constructor.
data VolumeseriesInfo =
  VolumeseriesInfo'
    { _viBookDisplayNumber :: !(Maybe Text)
    , _viKind :: !(Maybe Text)
    , _viShortSeriesBookTitle :: !(Maybe Text)
    , _viVolumeSeries :: !(Maybe [VolumeseriesInfoVolumeSeriesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeseriesInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viBookDisplayNumber'
--
-- * 'viKind'
--
-- * 'viShortSeriesBookTitle'
--
-- * 'viVolumeSeries'
volumeseriesInfo
    :: VolumeseriesInfo
volumeseriesInfo =
  VolumeseriesInfo'
    { _viBookDisplayNumber = Nothing
    , _viKind = Nothing
    , _viShortSeriesBookTitle = Nothing
    , _viVolumeSeries = Nothing
    }


-- | The display number string. This should be used only for display purposes
-- and the actual sequence should be inferred from the below orderNumber.
viBookDisplayNumber :: Lens' VolumeseriesInfo (Maybe Text)
viBookDisplayNumber
  = lens _viBookDisplayNumber
      (\ s a -> s{_viBookDisplayNumber = a})

-- | Resource type.
viKind :: Lens' VolumeseriesInfo (Maybe Text)
viKind = lens _viKind (\ s a -> s{_viKind = a})

-- | Short book title in the context of the series.
viShortSeriesBookTitle :: Lens' VolumeseriesInfo (Maybe Text)
viShortSeriesBookTitle
  = lens _viShortSeriesBookTitle
      (\ s a -> s{_viShortSeriesBookTitle = a})

viVolumeSeries :: Lens' VolumeseriesInfo [VolumeseriesInfoVolumeSeriesItem]
viVolumeSeries
  = lens _viVolumeSeries
      (\ s a -> s{_viVolumeSeries = a})
      . _Default
      . _Coerce

instance FromJSON VolumeseriesInfo where
        parseJSON
          = withObject "VolumeseriesInfo"
              (\ o ->
                 VolumeseriesInfo' <$>
                   (o .:? "bookDisplayNumber") <*> (o .:? "kind") <*>
                     (o .:? "shortSeriesBookTitle")
                     <*> (o .:? "volumeSeries" .!= mempty))

instance ToJSON VolumeseriesInfo where
        toJSON VolumeseriesInfo'{..}
          = object
              (catMaybes
                 [("bookDisplayNumber" .=) <$> _viBookDisplayNumber,
                  ("kind" .=) <$> _viKind,
                  ("shortSeriesBookTitle" .=) <$>
                    _viShortSeriesBookTitle,
                  ("volumeSeries" .=) <$> _viVolumeSeries])

--
-- /See:/ 'bookshelf' smart constructor.
data Bookshelf =
  Bookshelf'
    { _bAccess :: !(Maybe Text)
    , _bVolumesLastUpdated :: !(Maybe Text)
    , _bKind :: !(Maybe Text)
    , _bCreated :: !(Maybe Text)
    , _bVolumeCount :: !(Maybe (Textual Int32))
    , _bSelfLink :: !(Maybe Text)
    , _bId :: !(Maybe (Textual Int32))
    , _bUpdated :: !(Maybe Text)
    , _bTitle :: !(Maybe Text)
    , _bDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Bookshelf'
    { _bAccess = Nothing
    , _bVolumesLastUpdated = Nothing
    , _bKind = Nothing
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
bVolumesLastUpdated :: Lens' Bookshelf (Maybe Text)
bVolumesLastUpdated
  = lens _bVolumesLastUpdated
      (\ s a -> s{_bVolumesLastUpdated = a})

-- | Resource type for bookshelf metadata.
bKind :: Lens' Bookshelf (Maybe Text)
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | Created time for this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
bCreated :: Lens' Bookshelf (Maybe Text)
bCreated = lens _bCreated (\ s a -> s{_bCreated = a})

-- | Number of volumes in this bookshelf.
bVolumeCount :: Lens' Bookshelf (Maybe Int32)
bVolumeCount
  = lens _bVolumeCount (\ s a -> s{_bVolumeCount = a})
      . mapping _Coerce

-- | URL to this resource.
bSelfLink :: Lens' Bookshelf (Maybe Text)
bSelfLink
  = lens _bSelfLink (\ s a -> s{_bSelfLink = a})

-- | Id of this bookshelf, only unique by user.
bId :: Lens' Bookshelf (Maybe Int32)
bId
  = lens _bId (\ s a -> s{_bId = a}) . mapping _Coerce

-- | Last modified time of this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
bUpdated :: Lens' Bookshelf (Maybe Text)
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
                 Bookshelf' <$>
                   (o .:? "access") <*> (o .:? "volumesLastUpdated") <*>
                     (o .:? "kind")
                     <*> (o .:? "created")
                     <*> (o .:? "volumeCount")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Bookshelf where
        toJSON Bookshelf'{..}
          = object
              (catMaybes
                 [("access" .=) <$> _bAccess,
                  ("volumesLastUpdated" .=) <$> _bVolumesLastUpdated,
                  ("kind" .=) <$> _bKind, ("created" .=) <$> _bCreated,
                  ("volumeCount" .=) <$> _bVolumeCount,
                  ("selfLink" .=) <$> _bSelfLink, ("id" .=) <$> _bId,
                  ("updated" .=) <$> _bUpdated,
                  ("title" .=) <$> _bTitle,
                  ("description" .=) <$> _bDescription])

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

--
-- /See:/ 'notification' smart constructor.
data Notification =
  Notification'
    { _nDocType :: !(Maybe Text)
    , _nTargetURL :: !(Maybe Text)
    , _nShowNotificationSettingsAction :: !(Maybe Bool)
    , _nDocId :: !(Maybe Text)
    , _nKind :: !(Maybe Text)
    , _nBody :: !(Maybe Text)
    , _nCrmExperimentIds :: !(Maybe [Textual Int64])
    , _nTimeToExpireMs :: !(Maybe (Textual Int64))
    , _nPcampaignId :: !(Maybe Text)
    , _nReason :: !(Maybe Text)
    , _nIsDocumentMature :: !(Maybe Bool)
    , _nDontShowNotification :: !(Maybe Bool)
    , _nNotificationType :: !(Maybe Text)
    , _nNotificationGroup :: !(Maybe Text)
    , _nIconURL :: !(Maybe Text)
    , _nTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nDocType'
--
-- * 'nTargetURL'
--
-- * 'nShowNotificationSettingsAction'
--
-- * 'nDocId'
--
-- * 'nKind'
--
-- * 'nBody'
--
-- * 'nCrmExperimentIds'
--
-- * 'nTimeToExpireMs'
--
-- * 'nPcampaignId'
--
-- * 'nReason'
--
-- * 'nIsDocumentMature'
--
-- * 'nDontShowNotification'
--
-- * 'nNotificationType'
--
-- * 'nNotificationGroup'
--
-- * 'nIconURL'
--
-- * 'nTitle'
notification
    :: Notification
notification =
  Notification'
    { _nDocType = Nothing
    , _nTargetURL = Nothing
    , _nShowNotificationSettingsAction = Nothing
    , _nDocId = Nothing
    , _nKind = Nothing
    , _nBody = Nothing
    , _nCrmExperimentIds = Nothing
    , _nTimeToExpireMs = Nothing
    , _nPcampaignId = Nothing
    , _nReason = Nothing
    , _nIsDocumentMature = Nothing
    , _nDontShowNotification = Nothing
    , _nNotificationType = Nothing
    , _nNotificationGroup = Nothing
    , _nIconURL = Nothing
    , _nTitle = Nothing
    }


nDocType :: Lens' Notification (Maybe Text)
nDocType = lens _nDocType (\ s a -> s{_nDocType = a})

nTargetURL :: Lens' Notification (Maybe Text)
nTargetURL
  = lens _nTargetURL (\ s a -> s{_nTargetURL = a})

nShowNotificationSettingsAction :: Lens' Notification (Maybe Bool)
nShowNotificationSettingsAction
  = lens _nShowNotificationSettingsAction
      (\ s a -> s{_nShowNotificationSettingsAction = a})

nDocId :: Lens' Notification (Maybe Text)
nDocId = lens _nDocId (\ s a -> s{_nDocId = a})

-- | Resource type.
nKind :: Lens' Notification (Maybe Text)
nKind = lens _nKind (\ s a -> s{_nKind = a})

nBody :: Lens' Notification (Maybe Text)
nBody = lens _nBody (\ s a -> s{_nBody = a})

-- | The list of crm experiment ids.
nCrmExperimentIds :: Lens' Notification [Int64]
nCrmExperimentIds
  = lens _nCrmExperimentIds
      (\ s a -> s{_nCrmExperimentIds = a})
      . _Default
      . _Coerce

nTimeToExpireMs :: Lens' Notification (Maybe Int64)
nTimeToExpireMs
  = lens _nTimeToExpireMs
      (\ s a -> s{_nTimeToExpireMs = a})
      . mapping _Coerce

nPcampaignId :: Lens' Notification (Maybe Text)
nPcampaignId
  = lens _nPcampaignId (\ s a -> s{_nPcampaignId = a})

nReason :: Lens' Notification (Maybe Text)
nReason = lens _nReason (\ s a -> s{_nReason = a})

nIsDocumentMature :: Lens' Notification (Maybe Bool)
nIsDocumentMature
  = lens _nIsDocumentMature
      (\ s a -> s{_nIsDocumentMature = a})

nDontShowNotification :: Lens' Notification (Maybe Bool)
nDontShowNotification
  = lens _nDontShowNotification
      (\ s a -> s{_nDontShowNotification = a})

nNotificationType :: Lens' Notification (Maybe Text)
nNotificationType
  = lens _nNotificationType
      (\ s a -> s{_nNotificationType = a})

nNotificationGroup :: Lens' Notification (Maybe Text)
nNotificationGroup
  = lens _nNotificationGroup
      (\ s a -> s{_nNotificationGroup = a})

nIconURL :: Lens' Notification (Maybe Text)
nIconURL = lens _nIconURL (\ s a -> s{_nIconURL = a})

nTitle :: Lens' Notification (Maybe Text)
nTitle = lens _nTitle (\ s a -> s{_nTitle = a})

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o ->
                 Notification' <$>
                   (o .:? "doc_type") <*> (o .:? "targetUrl") <*>
                     (o .:? "show_notification_settings_action")
                     <*> (o .:? "doc_id")
                     <*> (o .:? "kind")
                     <*> (o .:? "body")
                     <*> (o .:? "crmExperimentIds" .!= mempty)
                     <*> (o .:? "timeToExpireMs")
                     <*> (o .:? "pcampaign_id")
                     <*> (o .:? "reason")
                     <*> (o .:? "is_document_mature")
                     <*> (o .:? "dont_show_notification")
                     <*> (o .:? "notification_type")
                     <*> (o .:? "notificationGroup")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "title"))

instance ToJSON Notification where
        toJSON Notification'{..}
          = object
              (catMaybes
                 [("doc_type" .=) <$> _nDocType,
                  ("targetUrl" .=) <$> _nTargetURL,
                  ("show_notification_settings_action" .=) <$>
                    _nShowNotificationSettingsAction,
                  ("doc_id" .=) <$> _nDocId, ("kind" .=) <$> _nKind,
                  ("body" .=) <$> _nBody,
                  ("crmExperimentIds" .=) <$> _nCrmExperimentIds,
                  ("timeToExpireMs" .=) <$> _nTimeToExpireMs,
                  ("pcampaign_id" .=) <$> _nPcampaignId,
                  ("reason" .=) <$> _nReason,
                  ("is_document_mature" .=) <$> _nIsDocumentMature,
                  ("dont_show_notification" .=) <$>
                    _nDontShowNotification,
                  ("notification_type" .=) <$> _nNotificationType,
                  ("notificationGroup" .=) <$> _nNotificationGroup,
                  ("iconUrl" .=) <$> _nIconURL,
                  ("title" .=) <$> _nTitle])

--
-- /See:/ 'annotationsSummaryLayersItem' smart constructor.
data AnnotationsSummaryLayersItem =
  AnnotationsSummaryLayersItem'
    { _asliLimitType :: !(Maybe Text)
    , _asliAllowedCharacterCount :: !(Maybe (Textual Int32))
    , _asliUpdated :: !(Maybe Text)
    , _asliLayerId :: !(Maybe Text)
    , _asliRemainingCharacterCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AnnotationsSummaryLayersItem'
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
      . mapping _Coerce

asliUpdated :: Lens' AnnotationsSummaryLayersItem (Maybe Text)
asliUpdated
  = lens _asliUpdated (\ s a -> s{_asliUpdated = a})

asliLayerId :: Lens' AnnotationsSummaryLayersItem (Maybe Text)
asliLayerId
  = lens _asliLayerId (\ s a -> s{_asliLayerId = a})

asliRemainingCharacterCount :: Lens' AnnotationsSummaryLayersItem (Maybe Int32)
asliRemainingCharacterCount
  = lens _asliRemainingCharacterCount
      (\ s a -> s{_asliRemainingCharacterCount = a})
      . mapping _Coerce

instance FromJSON AnnotationsSummaryLayersItem where
        parseJSON
          = withObject "AnnotationsSummaryLayersItem"
              (\ o ->
                 AnnotationsSummaryLayersItem' <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON AnnotationsSummaryLayersItem where
        toJSON AnnotationsSummaryLayersItem'{..}
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
data VolumeSaleInfoOffersItemRentalDuration =
  VolumeSaleInfoOffersItemRentalDuration'
    { _vsioirdCount :: !(Maybe (Textual Double))
    , _vsioirdUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfoOffersItemRentalDuration'
    {_vsioirdCount = Nothing, _vsioirdUnit = Nothing}


vsioirdCount :: Lens' VolumeSaleInfoOffersItemRentalDuration (Maybe Double)
vsioirdCount
  = lens _vsioirdCount (\ s a -> s{_vsioirdCount = a})
      . mapping _Coerce

vsioirdUnit :: Lens' VolumeSaleInfoOffersItemRentalDuration (Maybe Text)
vsioirdUnit
  = lens _vsioirdUnit (\ s a -> s{_vsioirdUnit = a})

instance FromJSON
           VolumeSaleInfoOffersItemRentalDuration
         where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemRentalDuration"
              (\ o ->
                 VolumeSaleInfoOffersItemRentalDuration' <$>
                   (o .:? "count") <*> (o .:? "unit"))

instance ToJSON
           VolumeSaleInfoOffersItemRentalDuration
         where
        toJSON VolumeSaleInfoOffersItemRentalDuration'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _vsioirdCount,
                  ("unit" .=) <$> _vsioirdUnit])

--
-- /See:/ 'dictlayerDataDictWordsItemExamplesItem' smart constructor.
data DictlayerDataDictWordsItemExamplesItem =
  DictlayerDataDictWordsItemExamplesItem'
    { _dddwieiText :: !(Maybe Text)
    , _dddwieiSource :: !(Maybe DictlayerDataDictWordsItemExamplesItemSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwieiText'
--
-- * 'dddwieiSource'
dictlayerDataDictWordsItemExamplesItem
    :: DictlayerDataDictWordsItemExamplesItem
dictlayerDataDictWordsItemExamplesItem =
  DictlayerDataDictWordsItemExamplesItem'
    {_dddwieiText = Nothing, _dddwieiSource = Nothing}


dddwieiText :: Lens' DictlayerDataDictWordsItemExamplesItem (Maybe Text)
dddwieiText
  = lens _dddwieiText (\ s a -> s{_dddwieiText = a})

dddwieiSource :: Lens' DictlayerDataDictWordsItemExamplesItem (Maybe DictlayerDataDictWordsItemExamplesItemSource)
dddwieiSource
  = lens _dddwieiSource
      (\ s a -> s{_dddwieiSource = a})

instance FromJSON
           DictlayerDataDictWordsItemExamplesItem
         where
        parseJSON
          = withObject "DictlayerDataDictWordsItemExamplesItem"
              (\ o ->
                 DictlayerDataDictWordsItemExamplesItem' <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
           DictlayerDataDictWordsItemExamplesItem
         where
        toJSON DictlayerDataDictWordsItemExamplesItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _dddwieiText,
                  ("source" .=) <$> _dddwieiSource])

--
-- /See:/ 'offersItemsItem' smart constructor.
data OffersItemsItem =
  OffersItemsItem'
    { _oiiItems :: !(Maybe [OffersItemsItemItemsItem])
    , _oiiArtURL :: !(Maybe Text)
    , _oiiId :: !(Maybe Text)
    , _oiiGServicesKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  OffersItemsItem'
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
                 OffersItemsItem' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "artUrl") <*>
                     (o .:? "id")
                     <*> (o .:? "gservicesKey"))

instance ToJSON OffersItemsItem where
        toJSON OffersItemsItem'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _oiiItems,
                  ("artUrl" .=) <$> _oiiArtURL, ("id" .=) <$> _oiiId,
                  ("gservicesKey" .=) <$> _oiiGServicesKey])

--
-- /See:/ 'annotationLayerSummary' smart constructor.
data AnnotationLayerSummary =
  AnnotationLayerSummary'
    { _alsLimitType :: !(Maybe Text)
    , _alsAllowedCharacterCount :: !(Maybe (Textual Int32))
    , _alsRemainingCharacterCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AnnotationLayerSummary'
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
      . mapping _Coerce

-- | Remaining allowed characters on this layer, especially for the \"copy\"
-- layer.
alsRemainingCharacterCount :: Lens' AnnotationLayerSummary (Maybe Int32)
alsRemainingCharacterCount
  = lens _alsRemainingCharacterCount
      (\ s a -> s{_alsRemainingCharacterCount = a})
      . mapping _Coerce

instance FromJSON AnnotationLayerSummary where
        parseJSON
          = withObject "AnnotationLayerSummary"
              (\ o ->
                 AnnotationLayerSummary' <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON AnnotationLayerSummary where
        toJSON AnnotationLayerSummary'{..}
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
newtype VolumeSearchInfo =
  VolumeSearchInfo'
    { _vsiTextSnippet :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeSearchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsiTextSnippet'
volumeSearchInfo
    :: VolumeSearchInfo
volumeSearchInfo = VolumeSearchInfo' {_vsiTextSnippet = Nothing}


-- | A text snippet containing the search query.
vsiTextSnippet :: Lens' VolumeSearchInfo (Maybe Text)
vsiTextSnippet
  = lens _vsiTextSnippet
      (\ s a -> s{_vsiTextSnippet = a})

instance FromJSON VolumeSearchInfo where
        parseJSON
          = withObject "VolumeSearchInfo"
              (\ o -> VolumeSearchInfo' <$> (o .:? "textSnippet"))

instance ToJSON VolumeSearchInfo where
        toJSON VolumeSearchInfo'{..}
          = object
              (catMaybes [("textSnippet" .=) <$> _vsiTextSnippet])

--
-- /See:/ 'annotationsSummary' smart constructor.
data AnnotationsSummary =
  AnnotationsSummary'
    { _asKind :: !(Maybe Text)
    , _asLayers :: !(Maybe [AnnotationsSummaryLayersItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AnnotationsSummary' {_asKind = Nothing, _asLayers = Nothing}


asKind :: Lens' AnnotationsSummary (Maybe Text)
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
                 AnnotationsSummary' <$>
                   (o .:? "kind") <*> (o .:? "layers" .!= mempty))

instance ToJSON AnnotationsSummary where
        toJSON AnnotationsSummary'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _asKind,
                  ("layers" .=) <$> _asLayers])

--
-- /See:/ 'category' smart constructor.
data Category =
  Category'
    { _cKind :: !(Maybe Text)
    , _cItems :: !(Maybe [CategoryItemsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Category' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cItems'
category
    :: Category
category = Category' {_cKind = Nothing, _cItems = Nothing}


-- | Resource type.
cKind :: Lens' Category (Maybe Text)
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
                 Category' <$>
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON Category where
        toJSON Category'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _cKind, ("items" .=) <$> _cItems])

--
-- /See:/ 'discoveryclustersClustersItemBanner_with_content_container' smart constructor.
data DiscoveryclustersClustersItemBanner_with_content_container =
  DiscoveryclustersClustersItemBanner_with_content_container'
    { _dcibFillColorArgb :: !(Maybe Text)
    , _dcibMoreButtonURL :: !(Maybe Text)
    , _dcibTextColorArgb :: !(Maybe Text)
    , _dcibMoreButtonText :: !(Maybe Text)
    , _dcibImageURL :: !(Maybe Text)
    , _dcibMaskColorArgb :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiscoveryclustersClustersItemBanner_with_content_container' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcibFillColorArgb'
--
-- * 'dcibMoreButtonURL'
--
-- * 'dcibTextColorArgb'
--
-- * 'dcibMoreButtonText'
--
-- * 'dcibImageURL'
--
-- * 'dcibMaskColorArgb'
discoveryclustersClustersItemBanner_with_content_container
    :: DiscoveryclustersClustersItemBanner_with_content_container
discoveryclustersClustersItemBanner_with_content_container =
  DiscoveryclustersClustersItemBanner_with_content_container'
    { _dcibFillColorArgb = Nothing
    , _dcibMoreButtonURL = Nothing
    , _dcibTextColorArgb = Nothing
    , _dcibMoreButtonText = Nothing
    , _dcibImageURL = Nothing
    , _dcibMaskColorArgb = Nothing
    }


dcibFillColorArgb :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibFillColorArgb
  = lens _dcibFillColorArgb
      (\ s a -> s{_dcibFillColorArgb = a})

dcibMoreButtonURL :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibMoreButtonURL
  = lens _dcibMoreButtonURL
      (\ s a -> s{_dcibMoreButtonURL = a})

dcibTextColorArgb :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibTextColorArgb
  = lens _dcibTextColorArgb
      (\ s a -> s{_dcibTextColorArgb = a})

dcibMoreButtonText :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibMoreButtonText
  = lens _dcibMoreButtonText
      (\ s a -> s{_dcibMoreButtonText = a})

dcibImageURL :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibImageURL
  = lens _dcibImageURL (\ s a -> s{_dcibImageURL = a})

dcibMaskColorArgb :: Lens' DiscoveryclustersClustersItemBanner_with_content_container (Maybe Text)
dcibMaskColorArgb
  = lens _dcibMaskColorArgb
      (\ s a -> s{_dcibMaskColorArgb = a})

instance FromJSON
           DiscoveryclustersClustersItemBanner_with_content_container
         where
        parseJSON
          = withObject
              "DiscoveryclustersClustersItemBannerWithContentContainer"
              (\ o ->
                 DiscoveryclustersClustersItemBanner_with_content_container'
                   <$>
                   (o .:? "fillColorArgb") <*> (o .:? "moreButtonUrl")
                     <*> (o .:? "textColorArgb")
                     <*> (o .:? "moreButtonText")
                     <*> (o .:? "imageUrl")
                     <*> (o .:? "maskColorArgb"))

instance ToJSON
           DiscoveryclustersClustersItemBanner_with_content_container
         where
        toJSON
          DiscoveryclustersClustersItemBanner_with_content_container'{..}
          = object
              (catMaybes
                 [("fillColorArgb" .=) <$> _dcibFillColorArgb,
                  ("moreButtonUrl" .=) <$> _dcibMoreButtonURL,
                  ("textColorArgb" .=) <$> _dcibTextColorArgb,
                  ("moreButtonText" .=) <$> _dcibMoreButtonText,
                  ("imageUrl" .=) <$> _dcibImageURL,
                  ("maskColorArgb" .=) <$> _dcibMaskColorArgb])

--
-- /See:/ 'volume' smart constructor.
data Volume =
  Volume'
    { _vvUserInfo :: !(Maybe VolumeUserInfo)
    , _vvEtag :: !(Maybe Text)
    , _vvAccessInfo :: !(Maybe VolumeAccessInfo)
    , _vvKind :: !(Maybe Text)
    , _vvSearchInfo :: !(Maybe VolumeSearchInfo)
    , _vvSelfLink :: !(Maybe Text)
    , _vvLayerInfo :: !(Maybe VolumeLayerInfo)
    , _vvSaleInfo :: !(Maybe VolumeSaleInfo)
    , _vvId :: !(Maybe Text)
    , _vvRecommendedInfo :: !(Maybe VolumeRecommendedInfo)
    , _vvVolumeInfo :: !(Maybe VolumeVolumeInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Volume'
    { _vvUserInfo = Nothing
    , _vvEtag = Nothing
    , _vvAccessInfo = Nothing
    , _vvKind = Nothing
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
vvKind :: Lens' Volume (Maybe Text)
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
                 Volume' <$>
                   (o .:? "userInfo") <*> (o .:? "etag") <*>
                     (o .:? "accessInfo")
                     <*> (o .:? "kind")
                     <*> (o .:? "searchInfo")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "layerInfo")
                     <*> (o .:? "saleInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "recommendedInfo")
                     <*> (o .:? "volumeInfo"))

instance ToJSON Volume where
        toJSON Volume'{..}
          = object
              (catMaybes
                 [("userInfo" .=) <$> _vvUserInfo,
                  ("etag" .=) <$> _vvEtag,
                  ("accessInfo" .=) <$> _vvAccessInfo,
                  ("kind" .=) <$> _vvKind,
                  ("searchInfo" .=) <$> _vvSearchInfo,
                  ("selfLink" .=) <$> _vvSelfLink,
                  ("layerInfo" .=) <$> _vvLayerInfo,
                  ("saleInfo" .=) <$> _vvSaleInfo, ("id" .=) <$> _vvId,
                  ("recommendedInfo" .=) <$> _vvRecommendedInfo,
                  ("volumeInfo" .=) <$> _vvVolumeInfo])

--
-- /See:/ 'series' smart constructor.
data Series =
  Series'
    { _sKind :: !(Maybe Text)
    , _sSeries :: !(Maybe [SeriesSeriesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Series' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sSeries'
series
    :: Series
series = Series' {_sKind = Nothing, _sSeries = Nothing}


-- | Resource type.
sKind :: Lens' Series (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

sSeries :: Lens' Series [SeriesSeriesItem]
sSeries
  = lens _sSeries (\ s a -> s{_sSeries = a}) . _Default
      . _Coerce

instance FromJSON Series where
        parseJSON
          = withObject "Series"
              (\ o ->
                 Series' <$>
                   (o .:? "kind") <*> (o .:? "series" .!= mempty))

instance ToJSON Series where
        toJSON Series'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sKind, ("series" .=) <$> _sSeries])

--
-- /See:/ 'offersItemsItemItemsItem' smart constructor.
data OffersItemsItemItemsItem =
  OffersItemsItemItemsItem'
    { _oiiiiCanonicalVolumeLink :: !(Maybe Text)
    , _oiiiiCoverURL :: !(Maybe Text)
    , _oiiiiVolumeId :: !(Maybe Text)
    , _oiiiiAuthor :: !(Maybe Text)
    , _oiiiiTitle :: !(Maybe Text)
    , _oiiiiDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  OffersItemsItemItemsItem'
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
                 OffersItemsItemItemsItem' <$>
                   (o .:? "canonicalVolumeLink") <*> (o .:? "coverUrl")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "author")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON OffersItemsItemItemsItem where
        toJSON OffersItemsItemItemsItem'{..}
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
-- /See:/ 'dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource' smart constructor.
data DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource =
  DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource'
    { _dddwisidieisURL :: !(Maybe Text)
    , _dddwisidieisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisidieisURL'
--
-- * 'dddwisidieisAttribution'
dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    :: DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource =
  DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource'
    {_dddwisidieisURL = Nothing, _dddwisidieisAttribution = Nothing}


dddwisidieisURL :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource (Maybe Text)
dddwisidieisURL
  = lens _dddwisidieisURL
      (\ s a -> s{_dddwisidieisURL = a})

dddwisidieisAttribution :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource (Maybe Text)
dddwisidieisAttribution
  = lens _dddwisidieisAttribution
      (\ s a -> s{_dddwisidieisAttribution = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource'
                   <$> (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwisidieisURL,
                  ("attribution" .=) <$> _dddwisidieisAttribution])

--
-- /See:/ 'geolayerDataCommon' smart constructor.
data GeolayerDataCommon =
  GeolayerDataCommon'
    { _gdcSnippet :: !(Maybe Text)
    , _gdcSnippetURL :: !(Maybe Text)
    , _gdcLang :: !(Maybe Text)
    , _gdcTitle :: !(Maybe Text)
    , _gdcPreviewImageURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerDataCommon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcSnippet'
--
-- * 'gdcSnippetURL'
--
-- * 'gdcLang'
--
-- * 'gdcTitle'
--
-- * 'gdcPreviewImageURL'
geolayerDataCommon
    :: GeolayerDataCommon
geolayerDataCommon =
  GeolayerDataCommon'
    { _gdcSnippet = Nothing
    , _gdcSnippetURL = Nothing
    , _gdcLang = Nothing
    , _gdcTitle = Nothing
    , _gdcPreviewImageURL = Nothing
    }


-- | The description for this location.
gdcSnippet :: Lens' GeolayerDataCommon (Maybe Text)
gdcSnippet
  = lens _gdcSnippet (\ s a -> s{_gdcSnippet = a})

-- | The URL for information for this location. Ex: wikipedia link.
gdcSnippetURL :: Lens' GeolayerDataCommon (Maybe Text)
gdcSnippetURL
  = lens _gdcSnippetURL
      (\ s a -> s{_gdcSnippetURL = a})

-- | The language of the information url and description.
gdcLang :: Lens' GeolayerDataCommon (Maybe Text)
gdcLang = lens _gdcLang (\ s a -> s{_gdcLang = a})

-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
gdcTitle :: Lens' GeolayerDataCommon (Maybe Text)
gdcTitle = lens _gdcTitle (\ s a -> s{_gdcTitle = a})

-- | The URL for the preview image information.
gdcPreviewImageURL :: Lens' GeolayerDataCommon (Maybe Text)
gdcPreviewImageURL
  = lens _gdcPreviewImageURL
      (\ s a -> s{_gdcPreviewImageURL = a})

instance FromJSON GeolayerDataCommon where
        parseJSON
          = withObject "GeolayerDataCommon"
              (\ o ->
                 GeolayerDataCommon' <$>
                   (o .:? "snippet") <*> (o .:? "snippetUrl") <*>
                     (o .:? "lang")
                     <*> (o .:? "title")
                     <*> (o .:? "previewImageUrl"))

instance ToJSON GeolayerDataCommon where
        toJSON GeolayerDataCommon'{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _gdcSnippet,
                  ("snippetUrl" .=) <$> _gdcSnippetURL,
                  ("lang" .=) <$> _gdcLang, ("title" .=) <$> _gdcTitle,
                  ("previewImageUrl" .=) <$> _gdcPreviewImageURL])

--
-- /See:/ 'geolayerDataGeo' smart constructor.
data GeolayerDataGeo =
  GeolayerDataGeo'
    { _gdgMapType :: !(Maybe Text)
    , _gdgCachePolicy :: !(Maybe Text)
    , _gdgViewport :: !(Maybe GeolayerDataGeoViewport)
    , _gdgBoundary :: !(Maybe [Text])
    , _gdgLatitude :: !(Maybe (Textual Double))
    , _gdgZoom :: !(Maybe (Textual Int32))
    , _gdgCountryCode :: !(Maybe Text)
    , _gdgLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerDataGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgMapType'
--
-- * 'gdgCachePolicy'
--
-- * 'gdgViewport'
--
-- * 'gdgBoundary'
--
-- * 'gdgLatitude'
--
-- * 'gdgZoom'
--
-- * 'gdgCountryCode'
--
-- * 'gdgLongitude'
geolayerDataGeo
    :: GeolayerDataGeo
geolayerDataGeo =
  GeolayerDataGeo'
    { _gdgMapType = Nothing
    , _gdgCachePolicy = Nothing
    , _gdgViewport = Nothing
    , _gdgBoundary = Nothing
    , _gdgLatitude = Nothing
    , _gdgZoom = Nothing
    , _gdgCountryCode = Nothing
    , _gdgLongitude = Nothing
    }


-- | The type of map that should be used for this location. EX: HYBRID,
-- ROADMAP, SATELLITE, TERRAIN
gdgMapType :: Lens' GeolayerDataGeo (Maybe Text)
gdgMapType
  = lens _gdgMapType (\ s a -> s{_gdgMapType = a})

-- | The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED,
-- NEVER
gdgCachePolicy :: Lens' GeolayerDataGeo (Maybe Text)
gdgCachePolicy
  = lens _gdgCachePolicy
      (\ s a -> s{_gdgCachePolicy = a})

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
gdgViewport :: Lens' GeolayerDataGeo (Maybe GeolayerDataGeoViewport)
gdgViewport
  = lens _gdgViewport (\ s a -> s{_gdgViewport = a})

-- | The boundary of the location as a set of loops containing pairs of
-- latitude, longitude coordinates.
gdgBoundary :: Lens' GeolayerDataGeo [Text]
gdgBoundary
  = lens _gdgBoundary (\ s a -> s{_gdgBoundary = a}) .
      _Default
      . _Coerce

-- | The latitude of the location.
gdgLatitude :: Lens' GeolayerDataGeo (Maybe Double)
gdgLatitude
  = lens _gdgLatitude (\ s a -> s{_gdgLatitude = a}) .
      mapping _Coerce

-- | The Zoom level to use for the map. Zoom levels between 0 (the lowest
-- zoom level, in which the entire world can be seen on one map) to 21+
-- (down to individual buildings). See: https:
-- \/\/developers.google.com\/maps\/documentation\/staticmaps\/#Zoomlevels
gdgZoom :: Lens' GeolayerDataGeo (Maybe Int32)
gdgZoom
  = lens _gdgZoom (\ s a -> s{_gdgZoom = a}) .
      mapping _Coerce

-- | The country code of the location.
gdgCountryCode :: Lens' GeolayerDataGeo (Maybe Text)
gdgCountryCode
  = lens _gdgCountryCode
      (\ s a -> s{_gdgCountryCode = a})

-- | The longitude of the location.
gdgLongitude :: Lens' GeolayerDataGeo (Maybe Double)
gdgLongitude
  = lens _gdgLongitude (\ s a -> s{_gdgLongitude = a})
      . mapping _Coerce

instance FromJSON GeolayerDataGeo where
        parseJSON
          = withObject "GeolayerDataGeo"
              (\ o ->
                 GeolayerDataGeo' <$>
                   (o .:? "mapType") <*> (o .:? "cachePolicy") <*>
                     (o .:? "viewport")
                     <*> (o .:? "boundary" .!= mempty)
                     <*> (o .:? "latitude")
                     <*> (o .:? "zoom")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "longitude"))

instance ToJSON GeolayerDataGeo where
        toJSON GeolayerDataGeo'{..}
          = object
              (catMaybes
                 [("mapType" .=) <$> _gdgMapType,
                  ("cachePolicy" .=) <$> _gdgCachePolicy,
                  ("viewport" .=) <$> _gdgViewport,
                  ("boundary" .=) <$> _gdgBoundary,
                  ("latitude" .=) <$> _gdgLatitude,
                  ("zoom" .=) <$> _gdgZoom,
                  ("countryCode" .=) <$> _gdgCountryCode,
                  ("longitude" .=) <$> _gdgLongitude])

--
-- /See:/ 'dictlayerDataDictWordsItem' smart constructor.
data DictlayerDataDictWordsItem =
  DictlayerDataDictWordsItem'
    { _dddwiSenses :: !(Maybe [DictlayerDataDictWordsItemSensesItem])
    , _dddwiSource :: !(Maybe DictlayerDataDictWordsItemSource)
    , _dddwiDerivatives :: !(Maybe [DictlayerDataDictWordsItemDerivativesItem])
    , _dddwiExamples :: !(Maybe [DictlayerDataDictWordsItemExamplesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwiSenses'
--
-- * 'dddwiSource'
--
-- * 'dddwiDerivatives'
--
-- * 'dddwiExamples'
dictlayerDataDictWordsItem
    :: DictlayerDataDictWordsItem
dictlayerDataDictWordsItem =
  DictlayerDataDictWordsItem'
    { _dddwiSenses = Nothing
    , _dddwiSource = Nothing
    , _dddwiDerivatives = Nothing
    , _dddwiExamples = Nothing
    }


dddwiSenses :: Lens' DictlayerDataDictWordsItem [DictlayerDataDictWordsItemSensesItem]
dddwiSenses
  = lens _dddwiSenses (\ s a -> s{_dddwiSenses = a}) .
      _Default
      . _Coerce

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
dddwiSource :: Lens' DictlayerDataDictWordsItem (Maybe DictlayerDataDictWordsItemSource)
dddwiSource
  = lens _dddwiSource (\ s a -> s{_dddwiSource = a})

dddwiDerivatives :: Lens' DictlayerDataDictWordsItem [DictlayerDataDictWordsItemDerivativesItem]
dddwiDerivatives
  = lens _dddwiDerivatives
      (\ s a -> s{_dddwiDerivatives = a})
      . _Default
      . _Coerce

dddwiExamples :: Lens' DictlayerDataDictWordsItem [DictlayerDataDictWordsItemExamplesItem]
dddwiExamples
  = lens _dddwiExamples
      (\ s a -> s{_dddwiExamples = a})
      . _Default
      . _Coerce

instance FromJSON DictlayerDataDictWordsItem where
        parseJSON
          = withObject "DictlayerDataDictWordsItem"
              (\ o ->
                 DictlayerDataDictWordsItem' <$>
                   (o .:? "senses" .!= mempty) <*> (o .:? "source") <*>
                     (o .:? "derivatives" .!= mempty)
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON DictlayerDataDictWordsItem where
        toJSON DictlayerDataDictWordsItem'{..}
          = object
              (catMaybes
                 [("senses" .=) <$> _dddwiSenses,
                  ("source" .=) <$> _dddwiSource,
                  ("derivatives" .=) <$> _dddwiDerivatives,
                  ("examples" .=) <$> _dddwiExamples])

--
-- /See:/ 'categoryItemsItem' smart constructor.
data CategoryItemsItem =
  CategoryItemsItem'
    { _ciiName :: !(Maybe Text)
    , _ciiCategoryId :: !(Maybe Text)
    , _ciiBadgeURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  CategoryItemsItem'
    {_ciiName = Nothing, _ciiCategoryId = Nothing, _ciiBadgeURL = Nothing}


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
                 CategoryItemsItem' <$>
                   (o .:? "name") <*> (o .:? "categoryId") <*>
                     (o .:? "badgeUrl"))

instance ToJSON CategoryItemsItem where
        toJSON CategoryItemsItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ciiName,
                  ("categoryId" .=) <$> _ciiCategoryId,
                  ("badgeUrl" .=) <$> _ciiBadgeURL])

--
-- /See:/ 'dictlayerDataDictWordsItemDerivativesItemSource' smart constructor.
data DictlayerDataDictWordsItemDerivativesItemSource =
  DictlayerDataDictWordsItemDerivativesItemSource'
    { _dddwidisURL :: !(Maybe Text)
    , _dddwidisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemDerivativesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwidisURL'
--
-- * 'dddwidisAttribution'
dictlayerDataDictWordsItemDerivativesItemSource
    :: DictlayerDataDictWordsItemDerivativesItemSource
dictlayerDataDictWordsItemDerivativesItemSource =
  DictlayerDataDictWordsItemDerivativesItemSource'
    {_dddwidisURL = Nothing, _dddwidisAttribution = Nothing}


dddwidisURL :: Lens' DictlayerDataDictWordsItemDerivativesItemSource (Maybe Text)
dddwidisURL
  = lens _dddwidisURL (\ s a -> s{_dddwidisURL = a})

dddwidisAttribution :: Lens' DictlayerDataDictWordsItemDerivativesItemSource (Maybe Text)
dddwidisAttribution
  = lens _dddwidisAttribution
      (\ s a -> s{_dddwidisAttribution = a})

instance FromJSON
           DictlayerDataDictWordsItemDerivativesItemSource
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemDerivativesItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemDerivativesItemSource' <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
           DictlayerDataDictWordsItemDerivativesItemSource
         where
        toJSON
          DictlayerDataDictWordsItemDerivativesItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwidisURL,
                  ("attribution" .=) <$> _dddwidisAttribution])

--
-- /See:/ 'geolayerData' smart constructor.
data GeolayerData =
  GeolayerData'
    { _gdKind :: !(Maybe Text)
    , _gdGeo :: !(Maybe GeolayerDataGeo)
    , _gdCommon :: !(Maybe GeolayerDataCommon)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdKind'
--
-- * 'gdGeo'
--
-- * 'gdCommon'
geolayerData
    :: GeolayerData
geolayerData =
  GeolayerData' {_gdKind = Nothing, _gdGeo = Nothing, _gdCommon = Nothing}


gdKind :: Lens' GeolayerData (Maybe Text)
gdKind = lens _gdKind (\ s a -> s{_gdKind = a})

gdGeo :: Lens' GeolayerData (Maybe GeolayerDataGeo)
gdGeo = lens _gdGeo (\ s a -> s{_gdGeo = a})

gdCommon :: Lens' GeolayerData (Maybe GeolayerDataCommon)
gdCommon = lens _gdCommon (\ s a -> s{_gdCommon = a})

instance FromJSON GeolayerData where
        parseJSON
          = withObject "GeolayerData"
              (\ o ->
                 GeolayerData' <$>
                   (o .:? "kind") <*> (o .:? "geo") <*>
                     (o .:? "common"))

instance ToJSON GeolayerData where
        toJSON GeolayerData'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _gdKind, ("geo" .=) <$> _gdGeo,
                  ("common" .=) <$> _gdCommon])

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
--
-- /See:/ 'dictlayerDataDictWordsItemSource' smart constructor.
data DictlayerDataDictWordsItemSource =
  DictlayerDataDictWordsItemSource'
    { _dddwisURL :: !(Maybe Text)
    , _dddwisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisURL'
--
-- * 'dddwisAttribution'
dictlayerDataDictWordsItemSource
    :: DictlayerDataDictWordsItemSource
dictlayerDataDictWordsItemSource =
  DictlayerDataDictWordsItemSource'
    {_dddwisURL = Nothing, _dddwisAttribution = Nothing}


dddwisURL :: Lens' DictlayerDataDictWordsItemSource (Maybe Text)
dddwisURL
  = lens _dddwisURL (\ s a -> s{_dddwisURL = a})

dddwisAttribution :: Lens' DictlayerDataDictWordsItemSource (Maybe Text)
dddwisAttribution
  = lens _dddwisAttribution
      (\ s a -> s{_dddwisAttribution = a})

instance FromJSON DictlayerDataDictWordsItemSource
         where
        parseJSON
          = withObject "DictlayerDataDictWordsItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemSource' <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DictlayerDataDictWordsItemSource
         where
        toJSON DictlayerDataDictWordsItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwisURL,
                  ("attribution" .=) <$> _dddwisAttribution])

--
-- /See:/ 'dictlayerDataDictWordsItemDerivativesItem' smart constructor.
data DictlayerDataDictWordsItemDerivativesItem =
  DictlayerDataDictWordsItemDerivativesItem'
    { _dddwidiText :: !(Maybe Text)
    , _dddwidiSource :: !(Maybe DictlayerDataDictWordsItemDerivativesItemSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemDerivativesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwidiText'
--
-- * 'dddwidiSource'
dictlayerDataDictWordsItemDerivativesItem
    :: DictlayerDataDictWordsItemDerivativesItem
dictlayerDataDictWordsItemDerivativesItem =
  DictlayerDataDictWordsItemDerivativesItem'
    {_dddwidiText = Nothing, _dddwidiSource = Nothing}


dddwidiText :: Lens' DictlayerDataDictWordsItemDerivativesItem (Maybe Text)
dddwidiText
  = lens _dddwidiText (\ s a -> s{_dddwidiText = a})

dddwidiSource :: Lens' DictlayerDataDictWordsItemDerivativesItem (Maybe DictlayerDataDictWordsItemDerivativesItemSource)
dddwidiSource
  = lens _dddwidiSource
      (\ s a -> s{_dddwidiSource = a})

instance FromJSON
           DictlayerDataDictWordsItemDerivativesItem
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemDerivativesItem"
              (\ o ->
                 DictlayerDataDictWordsItemDerivativesItem' <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
           DictlayerDataDictWordsItemDerivativesItem
         where
        toJSON DictlayerDataDictWordsItemDerivativesItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _dddwidiText,
                  ("source" .=) <$> _dddwidiSource])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem' smart constructor.
data DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem =
  DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem'
    { _dddwisidieiText :: !(Maybe Text)
    , _dddwisidieiSource :: !(Maybe DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisidieiText'
--
-- * 'dddwisidieiSource'
dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    :: DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem =
  DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem'
    {_dddwisidieiText = Nothing, _dddwisidieiSource = Nothing}


dddwisidieiText :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem (Maybe Text)
dddwisidieiText
  = lens _dddwisidieiText
      (\ s a -> s{_dddwisidieiText = a})

dddwisidieiSource :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem (Maybe DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource)
dddwisidieiSource
  = lens _dddwisidieiSource
      (\ s a -> s{_dddwisidieiSource = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem'
                   <$> (o .:? "text") <*> (o .:? "source"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _dddwisidieiText,
                  ("source" .=) <$> _dddwisidieiSource])

--
-- /See:/ 'userSettingsNotificationRewardExpirations' smart constructor.
newtype UserSettingsNotificationRewardExpirations =
  UserSettingsNotificationRewardExpirations'
    { _usnreOptedState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotificationRewardExpirations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnreOptedState'
userSettingsNotificationRewardExpirations
    :: UserSettingsNotificationRewardExpirations
userSettingsNotificationRewardExpirations =
  UserSettingsNotificationRewardExpirations' {_usnreOptedState = Nothing}


usnreOptedState :: Lens' UserSettingsNotificationRewardExpirations (Maybe Text)
usnreOptedState
  = lens _usnreOptedState
      (\ s a -> s{_usnreOptedState = a})

instance FromJSON
           UserSettingsNotificationRewardExpirations
         where
        parseJSON
          = withObject
              "UserSettingsNotificationRewardExpirations"
              (\ o ->
                 UserSettingsNotificationRewardExpirations' <$>
                   (o .:? "opted_state"))

instance ToJSON
           UserSettingsNotificationRewardExpirations
         where
        toJSON UserSettingsNotificationRewardExpirations'{..}
          = object
              (catMaybes [("opted_state" .=) <$> _usnreOptedState])

--
-- /See:/ 'dictlayerData' smart constructor.
data DictlayerData =
  DictlayerData'
    { _ddKind :: !(Maybe Text)
    , _ddDict :: !(Maybe DictlayerDataDict)
    , _ddCommon :: !(Maybe DictlayerDataCommon)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddKind'
--
-- * 'ddDict'
--
-- * 'ddCommon'
dictlayerData
    :: DictlayerData
dictlayerData =
  DictlayerData' {_ddKind = Nothing, _ddDict = Nothing, _ddCommon = Nothing}


ddKind :: Lens' DictlayerData (Maybe Text)
ddKind = lens _ddKind (\ s a -> s{_ddKind = a})

ddDict :: Lens' DictlayerData (Maybe DictlayerDataDict)
ddDict = lens _ddDict (\ s a -> s{_ddDict = a})

ddCommon :: Lens' DictlayerData (Maybe DictlayerDataCommon)
ddCommon = lens _ddCommon (\ s a -> s{_ddCommon = a})

instance FromJSON DictlayerData where
        parseJSON
          = withObject "DictlayerData"
              (\ o ->
                 DictlayerData' <$>
                   (o .:? "kind") <*> (o .:? "dict") <*>
                     (o .:? "common"))

instance ToJSON DictlayerData where
        toJSON DictlayerData'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ddKind, ("dict" .=) <$> _ddDict,
                  ("common" .=) <$> _ddCommon])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemSynonymsItemSource' smart constructor.
data DictlayerDataDictWordsItemSensesItemSynonymsItemSource =
  DictlayerDataDictWordsItemSensesItemSynonymsItemSource'
    { _dddwisisisURL :: !(Maybe Text)
    , _dddwisisisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemSynonymsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisisisURL'
--
-- * 'dddwisisisAttribution'
dictlayerDataDictWordsItemSensesItemSynonymsItemSource
    :: DictlayerDataDictWordsItemSensesItemSynonymsItemSource
dictlayerDataDictWordsItemSensesItemSynonymsItemSource =
  DictlayerDataDictWordsItemSensesItemSynonymsItemSource'
    {_dddwisisisURL = Nothing, _dddwisisisAttribution = Nothing}


dddwisisisURL :: Lens' DictlayerDataDictWordsItemSensesItemSynonymsItemSource (Maybe Text)
dddwisisisURL
  = lens _dddwisisisURL
      (\ s a -> s{_dddwisisisURL = a})

dddwisisisAttribution :: Lens' DictlayerDataDictWordsItemSensesItemSynonymsItemSource (Maybe Text)
dddwisisisAttribution
  = lens _dddwisisisAttribution
      (\ s a -> s{_dddwisisisAttribution = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemSynonymsItemSource
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemSynonymsItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemSynonymsItemSource'
                   <$> (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemSynonymsItemSource
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemSynonymsItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwisisisURL,
                  ("attribution" .=) <$> _dddwisisisAttribution])

--
-- /See:/ 'seriesmembership' smart constructor.
data Seriesmembership =
  Seriesmembership'
    { _serNextPageToken :: !(Maybe Text)
    , _serKind :: !(Maybe Text)
    , _serMember :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Seriesmembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'serNextPageToken'
--
-- * 'serKind'
--
-- * 'serMember'
seriesmembership
    :: Seriesmembership
seriesmembership =
  Seriesmembership'
    {_serNextPageToken = Nothing, _serKind = Nothing, _serMember = Nothing}


serNextPageToken :: Lens' Seriesmembership (Maybe Text)
serNextPageToken
  = lens _serNextPageToken
      (\ s a -> s{_serNextPageToken = a})

-- | Resorce type.
serKind :: Lens' Seriesmembership (Maybe Text)
serKind = lens _serKind (\ s a -> s{_serKind = a})

serMember :: Lens' Seriesmembership [Volume]
serMember
  = lens _serMember (\ s a -> s{_serMember = a}) .
      _Default
      . _Coerce

instance FromJSON Seriesmembership where
        parseJSON
          = withObject "Seriesmembership"
              (\ o ->
                 Seriesmembership' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "member" .!= mempty))

instance ToJSON Seriesmembership where
        toJSON Seriesmembership'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _serNextPageToken,
                  ("kind" .=) <$> _serKind,
                  ("member" .=) <$> _serMember])

--
-- /See:/ 'userSettingsNotification' smart constructor.
data UserSettingsNotification =
  UserSettingsNotification'
    { _usnRewardExpirations :: !(Maybe UserSettingsNotificationRewardExpirations)
    , _usnPriceDrop :: !(Maybe UserSettingsNotificationPriceDrop)
    , _usnMatchMyInterests :: !(Maybe UserSettingsNotificationMatchMyInterests)
    , _usnMoreFromAuthors :: !(Maybe UserSettingsNotificationMoreFromAuthors)
    , _usnMoreFromSeries :: !(Maybe UserSettingsNotificationMoreFromSeries)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnRewardExpirations'
--
-- * 'usnPriceDrop'
--
-- * 'usnMatchMyInterests'
--
-- * 'usnMoreFromAuthors'
--
-- * 'usnMoreFromSeries'
userSettingsNotification
    :: UserSettingsNotification
userSettingsNotification =
  UserSettingsNotification'
    { _usnRewardExpirations = Nothing
    , _usnPriceDrop = Nothing
    , _usnMatchMyInterests = Nothing
    , _usnMoreFromAuthors = Nothing
    , _usnMoreFromSeries = Nothing
    }


usnRewardExpirations :: Lens' UserSettingsNotification (Maybe UserSettingsNotificationRewardExpirations)
usnRewardExpirations
  = lens _usnRewardExpirations
      (\ s a -> s{_usnRewardExpirations = a})

usnPriceDrop :: Lens' UserSettingsNotification (Maybe UserSettingsNotificationPriceDrop)
usnPriceDrop
  = lens _usnPriceDrop (\ s a -> s{_usnPriceDrop = a})

usnMatchMyInterests :: Lens' UserSettingsNotification (Maybe UserSettingsNotificationMatchMyInterests)
usnMatchMyInterests
  = lens _usnMatchMyInterests
      (\ s a -> s{_usnMatchMyInterests = a})

usnMoreFromAuthors :: Lens' UserSettingsNotification (Maybe UserSettingsNotificationMoreFromAuthors)
usnMoreFromAuthors
  = lens _usnMoreFromAuthors
      (\ s a -> s{_usnMoreFromAuthors = a})

usnMoreFromSeries :: Lens' UserSettingsNotification (Maybe UserSettingsNotificationMoreFromSeries)
usnMoreFromSeries
  = lens _usnMoreFromSeries
      (\ s a -> s{_usnMoreFromSeries = a})

instance FromJSON UserSettingsNotification where
        parseJSON
          = withObject "UserSettingsNotification"
              (\ o ->
                 UserSettingsNotification' <$>
                   (o .:? "rewardExpirations") <*> (o .:? "priceDrop")
                     <*> (o .:? "matchMyInterests")
                     <*> (o .:? "moreFromAuthors")
                     <*> (o .:? "moreFromSeries"))

instance ToJSON UserSettingsNotification where
        toJSON UserSettingsNotification'{..}
          = object
              (catMaybes
                 [("rewardExpirations" .=) <$> _usnRewardExpirations,
                  ("priceDrop" .=) <$> _usnPriceDrop,
                  ("matchMyInterests" .=) <$> _usnMatchMyInterests,
                  ("moreFromAuthors" .=) <$> _usnMoreFromAuthors,
                  ("moreFromSeries" .=) <$> _usnMoreFromSeries])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemSynonymsItem' smart constructor.
data DictlayerDataDictWordsItemSensesItemSynonymsItem =
  DictlayerDataDictWordsItemSensesItemSynonymsItem'
    { _dddwisisiText :: !(Maybe Text)
    , _dddwisisiSource :: !(Maybe DictlayerDataDictWordsItemSensesItemSynonymsItemSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemSynonymsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisisiText'
--
-- * 'dddwisisiSource'
dictlayerDataDictWordsItemSensesItemSynonymsItem
    :: DictlayerDataDictWordsItemSensesItemSynonymsItem
dictlayerDataDictWordsItemSensesItemSynonymsItem =
  DictlayerDataDictWordsItemSensesItemSynonymsItem'
    {_dddwisisiText = Nothing, _dddwisisiSource = Nothing}


dddwisisiText :: Lens' DictlayerDataDictWordsItemSensesItemSynonymsItem (Maybe Text)
dddwisisiText
  = lens _dddwisisiText
      (\ s a -> s{_dddwisisiText = a})

dddwisisiSource :: Lens' DictlayerDataDictWordsItemSensesItemSynonymsItem (Maybe DictlayerDataDictWordsItemSensesItemSynonymsItemSource)
dddwisisiSource
  = lens _dddwisisiSource
      (\ s a -> s{_dddwisisiSource = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemSynonymsItem
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemSynonymsItem"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemSynonymsItem' <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemSynonymsItem
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemSynonymsItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _dddwisisiText,
                  ("source" .=) <$> _dddwisisiSource])

--
-- /See:/ 'geolayerDataGeoViewportLo' smart constructor.
data GeolayerDataGeoViewportLo =
  GeolayerDataGeoViewportLo'
    { _gdgvlLatitude :: !(Maybe (Textual Double))
    , _gdgvlLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerDataGeoViewportLo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgvlLatitude'
--
-- * 'gdgvlLongitude'
geolayerDataGeoViewportLo
    :: GeolayerDataGeoViewportLo
geolayerDataGeoViewportLo =
  GeolayerDataGeoViewportLo'
    {_gdgvlLatitude = Nothing, _gdgvlLongitude = Nothing}


gdgvlLatitude :: Lens' GeolayerDataGeoViewportLo (Maybe Double)
gdgvlLatitude
  = lens _gdgvlLatitude
      (\ s a -> s{_gdgvlLatitude = a})
      . mapping _Coerce

gdgvlLongitude :: Lens' GeolayerDataGeoViewportLo (Maybe Double)
gdgvlLongitude
  = lens _gdgvlLongitude
      (\ s a -> s{_gdgvlLongitude = a})
      . mapping _Coerce

instance FromJSON GeolayerDataGeoViewportLo where
        parseJSON
          = withObject "GeolayerDataGeoViewportLo"
              (\ o ->
                 GeolayerDataGeoViewportLo' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeolayerDataGeoViewportLo where
        toJSON GeolayerDataGeoViewportLo'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gdgvlLatitude,
                  ("longitude" .=) <$> _gdgvlLongitude])

-- | Offer list (=undiscounted) price in Micros.
--
-- /See:/ 'volumeSaleInfoOffersItemListPrice' smart constructor.
data VolumeSaleInfoOffersItemListPrice =
  VolumeSaleInfoOffersItemListPrice'
    { _vsioilpCurrencyCode :: !(Maybe Text)
    , _vsioilpAmountInMicros :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfoOffersItemListPrice'
    {_vsioilpCurrencyCode = Nothing, _vsioilpAmountInMicros = Nothing}


vsioilpCurrencyCode :: Lens' VolumeSaleInfoOffersItemListPrice (Maybe Text)
vsioilpCurrencyCode
  = lens _vsioilpCurrencyCode
      (\ s a -> s{_vsioilpCurrencyCode = a})

vsioilpAmountInMicros :: Lens' VolumeSaleInfoOffersItemListPrice (Maybe Double)
vsioilpAmountInMicros
  = lens _vsioilpAmountInMicros
      (\ s a -> s{_vsioilpAmountInMicros = a})
      . mapping _Coerce

instance FromJSON VolumeSaleInfoOffersItemListPrice
         where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemListPrice"
              (\ o ->
                 VolumeSaleInfoOffersItemListPrice' <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON VolumeSaleInfoOffersItemListPrice
         where
        toJSON VolumeSaleInfoOffersItemListPrice'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _vsioilpCurrencyCode,
                  ("amountInMicros" .=) <$> _vsioilpAmountInMicros])

--
-- /See:/ 'downloadAccessRestriction' smart constructor.
data DownloadAccessRestriction =
  DownloadAccessRestriction'
    { _darJustAcquired :: !(Maybe Bool)
    , _darSignature :: !(Maybe Text)
    , _darKind :: !(Maybe Text)
    , _darMaxDownloadDevices :: !(Maybe (Textual Int32))
    , _darDownloadsAcquired :: !(Maybe (Textual Int32))
    , _darReasonCode :: !(Maybe Text)
    , _darVolumeId :: !(Maybe Text)
    , _darRestricted :: !(Maybe Bool)
    , _darSource :: !(Maybe Text)
    , _darDeviceAllowed :: !(Maybe Bool)
    , _darMessage :: !(Maybe Text)
    , _darNonce :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  DownloadAccessRestriction'
    { _darJustAcquired = Nothing
    , _darSignature = Nothing
    , _darKind = Nothing
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
darKind :: Lens' DownloadAccessRestriction (Maybe Text)
darKind = lens _darKind (\ s a -> s{_darKind = a})

-- | If restricted, the maximum number of content download licenses for this
-- volume.
darMaxDownloadDevices :: Lens' DownloadAccessRestriction (Maybe Int32)
darMaxDownloadDevices
  = lens _darMaxDownloadDevices
      (\ s a -> s{_darMaxDownloadDevices = a})
      . mapping _Coerce

-- | If restricted, the number of content download licenses already acquired
-- (including the requesting client, if licensed).
darDownloadsAcquired :: Lens' DownloadAccessRestriction (Maybe Int32)
darDownloadsAcquired
  = lens _darDownloadsAcquired
      (\ s a -> s{_darDownloadsAcquired = a})
      . mapping _Coerce

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
                 DownloadAccessRestriction' <$>
                   (o .:? "justAcquired") <*> (o .:? "signature") <*>
                     (o .:? "kind")
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
        toJSON DownloadAccessRestriction'{..}
          = object
              (catMaybes
                 [("justAcquired" .=) <$> _darJustAcquired,
                  ("signature" .=) <$> _darSignature,
                  ("kind" .=) <$> _darKind,
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
-- /See:/ 'dictlayerDataCommon' smart constructor.
newtype DictlayerDataCommon =
  DictlayerDataCommon'
    { _ddcTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataCommon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcTitle'
dictlayerDataCommon
    :: DictlayerDataCommon
dictlayerDataCommon = DictlayerDataCommon' {_ddcTitle = Nothing}


-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
ddcTitle :: Lens' DictlayerDataCommon (Maybe Text)
ddcTitle = lens _ddcTitle (\ s a -> s{_ddcTitle = a})

instance FromJSON DictlayerDataCommon where
        parseJSON
          = withObject "DictlayerDataCommon"
              (\ o -> DictlayerDataCommon' <$> (o .:? "title"))

instance ToJSON DictlayerDataCommon where
        toJSON DictlayerDataCommon'{..}
          = object (catMaybes [("title" .=) <$> _ddcTitle])

--
-- /See:/ 'discoveryclustersClustersItem' smart constructor.
data DiscoveryclustersClustersItem =
  DiscoveryclustersClustersItem'
    { _dciBannerWithContentContainer :: !(Maybe DiscoveryclustersClustersItemBanner_with_content_container)
    , _dciUid :: !(Maybe Text)
    , _dciTotalVolumes :: !(Maybe (Textual Int32))
    , _dciSubTitle :: !(Maybe Text)
    , _dciTitle :: !(Maybe Text)
    , _dciVolumes :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiscoveryclustersClustersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dciBannerWithContentContainer'
--
-- * 'dciUid'
--
-- * 'dciTotalVolumes'
--
-- * 'dciSubTitle'
--
-- * 'dciTitle'
--
-- * 'dciVolumes'
discoveryclustersClustersItem
    :: DiscoveryclustersClustersItem
discoveryclustersClustersItem =
  DiscoveryclustersClustersItem'
    { _dciBannerWithContentContainer = Nothing
    , _dciUid = Nothing
    , _dciTotalVolumes = Nothing
    , _dciSubTitle = Nothing
    , _dciTitle = Nothing
    , _dciVolumes = Nothing
    }


dciBannerWithContentContainer :: Lens' DiscoveryclustersClustersItem (Maybe DiscoveryclustersClustersItemBanner_with_content_container)
dciBannerWithContentContainer
  = lens _dciBannerWithContentContainer
      (\ s a -> s{_dciBannerWithContentContainer = a})

dciUid :: Lens' DiscoveryclustersClustersItem (Maybe Text)
dciUid = lens _dciUid (\ s a -> s{_dciUid = a})

dciTotalVolumes :: Lens' DiscoveryclustersClustersItem (Maybe Int32)
dciTotalVolumes
  = lens _dciTotalVolumes
      (\ s a -> s{_dciTotalVolumes = a})
      . mapping _Coerce

dciSubTitle :: Lens' DiscoveryclustersClustersItem (Maybe Text)
dciSubTitle
  = lens _dciSubTitle (\ s a -> s{_dciSubTitle = a})

dciTitle :: Lens' DiscoveryclustersClustersItem (Maybe Text)
dciTitle = lens _dciTitle (\ s a -> s{_dciTitle = a})

dciVolumes :: Lens' DiscoveryclustersClustersItem [Volume]
dciVolumes
  = lens _dciVolumes (\ s a -> s{_dciVolumes = a}) .
      _Default
      . _Coerce

instance FromJSON DiscoveryclustersClustersItem where
        parseJSON
          = withObject "DiscoveryclustersClustersItem"
              (\ o ->
                 DiscoveryclustersClustersItem' <$>
                   (o .:? "banner_with_content_container") <*>
                     (o .:? "uid")
                     <*> (o .:? "totalVolumes")
                     <*> (o .:? "subTitle")
                     <*> (o .:? "title")
                     <*> (o .:? "volumes" .!= mempty))

instance ToJSON DiscoveryclustersClustersItem where
        toJSON DiscoveryclustersClustersItem'{..}
          = object
              (catMaybes
                 [("banner_with_content_container" .=) <$>
                    _dciBannerWithContentContainer,
                  ("uid" .=) <$> _dciUid,
                  ("totalVolumes" .=) <$> _dciTotalVolumes,
                  ("subTitle" .=) <$> _dciSubTitle,
                  ("title" .=) <$> _dciTitle,
                  ("volumes" .=) <$> _dciVolumes])

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
--
-- /See:/ 'volumeSaleInfoRetailPrice' smart constructor.
data VolumeSaleInfoRetailPrice =
  VolumeSaleInfoRetailPrice'
    { _vsirpAmount :: !(Maybe (Textual Double))
    , _vsirpCurrencyCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfoRetailPrice'
    {_vsirpAmount = Nothing, _vsirpCurrencyCode = Nothing}


-- | Amount in the currency listed below. (In LITE projection.)
vsirpAmount :: Lens' VolumeSaleInfoRetailPrice (Maybe Double)
vsirpAmount
  = lens _vsirpAmount (\ s a -> s{_vsirpAmount = a}) .
      mapping _Coerce

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vsirpCurrencyCode :: Lens' VolumeSaleInfoRetailPrice (Maybe Text)
vsirpCurrencyCode
  = lens _vsirpCurrencyCode
      (\ s a -> s{_vsirpCurrencyCode = a})

instance FromJSON VolumeSaleInfoRetailPrice where
        parseJSON
          = withObject "VolumeSaleInfoRetailPrice"
              (\ o ->
                 VolumeSaleInfoRetailPrice' <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON VolumeSaleInfoRetailPrice where
        toJSON VolumeSaleInfoRetailPrice'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _vsirpAmount,
                  ("currencyCode" .=) <$> _vsirpCurrencyCode])

--
-- /See:/ 'dictionaryAnnotationData' smart constructor.
data DictionaryAnnotationData =
  DictionaryAnnotationData'
    { _dadKind :: !(Maybe Text)
    , _dadData :: !(Maybe DictlayerData)
    , _dadSelfLink :: !(Maybe Text)
    , _dadAnnotationType :: !(Maybe Text)
    , _dadEncodedData :: !(Maybe Bytes)
    , _dadVolumeId :: !(Maybe Text)
    , _dadId :: !(Maybe Text)
    , _dadUpdated :: !(Maybe Text)
    , _dadLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictionaryAnnotationData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadKind'
--
-- * 'dadData'
--
-- * 'dadSelfLink'
--
-- * 'dadAnnotationType'
--
-- * 'dadEncodedData'
--
-- * 'dadVolumeId'
--
-- * 'dadId'
--
-- * 'dadUpdated'
--
-- * 'dadLayerId'
dictionaryAnnotationData
    :: DictionaryAnnotationData
dictionaryAnnotationData =
  DictionaryAnnotationData'
    { _dadKind = Nothing
    , _dadData = Nothing
    , _dadSelfLink = Nothing
    , _dadAnnotationType = Nothing
    , _dadEncodedData = Nothing
    , _dadVolumeId = Nothing
    , _dadId = Nothing
    , _dadUpdated = Nothing
    , _dadLayerId = Nothing
    }


-- | Resource Type
dadKind :: Lens' DictionaryAnnotationData (Maybe Text)
dadKind = lens _dadKind (\ s a -> s{_dadKind = a})

-- | JSON encoded data for this dictionary annotation data. Emitted with name
-- \'data\' in JSON output. Either this or geo_data will be populated.
dadData :: Lens' DictionaryAnnotationData (Maybe DictlayerData)
dadData = lens _dadData (\ s a -> s{_dadData = a})

-- | URL for this resource. *
dadSelfLink :: Lens' DictionaryAnnotationData (Maybe Text)
dadSelfLink
  = lens _dadSelfLink (\ s a -> s{_dadSelfLink = a})

-- | The type of annotation this data is for.
dadAnnotationType :: Lens' DictionaryAnnotationData (Maybe Text)
dadAnnotationType
  = lens _dadAnnotationType
      (\ s a -> s{_dadAnnotationType = a})

-- | Base64 encoded data for this annotation data.
dadEncodedData :: Lens' DictionaryAnnotationData (Maybe ByteString)
dadEncodedData
  = lens _dadEncodedData
      (\ s a -> s{_dadEncodedData = a})
      . mapping _Bytes

-- | The volume id for this data. *
dadVolumeId :: Lens' DictionaryAnnotationData (Maybe Text)
dadVolumeId
  = lens _dadVolumeId (\ s a -> s{_dadVolumeId = a})

-- | Unique id for this annotation data.
dadId :: Lens' DictionaryAnnotationData (Maybe Text)
dadId = lens _dadId (\ s a -> s{_dadId = a})

-- | Timestamp for the last time this data was updated. (RFC 3339 UTC
-- date-time format).
dadUpdated :: Lens' DictionaryAnnotationData (Maybe Text)
dadUpdated
  = lens _dadUpdated (\ s a -> s{_dadUpdated = a})

-- | The Layer id for this data. *
dadLayerId :: Lens' DictionaryAnnotationData (Maybe Text)
dadLayerId
  = lens _dadLayerId (\ s a -> s{_dadLayerId = a})

instance FromJSON DictionaryAnnotationData where
        parseJSON
          = withObject "DictionaryAnnotationData"
              (\ o ->
                 DictionaryAnnotationData' <$>
                   (o .:? "kind") <*> (o .:? "data") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "annotationType")
                     <*> (o .:? "encodedData")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON DictionaryAnnotationData where
        toJSON DictionaryAnnotationData'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dadKind, ("data" .=) <$> _dadData,
                  ("selfLink" .=) <$> _dadSelfLink,
                  ("annotationType" .=) <$> _dadAnnotationType,
                  ("encodedData" .=) <$> _dadEncodedData,
                  ("volumeId" .=) <$> _dadVolumeId,
                  ("id" .=) <$> _dadId, ("updated" .=) <$> _dadUpdated,
                  ("layerId" .=) <$> _dadLayerId])

-- | Suggested retail price. (In LITE projection.)
--
-- /See:/ 'volumeSaleInfoListPrice' smart constructor.
data VolumeSaleInfoListPrice =
  VolumeSaleInfoListPrice'
    { _vsilpAmount :: !(Maybe (Textual Double))
    , _vsilpCurrencyCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfoListPrice'
    {_vsilpAmount = Nothing, _vsilpCurrencyCode = Nothing}


-- | Amount in the currency listed below. (In LITE projection.)
vsilpAmount :: Lens' VolumeSaleInfoListPrice (Maybe Double)
vsilpAmount
  = lens _vsilpAmount (\ s a -> s{_vsilpAmount = a}) .
      mapping _Coerce

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vsilpCurrencyCode :: Lens' VolumeSaleInfoListPrice (Maybe Text)
vsilpCurrencyCode
  = lens _vsilpCurrencyCode
      (\ s a -> s{_vsilpCurrencyCode = a})

instance FromJSON VolumeSaleInfoListPrice where
        parseJSON
          = withObject "VolumeSaleInfoListPrice"
              (\ o ->
                 VolumeSaleInfoListPrice' <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON VolumeSaleInfoListPrice where
        toJSON VolumeSaleInfoListPrice'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _vsilpAmount,
                  ("currencyCode" .=) <$> _vsilpCurrencyCode])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemConjugationsItem' smart constructor.
data DictlayerDataDictWordsItemSensesItemConjugationsItem =
  DictlayerDataDictWordsItemSensesItemConjugationsItem'
    { _dddwisiciValue :: !(Maybe Text)
    , _dddwisiciType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemConjugationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisiciValue'
--
-- * 'dddwisiciType'
dictlayerDataDictWordsItemSensesItemConjugationsItem
    :: DictlayerDataDictWordsItemSensesItemConjugationsItem
dictlayerDataDictWordsItemSensesItemConjugationsItem =
  DictlayerDataDictWordsItemSensesItemConjugationsItem'
    {_dddwisiciValue = Nothing, _dddwisiciType = Nothing}


dddwisiciValue :: Lens' DictlayerDataDictWordsItemSensesItemConjugationsItem (Maybe Text)
dddwisiciValue
  = lens _dddwisiciValue
      (\ s a -> s{_dddwisiciValue = a})

dddwisiciType :: Lens' DictlayerDataDictWordsItemSensesItemConjugationsItem (Maybe Text)
dddwisiciType
  = lens _dddwisiciType
      (\ s a -> s{_dddwisiciType = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemConjugationsItem
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemConjugationsItem"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemConjugationsItem'
                   <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemConjugationsItem
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemConjugationsItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dddwisiciValue,
                  ("type" .=) <$> _dddwisiciType])

-- | Family membership info of the user that made the request.
--
-- /See:/ 'familyInfoMembership' smart constructor.
data FamilyInfoMembership =
  FamilyInfoMembership'
    { _fimAllowedMaturityRating :: !(Maybe Text)
    , _fimAcquirePermission :: !(Maybe Text)
    , _fimRole :: !(Maybe Text)
    , _fimAgeGroup :: !(Maybe Text)
    , _fimIsInFamily :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilyInfoMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fimAllowedMaturityRating'
--
-- * 'fimAcquirePermission'
--
-- * 'fimRole'
--
-- * 'fimAgeGroup'
--
-- * 'fimIsInFamily'
familyInfoMembership
    :: FamilyInfoMembership
familyInfoMembership =
  FamilyInfoMembership'
    { _fimAllowedMaturityRating = Nothing
    , _fimAcquirePermission = Nothing
    , _fimRole = Nothing
    , _fimAgeGroup = Nothing
    , _fimIsInFamily = Nothing
    }


-- | The maximum allowed maturity rating for the user.
fimAllowedMaturityRating :: Lens' FamilyInfoMembership (Maybe Text)
fimAllowedMaturityRating
  = lens _fimAllowedMaturityRating
      (\ s a -> s{_fimAllowedMaturityRating = a})

-- | Restrictions on user buying and acquiring content.
fimAcquirePermission :: Lens' FamilyInfoMembership (Maybe Text)
fimAcquirePermission
  = lens _fimAcquirePermission
      (\ s a -> s{_fimAcquirePermission = a})

-- | The role of the user in the family.
fimRole :: Lens' FamilyInfoMembership (Maybe Text)
fimRole = lens _fimRole (\ s a -> s{_fimRole = a})

-- | The age group of the user.
fimAgeGroup :: Lens' FamilyInfoMembership (Maybe Text)
fimAgeGroup
  = lens _fimAgeGroup (\ s a -> s{_fimAgeGroup = a})

fimIsInFamily :: Lens' FamilyInfoMembership (Maybe Bool)
fimIsInFamily
  = lens _fimIsInFamily
      (\ s a -> s{_fimIsInFamily = a})

instance FromJSON FamilyInfoMembership where
        parseJSON
          = withObject "FamilyInfoMembership"
              (\ o ->
                 FamilyInfoMembership' <$>
                   (o .:? "allowedMaturityRating") <*>
                     (o .:? "acquirePermission")
                     <*> (o .:? "role")
                     <*> (o .:? "ageGroup")
                     <*> (o .:? "isInFamily"))

instance ToJSON FamilyInfoMembership where
        toJSON FamilyInfoMembership'{..}
          = object
              (catMaybes
                 [("allowedMaturityRating" .=) <$>
                    _fimAllowedMaturityRating,
                  ("acquirePermission" .=) <$> _fimAcquirePermission,
                  ("role" .=) <$> _fimRole,
                  ("ageGroup" .=) <$> _fimAgeGroup,
                  ("isInFamily" .=) <$> _fimIsInFamily])

--
-- /See:/ 'geoAnnotationData' smart constructor.
data GeoAnnotationData =
  GeoAnnotationData'
    { _gadKind :: !(Maybe Text)
    , _gadData :: !(Maybe GeolayerData)
    , _gadSelfLink :: !(Maybe Text)
    , _gadAnnotationType :: !(Maybe Text)
    , _gadEncodedData :: !(Maybe Bytes)
    , _gadVolumeId :: !(Maybe Text)
    , _gadId :: !(Maybe Text)
    , _gadUpdated :: !(Maybe Text)
    , _gadLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeoAnnotationData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadKind'
--
-- * 'gadData'
--
-- * 'gadSelfLink'
--
-- * 'gadAnnotationType'
--
-- * 'gadEncodedData'
--
-- * 'gadVolumeId'
--
-- * 'gadId'
--
-- * 'gadUpdated'
--
-- * 'gadLayerId'
geoAnnotationData
    :: GeoAnnotationData
geoAnnotationData =
  GeoAnnotationData'
    { _gadKind = Nothing
    , _gadData = Nothing
    , _gadSelfLink = Nothing
    , _gadAnnotationType = Nothing
    , _gadEncodedData = Nothing
    , _gadVolumeId = Nothing
    , _gadId = Nothing
    , _gadUpdated = Nothing
    , _gadLayerId = Nothing
    }


-- | Resource Type
gadKind :: Lens' GeoAnnotationData (Maybe Text)
gadKind = lens _gadKind (\ s a -> s{_gadKind = a})

-- | JSON encoded data for this geo annotation data. Emitted with name
-- \'data\' in JSON output. Either this or dict_data will be populated.
gadData :: Lens' GeoAnnotationData (Maybe GeolayerData)
gadData = lens _gadData (\ s a -> s{_gadData = a})

-- | URL for this resource. *
gadSelfLink :: Lens' GeoAnnotationData (Maybe Text)
gadSelfLink
  = lens _gadSelfLink (\ s a -> s{_gadSelfLink = a})

-- | The type of annotation this data is for.
gadAnnotationType :: Lens' GeoAnnotationData (Maybe Text)
gadAnnotationType
  = lens _gadAnnotationType
      (\ s a -> s{_gadAnnotationType = a})

-- | Base64 encoded data for this annotation data.
gadEncodedData :: Lens' GeoAnnotationData (Maybe ByteString)
gadEncodedData
  = lens _gadEncodedData
      (\ s a -> s{_gadEncodedData = a})
      . mapping _Bytes

-- | The volume id for this data. *
gadVolumeId :: Lens' GeoAnnotationData (Maybe Text)
gadVolumeId
  = lens _gadVolumeId (\ s a -> s{_gadVolumeId = a})

-- | Unique id for this annotation data.
gadId :: Lens' GeoAnnotationData (Maybe Text)
gadId = lens _gadId (\ s a -> s{_gadId = a})

-- | Timestamp for the last time this data was updated. (RFC 3339 UTC
-- date-time format).
gadUpdated :: Lens' GeoAnnotationData (Maybe Text)
gadUpdated
  = lens _gadUpdated (\ s a -> s{_gadUpdated = a})

-- | The Layer id for this data. *
gadLayerId :: Lens' GeoAnnotationData (Maybe Text)
gadLayerId
  = lens _gadLayerId (\ s a -> s{_gadLayerId = a})

instance FromJSON GeoAnnotationData where
        parseJSON
          = withObject "GeoAnnotationData"
              (\ o ->
                 GeoAnnotationData' <$>
                   (o .:? "kind") <*> (o .:? "data") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "annotationType")
                     <*> (o .:? "encodedData")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON GeoAnnotationData where
        toJSON GeoAnnotationData'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _gadKind, ("data" .=) <$> _gadData,
                  ("selfLink" .=) <$> _gadSelfLink,
                  ("annotationType" .=) <$> _gadAnnotationType,
                  ("encodedData" .=) <$> _gadEncodedData,
                  ("volumeId" .=) <$> _gadVolumeId,
                  ("id" .=) <$> _gadId, ("updated" .=) <$> _gadUpdated,
                  ("layerId" .=) <$> _gadLayerId])

--
-- /See:/ 'volume2' smart constructor.
data Volume2 =
  Volume2'
    { _voloNextPageToken :: !(Maybe Text)
    , _voloKind :: !(Maybe Text)
    , _voloItems :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Volume2'
    {_voloNextPageToken = Nothing, _voloKind = Nothing, _voloItems = Nothing}


voloNextPageToken :: Lens' Volume2 (Maybe Text)
voloNextPageToken
  = lens _voloNextPageToken
      (\ s a -> s{_voloNextPageToken = a})

-- | Resource type.
voloKind :: Lens' Volume2 (Maybe Text)
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
                 Volume2' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Volume2 where
        toJSON Volume2'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _voloNextPageToken,
                  ("kind" .=) <$> _voloKind,
                  ("items" .=) <$> _voloItems])

--
-- /See:/ 'review' smart constructor.
data Review =
  Review'
    { _rRating :: !(Maybe Text)
    , _rKind :: !(Maybe Text)
    , _rContent :: !(Maybe Text)
    , _rDate :: !(Maybe Text)
    , _rVolumeId :: !(Maybe Text)
    , _rAuthor :: !(Maybe ReviewAuthor)
    , _rSource :: !(Maybe ReviewSource)
    , _rFullTextURL :: !(Maybe Text)
    , _rTitle :: !(Maybe Text)
    , _rType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Review'
    { _rRating = Nothing
    , _rKind = Nothing
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
rKind :: Lens' Review (Maybe Text)
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
                 Review' <$>
                   (o .:? "rating") <*> (o .:? "kind") <*>
                     (o .:? "content")
                     <*> (o .:? "date")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "author")
                     <*> (o .:? "source")
                     <*> (o .:? "fullTextUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "type"))

instance ToJSON Review where
        toJSON Review'{..}
          = object
              (catMaybes
                 [("rating" .=) <$> _rRating, ("kind" .=) <$> _rKind,
                  ("content" .=) <$> _rContent, ("date" .=) <$> _rDate,
                  ("volumeId" .=) <$> _rVolumeId,
                  ("author" .=) <$> _rAuthor,
                  ("source" .=) <$> _rSource,
                  ("fullTextUrl" .=) <$> _rFullTextURL,
                  ("title" .=) <$> _rTitle, ("type" .=) <$> _rType])

-- | Period during this book is\/was a valid rental.
--
-- /See:/ 'volumeUserInfoRentalPeriod' smart constructor.
data VolumeUserInfoRentalPeriod =
  VolumeUserInfoRentalPeriod'
    { _vuirpEndUtcSec :: !(Maybe (Textual Int64))
    , _vuirpStartUtcSec :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeUserInfoRentalPeriod'
    {_vuirpEndUtcSec = Nothing, _vuirpStartUtcSec = Nothing}


vuirpEndUtcSec :: Lens' VolumeUserInfoRentalPeriod (Maybe Int64)
vuirpEndUtcSec
  = lens _vuirpEndUtcSec
      (\ s a -> s{_vuirpEndUtcSec = a})
      . mapping _Coerce

vuirpStartUtcSec :: Lens' VolumeUserInfoRentalPeriod (Maybe Int64)
vuirpStartUtcSec
  = lens _vuirpStartUtcSec
      (\ s a -> s{_vuirpStartUtcSec = a})
      . mapping _Coerce

instance FromJSON VolumeUserInfoRentalPeriod where
        parseJSON
          = withObject "VolumeUserInfoRentalPeriod"
              (\ o ->
                 VolumeUserInfoRentalPeriod' <$>
                   (o .:? "endUtcSec") <*> (o .:? "startUtcSec"))

instance ToJSON VolumeUserInfoRentalPeriod where
        toJSON VolumeUserInfoRentalPeriod'{..}
          = object
              (catMaybes
                 [("endUtcSec" .=) <$> _vuirpEndUtcSec,
                  ("startUtcSec" .=) <$> _vuirpStartUtcSec])

--
-- /See:/ 'seriesSeriesItemSeriesSubscriptionReleaseInfo' smart constructor.
data SeriesSeriesItemSeriesSubscriptionReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfo'
    { _ssissriSeriesSubscriptionType :: !(Maybe Text)
    , _ssissriCancelTime :: !(Maybe Text)
    , _ssissriCurrentReleaseInfo :: !(Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo)
    , _ssissriNextReleaseInfo :: !(Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesSeriesItemSeriesSubscriptionReleaseInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssissriSeriesSubscriptionType'
--
-- * 'ssissriCancelTime'
--
-- * 'ssissriCurrentReleaseInfo'
--
-- * 'ssissriNextReleaseInfo'
seriesSeriesItemSeriesSubscriptionReleaseInfo
    :: SeriesSeriesItemSeriesSubscriptionReleaseInfo
seriesSeriesItemSeriesSubscriptionReleaseInfo =
  SeriesSeriesItemSeriesSubscriptionReleaseInfo'
    { _ssissriSeriesSubscriptionType = Nothing
    , _ssissriCancelTime = Nothing
    , _ssissriCurrentReleaseInfo = Nothing
    , _ssissriNextReleaseInfo = Nothing
    }


ssissriSeriesSubscriptionType :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfo (Maybe Text)
ssissriSeriesSubscriptionType
  = lens _ssissriSeriesSubscriptionType
      (\ s a -> s{_ssissriSeriesSubscriptionType = a})

ssissriCancelTime :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfo (Maybe Text)
ssissriCancelTime
  = lens _ssissriCancelTime
      (\ s a -> s{_ssissriCancelTime = a})

ssissriCurrentReleaseInfo :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfo (Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfoCurrentReleaseInfo)
ssissriCurrentReleaseInfo
  = lens _ssissriCurrentReleaseInfo
      (\ s a -> s{_ssissriCurrentReleaseInfo = a})

ssissriNextReleaseInfo :: Lens' SeriesSeriesItemSeriesSubscriptionReleaseInfo (Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfoNextReleaseInfo)
ssissriNextReleaseInfo
  = lens _ssissriNextReleaseInfo
      (\ s a -> s{_ssissriNextReleaseInfo = a})

instance FromJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfo
         where
        parseJSON
          = withObject
              "SeriesSeriesItemSeriesSubscriptionReleaseInfo"
              (\ o ->
                 SeriesSeriesItemSeriesSubscriptionReleaseInfo' <$>
                   (o .:? "seriesSubscriptionType") <*>
                     (o .:? "cancelTime")
                     <*> (o .:? "currentReleaseInfo")
                     <*> (o .:? "nextReleaseInfo"))

instance ToJSON
           SeriesSeriesItemSeriesSubscriptionReleaseInfo
         where
        toJSON
          SeriesSeriesItemSeriesSubscriptionReleaseInfo'{..}
          = object
              (catMaybes
                 [("seriesSubscriptionType" .=) <$>
                    _ssissriSeriesSubscriptionType,
                  ("cancelTime" .=) <$> _ssissriCancelTime,
                  ("currentReleaseInfo" .=) <$>
                    _ssissriCurrentReleaseInfo,
                  ("nextReleaseInfo" .=) <$> _ssissriNextReleaseInfo])

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
--
-- /See:/ 'volumeSaleInfo' smart constructor.
data VolumeSaleInfo =
  VolumeSaleInfo'
    { _vsiCountry :: !(Maybe Text)
    , _vsiOnSaleDate :: !(Maybe Text)
    , _vsiListPrice :: !(Maybe VolumeSaleInfoListPrice)
    , _vsiRetailPrice :: !(Maybe VolumeSaleInfoRetailPrice)
    , _vsiOffers :: !(Maybe [VolumeSaleInfoOffersItem])
    , _vsiBuyLink :: !(Maybe Text)
    , _vsiIsEbook :: !(Maybe Bool)
    , _vsiSaleability :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfo'
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
vsiOnSaleDate :: Lens' VolumeSaleInfo (Maybe Text)
vsiOnSaleDate
  = lens _vsiOnSaleDate
      (\ s a -> s{_vsiOnSaleDate = a})

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
                 VolumeSaleInfo' <$>
                   (o .:? "country") <*> (o .:? "onSaleDate") <*>
                     (o .:? "listPrice")
                     <*> (o .:? "retailPrice")
                     <*> (o .:? "offers" .!= mempty)
                     <*> (o .:? "buyLink")
                     <*> (o .:? "isEbook")
                     <*> (o .:? "saleability"))

instance ToJSON VolumeSaleInfo where
        toJSON VolumeSaleInfo'{..}
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
-- /See:/ 'seriesSeriesItem' smart constructor.
data SeriesSeriesItem =
  SeriesSeriesItem'
    { _ssiIsComplete :: !(Maybe Bool)
    , _ssiSeriesId :: !(Maybe Text)
    , _ssiImageURL :: !(Maybe Text)
    , _ssiSeriesSubscriptionReleaseInfo :: !(Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfo)
    , _ssiEligibleForSubscription :: !(Maybe Bool)
    , _ssiSeriesFormatType :: !(Maybe Text)
    , _ssiBannerImageURL :: !(Maybe Text)
    , _ssiTitle :: !(Maybe Text)
    , _ssiSeriesType :: !(Maybe Text)
    , _ssiSubscriptionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesSeriesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssiIsComplete'
--
-- * 'ssiSeriesId'
--
-- * 'ssiImageURL'
--
-- * 'ssiSeriesSubscriptionReleaseInfo'
--
-- * 'ssiEligibleForSubscription'
--
-- * 'ssiSeriesFormatType'
--
-- * 'ssiBannerImageURL'
--
-- * 'ssiTitle'
--
-- * 'ssiSeriesType'
--
-- * 'ssiSubscriptionId'
seriesSeriesItem
    :: SeriesSeriesItem
seriesSeriesItem =
  SeriesSeriesItem'
    { _ssiIsComplete = Nothing
    , _ssiSeriesId = Nothing
    , _ssiImageURL = Nothing
    , _ssiSeriesSubscriptionReleaseInfo = Nothing
    , _ssiEligibleForSubscription = Nothing
    , _ssiSeriesFormatType = Nothing
    , _ssiBannerImageURL = Nothing
    , _ssiTitle = Nothing
    , _ssiSeriesType = Nothing
    , _ssiSubscriptionId = Nothing
    }


ssiIsComplete :: Lens' SeriesSeriesItem (Maybe Bool)
ssiIsComplete
  = lens _ssiIsComplete
      (\ s a -> s{_ssiIsComplete = a})

ssiSeriesId :: Lens' SeriesSeriesItem (Maybe Text)
ssiSeriesId
  = lens _ssiSeriesId (\ s a -> s{_ssiSeriesId = a})

ssiImageURL :: Lens' SeriesSeriesItem (Maybe Text)
ssiImageURL
  = lens _ssiImageURL (\ s a -> s{_ssiImageURL = a})

ssiSeriesSubscriptionReleaseInfo :: Lens' SeriesSeriesItem (Maybe SeriesSeriesItemSeriesSubscriptionReleaseInfo)
ssiSeriesSubscriptionReleaseInfo
  = lens _ssiSeriesSubscriptionReleaseInfo
      (\ s a -> s{_ssiSeriesSubscriptionReleaseInfo = a})

ssiEligibleForSubscription :: Lens' SeriesSeriesItem (Maybe Bool)
ssiEligibleForSubscription
  = lens _ssiEligibleForSubscription
      (\ s a -> s{_ssiEligibleForSubscription = a})

ssiSeriesFormatType :: Lens' SeriesSeriesItem (Maybe Text)
ssiSeriesFormatType
  = lens _ssiSeriesFormatType
      (\ s a -> s{_ssiSeriesFormatType = a})

ssiBannerImageURL :: Lens' SeriesSeriesItem (Maybe Text)
ssiBannerImageURL
  = lens _ssiBannerImageURL
      (\ s a -> s{_ssiBannerImageURL = a})

ssiTitle :: Lens' SeriesSeriesItem (Maybe Text)
ssiTitle = lens _ssiTitle (\ s a -> s{_ssiTitle = a})

ssiSeriesType :: Lens' SeriesSeriesItem (Maybe Text)
ssiSeriesType
  = lens _ssiSeriesType
      (\ s a -> s{_ssiSeriesType = a})

ssiSubscriptionId :: Lens' SeriesSeriesItem (Maybe Text)
ssiSubscriptionId
  = lens _ssiSubscriptionId
      (\ s a -> s{_ssiSubscriptionId = a})

instance FromJSON SeriesSeriesItem where
        parseJSON
          = withObject "SeriesSeriesItem"
              (\ o ->
                 SeriesSeriesItem' <$>
                   (o .:? "isComplete") <*> (o .:? "seriesId") <*>
                     (o .:? "imageUrl")
                     <*> (o .:? "seriesSubscriptionReleaseInfo")
                     <*> (o .:? "eligibleForSubscription")
                     <*> (o .:? "seriesFormatType")
                     <*> (o .:? "bannerImageUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "seriesType")
                     <*> (o .:? "subscriptionId"))

instance ToJSON SeriesSeriesItem where
        toJSON SeriesSeriesItem'{..}
          = object
              (catMaybes
                 [("isComplete" .=) <$> _ssiIsComplete,
                  ("seriesId" .=) <$> _ssiSeriesId,
                  ("imageUrl" .=) <$> _ssiImageURL,
                  ("seriesSubscriptionReleaseInfo" .=) <$>
                    _ssiSeriesSubscriptionReleaseInfo,
                  ("eligibleForSubscription" .=) <$>
                    _ssiEligibleForSubscription,
                  ("seriesFormatType" .=) <$> _ssiSeriesFormatType,
                  ("bannerImageUrl" .=) <$> _ssiBannerImageURL,
                  ("title" .=) <$> _ssiTitle,
                  ("seriesType" .=) <$> _ssiSeriesType,
                  ("subscriptionId" .=) <$> _ssiSubscriptionId])

--
-- /See:/ 'metadata' smart constructor.
data Metadata =
  Metadata'
    { _mKind :: !(Maybe Text)
    , _mItems :: !(Maybe [MetadataItemsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mItems'
metadata
    :: Metadata
metadata = Metadata' {_mKind = Nothing, _mItems = Nothing}


-- | Resource type.
mKind :: Lens' Metadata (Maybe Text)
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
                 Metadata' <$>
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _mKind, ("items" .=) <$> _mItems])

-- | What layers exist in this volume and high level information about them.
--
-- /See:/ 'volumeLayerInfo' smart constructor.
newtype VolumeLayerInfo =
  VolumeLayerInfo'
    { _vliLayers :: Maybe [VolumeLayerInfoLayersItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeLayerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vliLayers'
volumeLayerInfo
    :: VolumeLayerInfo
volumeLayerInfo = VolumeLayerInfo' {_vliLayers = Nothing}


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
                 VolumeLayerInfo' <$> (o .:? "layers" .!= mempty))

instance ToJSON VolumeLayerInfo where
        toJSON VolumeLayerInfo'{..}
          = object (catMaybes [("layers" .=) <$> _vliLayers])

-- | Physical dimensions of this volume.
--
-- /See:/ 'volumeVolumeInfoDimensions' smart constructor.
data VolumeVolumeInfoDimensions =
  VolumeVolumeInfoDimensions'
    { _vvidHeight :: !(Maybe Text)
    , _vvidWidth :: !(Maybe Text)
    , _vvidThickness :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeVolumeInfoDimensions'
    {_vvidHeight = Nothing, _vvidWidth = Nothing, _vvidThickness = Nothing}


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
                 VolumeVolumeInfoDimensions' <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "thickness"))

instance ToJSON VolumeVolumeInfoDimensions where
        toJSON VolumeVolumeInfoDimensions'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vvidHeight,
                  ("width" .=) <$> _vvidWidth,
                  ("thickness" .=) <$> _vvidThickness])

--
-- /See:/ 'requestAccessData' smart constructor.
data RequestAccessData =
  RequestAccessData'
    { _radConcurrentAccess :: !(Maybe ConcurrentAccessRestriction)
    , _radKind :: !(Maybe Text)
    , _radDownloadAccess :: !(Maybe DownloadAccessRestriction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestAccessData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radConcurrentAccess'
--
-- * 'radKind'
--
-- * 'radDownloadAccess'
requestAccessData
    :: RequestAccessData
requestAccessData =
  RequestAccessData'
    { _radConcurrentAccess = Nothing
    , _radKind = Nothing
    , _radDownloadAccess = Nothing
    }


-- | A concurrent access response.
radConcurrentAccess :: Lens' RequestAccessData (Maybe ConcurrentAccessRestriction)
radConcurrentAccess
  = lens _radConcurrentAccess
      (\ s a -> s{_radConcurrentAccess = a})

-- | Resource type.
radKind :: Lens' RequestAccessData (Maybe Text)
radKind = lens _radKind (\ s a -> s{_radKind = a})

-- | A download access response.
radDownloadAccess :: Lens' RequestAccessData (Maybe DownloadAccessRestriction)
radDownloadAccess
  = lens _radDownloadAccess
      (\ s a -> s{_radDownloadAccess = a})

instance FromJSON RequestAccessData where
        parseJSON
          = withObject "RequestAccessData"
              (\ o ->
                 RequestAccessData' <$>
                   (o .:? "concurrentAccess") <*> (o .:? "kind") <*>
                     (o .:? "downloadAccess"))

instance ToJSON RequestAccessData where
        toJSON RequestAccessData'{..}
          = object
              (catMaybes
                 [("concurrentAccess" .=) <$> _radConcurrentAccess,
                  ("kind" .=) <$> _radKind,
                  ("downloadAccess" .=) <$> _radDownloadAccess])

--
-- /See:/ 'familyInfo' smart constructor.
data FamilyInfo =
  FamilyInfo'
    { _fiMembership :: !(Maybe FamilyInfoMembership)
    , _fiKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiMembership'
--
-- * 'fiKind'
familyInfo
    :: FamilyInfo
familyInfo = FamilyInfo' {_fiMembership = Nothing, _fiKind = Nothing}


-- | Family membership info of the user that made the request.
fiMembership :: Lens' FamilyInfo (Maybe FamilyInfoMembership)
fiMembership
  = lens _fiMembership (\ s a -> s{_fiMembership = a})

-- | Resource type.
fiKind :: Lens' FamilyInfo (Maybe Text)
fiKind = lens _fiKind (\ s a -> s{_fiKind = a})

instance FromJSON FamilyInfo where
        parseJSON
          = withObject "FamilyInfo"
              (\ o ->
                 FamilyInfo' <$>
                   (o .:? "membership") <*> (o .:? "kind"))

instance ToJSON FamilyInfo where
        toJSON FamilyInfo'{..}
          = object
              (catMaybes
                 [("membership" .=) <$> _fiMembership,
                  ("kind" .=) <$> _fiKind])

-- | Selection ranges sent from the client.
--
-- /See:/ 'annotationClientVersionRanges' smart constructor.
data AnnotationClientVersionRanges =
  AnnotationClientVersionRanges'
    { _acvrGbImageRange :: !(Maybe BooksAnnotationsRange)
    , _acvrContentVersion :: !(Maybe Text)
    , _acvrImageCfiRange :: !(Maybe BooksAnnotationsRange)
    , _acvrGbTextRange :: !(Maybe BooksAnnotationsRange)
    , _acvrCfiRange :: !(Maybe BooksAnnotationsRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AnnotationClientVersionRanges'
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
                 AnnotationClientVersionRanges' <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON AnnotationClientVersionRanges where
        toJSON AnnotationClientVersionRanges'{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _acvrGbImageRange,
                  ("contentVersion" .=) <$> _acvrContentVersion,
                  ("imageCfiRange" .=) <$> _acvrImageCfiRange,
                  ("gbTextRange" .=) <$> _acvrGbTextRange,
                  ("cfiRange" .=) <$> _acvrCfiRange])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemDefinitionsItem' smart constructor.
data DictlayerDataDictWordsItemSensesItemDefinitionsItem =
  DictlayerDataDictWordsItemSensesItemDefinitionsItem'
    { _dddwisidiDefinition :: !(Maybe Text)
    , _dddwisidiExamples :: !(Maybe [DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemDefinitionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisidiDefinition'
--
-- * 'dddwisidiExamples'
dictlayerDataDictWordsItemSensesItemDefinitionsItem
    :: DictlayerDataDictWordsItemSensesItemDefinitionsItem
dictlayerDataDictWordsItemSensesItemDefinitionsItem =
  DictlayerDataDictWordsItemSensesItemDefinitionsItem'
    {_dddwisidiDefinition = Nothing, _dddwisidiExamples = Nothing}


dddwisidiDefinition :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItem (Maybe Text)
dddwisidiDefinition
  = lens _dddwisidiDefinition
      (\ s a -> s{_dddwisidiDefinition = a})

dddwisidiExamples :: Lens' DictlayerDataDictWordsItemSensesItemDefinitionsItem [DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem]
dddwisidiExamples
  = lens _dddwisidiExamples
      (\ s a -> s{_dddwisidiExamples = a})
      . _Default
      . _Coerce

instance FromJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItem
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemDefinitionsItem"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemDefinitionsItem'
                   <$>
                   (o .:? "definition") <*>
                     (o .:? "examples" .!= mempty))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemDefinitionsItem
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemDefinitionsItem'{..}
          = object
              (catMaybes
                 [("definition" .=) <$> _dddwisidiDefinition,
                  ("examples" .=) <$> _dddwisidiExamples])

--
-- /See:/ 'volumeLayerInfoLayersItem' smart constructor.
data VolumeLayerInfoLayersItem =
  VolumeLayerInfoLayersItem'
    { _vliliVolumeAnnotationsVersion :: !(Maybe Text)
    , _vliliLayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeLayerInfoLayersItem'
    {_vliliVolumeAnnotationsVersion = Nothing, _vliliLayerId = Nothing}


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
                 VolumeLayerInfoLayersItem' <$>
                   (o .:? "volumeAnnotationsVersion") <*>
                     (o .:? "layerId"))

instance ToJSON VolumeLayerInfoLayersItem where
        toJSON VolumeLayerInfoLayersItem'{..}
          = object
              (catMaybes
                 [("volumeAnnotationsVersion" .=) <$>
                    _vliliVolumeAnnotationsVersion,
                  ("layerId" .=) <$> _vliliLayerId])

-- | Selection ranges for the most recent content version.
--
-- /See:/ 'annotationCurrentVersionRanges' smart constructor.
data AnnotationCurrentVersionRanges =
  AnnotationCurrentVersionRanges'
    { _aGbImageRange :: !(Maybe BooksAnnotationsRange)
    , _aContentVersion :: !(Maybe Text)
    , _aImageCfiRange :: !(Maybe BooksAnnotationsRange)
    , _aGbTextRange :: !(Maybe BooksAnnotationsRange)
    , _aCfiRange :: !(Maybe BooksAnnotationsRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AnnotationCurrentVersionRanges'
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
                 AnnotationCurrentVersionRanges' <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON AnnotationCurrentVersionRanges where
        toJSON AnnotationCurrentVersionRanges'{..}
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
data VolumeAccessInfoPdf =
  VolumeAccessInfoPdf'
    { _vaipAcsTokenLink :: !(Maybe Text)
    , _vaipIsAvailable :: !(Maybe Bool)
    , _vaipDownloadLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeAccessInfoPdf'
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
                 VolumeAccessInfoPdf' <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON VolumeAccessInfoPdf where
        toJSON VolumeAccessInfoPdf'{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _vaipAcsTokenLink,
                  ("isAvailable" .=) <$> _vaipIsAvailable,
                  ("downloadLink" .=) <$> _vaipDownloadLink])

--
-- /See:/ 'dictlayerDataDictWordsItemExamplesItemSource' smart constructor.
data DictlayerDataDictWordsItemExamplesItemSource =
  DictlayerDataDictWordsItemExamplesItemSource'
    { _dddwieisURL :: !(Maybe Text)
    , _dddwieisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwieisURL'
--
-- * 'dddwieisAttribution'
dictlayerDataDictWordsItemExamplesItemSource
    :: DictlayerDataDictWordsItemExamplesItemSource
dictlayerDataDictWordsItemExamplesItemSource =
  DictlayerDataDictWordsItemExamplesItemSource'
    {_dddwieisURL = Nothing, _dddwieisAttribution = Nothing}


dddwieisURL :: Lens' DictlayerDataDictWordsItemExamplesItemSource (Maybe Text)
dddwieisURL
  = lens _dddwieisURL (\ s a -> s{_dddwieisURL = a})

dddwieisAttribution :: Lens' DictlayerDataDictWordsItemExamplesItemSource (Maybe Text)
dddwieisAttribution
  = lens _dddwieisAttribution
      (\ s a -> s{_dddwieisAttribution = a})

instance FromJSON
           DictlayerDataDictWordsItemExamplesItemSource
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemExamplesItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemExamplesItemSource' <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
           DictlayerDataDictWordsItemExamplesItemSource
         where
        toJSON
          DictlayerDataDictWordsItemExamplesItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwieisURL,
                  ("attribution" .=) <$> _dddwieisAttribution])

-- | Information about epub content. (In LITE projection.)
--
-- /See:/ 'volumeAccessInfoEpub' smart constructor.
data VolumeAccessInfoEpub =
  VolumeAccessInfoEpub'
    { _vaieAcsTokenLink :: !(Maybe Text)
    , _vaieIsAvailable :: !(Maybe Bool)
    , _vaieDownloadLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeAccessInfoEpub'
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
                 VolumeAccessInfoEpub' <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON VolumeAccessInfoEpub where
        toJSON VolumeAccessInfoEpub'{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _vaieAcsTokenLink,
                  ("isAvailable" .=) <$> _vaieIsAvailable,
                  ("downloadLink" .=) <$> _vaieDownloadLink])

--
-- /See:/ 'readingPosition' smart constructor.
data ReadingPosition =
  ReadingPosition'
    { _rpEpubCfiPosition :: !(Maybe Text)
    , _rpKind :: !(Maybe Text)
    , _rpGbImagePosition :: !(Maybe Text)
    , _rpPdfPosition :: !(Maybe Text)
    , _rpVolumeId :: !(Maybe Text)
    , _rpUpdated :: !(Maybe Text)
    , _rpGbTextPosition :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ReadingPosition'
    { _rpEpubCfiPosition = Nothing
    , _rpKind = Nothing
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
rpKind :: Lens' ReadingPosition (Maybe Text)
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
rpUpdated :: Lens' ReadingPosition (Maybe Text)
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
                 ReadingPosition' <$>
                   (o .:? "epubCfiPosition") <*> (o .:? "kind") <*>
                     (o .:? "gbImagePosition")
                     <*> (o .:? "pdfPosition")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "updated")
                     <*> (o .:? "gbTextPosition"))

instance ToJSON ReadingPosition where
        toJSON ReadingPosition'{..}
          = object
              (catMaybes
                 [("epubCfiPosition" .=) <$> _rpEpubCfiPosition,
                  ("kind" .=) <$> _rpKind,
                  ("gbImagePosition" .=) <$> _rpGbImagePosition,
                  ("pdfPosition" .=) <$> _rpPdfPosition,
                  ("volumeId" .=) <$> _rpVolumeId,
                  ("updated" .=) <$> _rpUpdated,
                  ("gbTextPosition" .=) <$> _rpGbTextPosition])

--
-- /See:/ 'volumeSaleInfoOffersItem' smart constructor.
data VolumeSaleInfoOffersItem =
  VolumeSaleInfoOffersItem'
    { _vsioiFinskyOfferType :: !(Maybe (Textual Int32))
    , _vsioiRentalDuration :: !(Maybe VolumeSaleInfoOffersItemRentalDuration)
    , _vsioiListPrice :: !(Maybe VolumeSaleInfoOffersItemListPrice)
    , _vsioiRetailPrice :: !(Maybe VolumeSaleInfoOffersItemRetailPrice)
    , _vsioiGiftable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
--
-- * 'vsioiGiftable'
volumeSaleInfoOffersItem
    :: VolumeSaleInfoOffersItem
volumeSaleInfoOffersItem =
  VolumeSaleInfoOffersItem'
    { _vsioiFinskyOfferType = Nothing
    , _vsioiRentalDuration = Nothing
    , _vsioiListPrice = Nothing
    , _vsioiRetailPrice = Nothing
    , _vsioiGiftable = Nothing
    }


-- | The finsky offer type (e.g., PURCHASE=0 RENTAL=3)
vsioiFinskyOfferType :: Lens' VolumeSaleInfoOffersItem (Maybe Int32)
vsioiFinskyOfferType
  = lens _vsioiFinskyOfferType
      (\ s a -> s{_vsioiFinskyOfferType = a})
      . mapping _Coerce

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

-- | Indicates whether the offer is giftable.
vsioiGiftable :: Lens' VolumeSaleInfoOffersItem (Maybe Bool)
vsioiGiftable
  = lens _vsioiGiftable
      (\ s a -> s{_vsioiGiftable = a})

instance FromJSON VolumeSaleInfoOffersItem where
        parseJSON
          = withObject "VolumeSaleInfoOffersItem"
              (\ o ->
                 VolumeSaleInfoOffersItem' <$>
                   (o .:? "finskyOfferType") <*>
                     (o .:? "rentalDuration")
                     <*> (o .:? "listPrice")
                     <*> (o .:? "retailPrice")
                     <*> (o .:? "giftable"))

instance ToJSON VolumeSaleInfoOffersItem where
        toJSON VolumeSaleInfoOffersItem'{..}
          = object
              (catMaybes
                 [("finskyOfferType" .=) <$> _vsioiFinskyOfferType,
                  ("rentalDuration" .=) <$> _vsioiRentalDuration,
                  ("listPrice" .=) <$> _vsioiListPrice,
                  ("retailPrice" .=) <$> _vsioiRetailPrice,
                  ("giftable" .=) <$> _vsioiGiftable])

--
-- /See:/ 'dictlayerDataDict' smart constructor.
data DictlayerDataDict =
  DictlayerDataDict'
    { _dddSource :: !(Maybe DictlayerDataDictSource)
    , _dddWords :: !(Maybe [DictlayerDataDictWordsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddSource'
--
-- * 'dddWords'
dictlayerDataDict
    :: DictlayerDataDict
dictlayerDataDict =
  DictlayerDataDict' {_dddSource = Nothing, _dddWords = Nothing}


-- | The source, url and attribution for this dictionary data.
dddSource :: Lens' DictlayerDataDict (Maybe DictlayerDataDictSource)
dddSource
  = lens _dddSource (\ s a -> s{_dddSource = a})

dddWords :: Lens' DictlayerDataDict [DictlayerDataDictWordsItem]
dddWords
  = lens _dddWords (\ s a -> s{_dddWords = a}) .
      _Default
      . _Coerce

instance FromJSON DictlayerDataDict where
        parseJSON
          = withObject "DictlayerDataDict"
              (\ o ->
                 DictlayerDataDict' <$>
                   (o .:? "source") <*> (o .:? "words" .!= mempty))

instance ToJSON DictlayerDataDict where
        toJSON DictlayerDataDict'{..}
          = object
              (catMaybes
                 [("source" .=) <$> _dddSource,
                  ("words" .=) <$> _dddWords])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItem' smart constructor.
data DictlayerDataDictWordsItemSensesItem =
  DictlayerDataDictWordsItemSensesItem'
    { _dddwisiPronunciationURL :: !(Maybe Text)
    , _dddwisiConjugations :: !(Maybe [DictlayerDataDictWordsItemSensesItemConjugationsItem])
    , _dddwisiPronunciation :: !(Maybe Text)
    , _dddwisiSynonyms :: !(Maybe [DictlayerDataDictWordsItemSensesItemSynonymsItem])
    , _dddwisiSource :: !(Maybe DictlayerDataDictWordsItemSensesItemSource)
    , _dddwisiPartOfSpeech :: !(Maybe Text)
    , _dddwisiDefinitions :: !(Maybe [DictlayerDataDictWordsItemSensesItemDefinitionsItem])
    , _dddwisiSyllabification :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisiPronunciationURL'
--
-- * 'dddwisiConjugations'
--
-- * 'dddwisiPronunciation'
--
-- * 'dddwisiSynonyms'
--
-- * 'dddwisiSource'
--
-- * 'dddwisiPartOfSpeech'
--
-- * 'dddwisiDefinitions'
--
-- * 'dddwisiSyllabification'
dictlayerDataDictWordsItemSensesItem
    :: DictlayerDataDictWordsItemSensesItem
dictlayerDataDictWordsItemSensesItem =
  DictlayerDataDictWordsItemSensesItem'
    { _dddwisiPronunciationURL = Nothing
    , _dddwisiConjugations = Nothing
    , _dddwisiPronunciation = Nothing
    , _dddwisiSynonyms = Nothing
    , _dddwisiSource = Nothing
    , _dddwisiPartOfSpeech = Nothing
    , _dddwisiDefinitions = Nothing
    , _dddwisiSyllabification = Nothing
    }


dddwisiPronunciationURL :: Lens' DictlayerDataDictWordsItemSensesItem (Maybe Text)
dddwisiPronunciationURL
  = lens _dddwisiPronunciationURL
      (\ s a -> s{_dddwisiPronunciationURL = a})

dddwisiConjugations :: Lens' DictlayerDataDictWordsItemSensesItem [DictlayerDataDictWordsItemSensesItemConjugationsItem]
dddwisiConjugations
  = lens _dddwisiConjugations
      (\ s a -> s{_dddwisiConjugations = a})
      . _Default
      . _Coerce

dddwisiPronunciation :: Lens' DictlayerDataDictWordsItemSensesItem (Maybe Text)
dddwisiPronunciation
  = lens _dddwisiPronunciation
      (\ s a -> s{_dddwisiPronunciation = a})

dddwisiSynonyms :: Lens' DictlayerDataDictWordsItemSensesItem [DictlayerDataDictWordsItemSensesItemSynonymsItem]
dddwisiSynonyms
  = lens _dddwisiSynonyms
      (\ s a -> s{_dddwisiSynonyms = a})
      . _Default
      . _Coerce

dddwisiSource :: Lens' DictlayerDataDictWordsItemSensesItem (Maybe DictlayerDataDictWordsItemSensesItemSource)
dddwisiSource
  = lens _dddwisiSource
      (\ s a -> s{_dddwisiSource = a})

dddwisiPartOfSpeech :: Lens' DictlayerDataDictWordsItemSensesItem (Maybe Text)
dddwisiPartOfSpeech
  = lens _dddwisiPartOfSpeech
      (\ s a -> s{_dddwisiPartOfSpeech = a})

dddwisiDefinitions :: Lens' DictlayerDataDictWordsItemSensesItem [DictlayerDataDictWordsItemSensesItemDefinitionsItem]
dddwisiDefinitions
  = lens _dddwisiDefinitions
      (\ s a -> s{_dddwisiDefinitions = a})
      . _Default
      . _Coerce

dddwisiSyllabification :: Lens' DictlayerDataDictWordsItemSensesItem (Maybe Text)
dddwisiSyllabification
  = lens _dddwisiSyllabification
      (\ s a -> s{_dddwisiSyllabification = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItem
         where
        parseJSON
          = withObject "DictlayerDataDictWordsItemSensesItem"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItem' <$>
                   (o .:? "pronunciationUrl") <*>
                     (o .:? "conjugations" .!= mempty)
                     <*> (o .:? "pronunciation")
                     <*> (o .:? "synonyms" .!= mempty)
                     <*> (o .:? "source")
                     <*> (o .:? "partOfSpeech")
                     <*> (o .:? "definitions" .!= mempty)
                     <*> (o .:? "syllabification"))

instance ToJSON DictlayerDataDictWordsItemSensesItem
         where
        toJSON DictlayerDataDictWordsItemSensesItem'{..}
          = object
              (catMaybes
                 [("pronunciationUrl" .=) <$>
                    _dddwisiPronunciationURL,
                  ("conjugations" .=) <$> _dddwisiConjugations,
                  ("pronunciation" .=) <$> _dddwisiPronunciation,
                  ("synonyms" .=) <$> _dddwisiSynonyms,
                  ("source" .=) <$> _dddwisiSource,
                  ("partOfSpeech" .=) <$> _dddwisiPartOfSpeech,
                  ("definitions" .=) <$> _dddwisiDefinitions,
                  ("syllabification" .=) <$> _dddwisiSyllabification])

-- | Recommendation related information for this volume.
--
-- /See:/ 'volumeRecommendedInfo' smart constructor.
newtype VolumeRecommendedInfo =
  VolumeRecommendedInfo'
    { _vriExplanation :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeRecommendedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vriExplanation'
volumeRecommendedInfo
    :: VolumeRecommendedInfo
volumeRecommendedInfo = VolumeRecommendedInfo' {_vriExplanation = Nothing}


-- | A text explaining why this volume is recommended.
vriExplanation :: Lens' VolumeRecommendedInfo (Maybe Text)
vriExplanation
  = lens _vriExplanation
      (\ s a -> s{_vriExplanation = a})

instance FromJSON VolumeRecommendedInfo where
        parseJSON
          = withObject "VolumeRecommendedInfo"
              (\ o ->
                 VolumeRecommendedInfo' <$> (o .:? "explanation"))

instance ToJSON VolumeRecommendedInfo where
        toJSON VolumeRecommendedInfo'{..}
          = object
              (catMaybes [("explanation" .=) <$> _vriExplanation])

--
-- /See:/ 'offers' smart constructor.
data Offers =
  Offers'
    { _oKind :: !(Maybe Text)
    , _oItems :: !(Maybe [OffersItemsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Offers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oKind'
--
-- * 'oItems'
offers
    :: Offers
offers = Offers' {_oKind = Nothing, _oItems = Nothing}


-- | Resource type.
oKind :: Lens' Offers (Maybe Text)
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
                 Offers' <$>
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON Offers where
        toJSON Offers'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oKind, ("items" .=) <$> _oItems])

--
-- /See:/ 'discoveryclusters' smart constructor.
data Discoveryclusters =
  Discoveryclusters'
    { _dKind :: !(Maybe Text)
    , _dTotalClusters :: !(Maybe (Textual Int32))
    , _dClusters :: !(Maybe [DiscoveryclustersClustersItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Discoveryclusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dTotalClusters'
--
-- * 'dClusters'
discoveryclusters
    :: Discoveryclusters
discoveryclusters =
  Discoveryclusters'
    {_dKind = Nothing, _dTotalClusters = Nothing, _dClusters = Nothing}


-- | Resorce type.
dKind :: Lens' Discoveryclusters (Maybe Text)
dKind = lens _dKind (\ s a -> s{_dKind = a})

dTotalClusters :: Lens' Discoveryclusters (Maybe Int32)
dTotalClusters
  = lens _dTotalClusters
      (\ s a -> s{_dTotalClusters = a})
      . mapping _Coerce

dClusters :: Lens' Discoveryclusters [DiscoveryclustersClustersItem]
dClusters
  = lens _dClusters (\ s a -> s{_dClusters = a}) .
      _Default
      . _Coerce

instance FromJSON Discoveryclusters where
        parseJSON
          = withObject "Discoveryclusters"
              (\ o ->
                 Discoveryclusters' <$>
                   (o .:? "kind") <*> (o .:? "totalClusters") <*>
                     (o .:? "clusters" .!= mempty))

instance ToJSON Discoveryclusters where
        toJSON Discoveryclusters'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dKind,
                  ("totalClusters" .=) <$> _dTotalClusters,
                  ("clusters" .=) <$> _dClusters])

--
-- /See:/ 'volumeseriesInfoVolumeSeriesItem' smart constructor.
data VolumeseriesInfoVolumeSeriesItem =
  VolumeseriesInfoVolumeSeriesItem'
    { _vivsiSeriesId :: !(Maybe Text)
    , _vivsiSeriesBookType :: !(Maybe Text)
    , _vivsiOrderNumber :: !(Maybe (Textual Int32))
    , _vivsiIssue :: !(Maybe [VolumeseriesInfoVolumeSeriesItemIssueItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeseriesInfoVolumeSeriesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vivsiSeriesId'
--
-- * 'vivsiSeriesBookType'
--
-- * 'vivsiOrderNumber'
--
-- * 'vivsiIssue'
volumeseriesInfoVolumeSeriesItem
    :: VolumeseriesInfoVolumeSeriesItem
volumeseriesInfoVolumeSeriesItem =
  VolumeseriesInfoVolumeSeriesItem'
    { _vivsiSeriesId = Nothing
    , _vivsiSeriesBookType = Nothing
    , _vivsiOrderNumber = Nothing
    , _vivsiIssue = Nothing
    }


-- | The series id.
vivsiSeriesId :: Lens' VolumeseriesInfoVolumeSeriesItem (Maybe Text)
vivsiSeriesId
  = lens _vivsiSeriesId
      (\ s a -> s{_vivsiSeriesId = a})

-- | The book type in the context of series. Examples - Single Issue,
-- Collection Edition, etc.
vivsiSeriesBookType :: Lens' VolumeseriesInfoVolumeSeriesItem (Maybe Text)
vivsiSeriesBookType
  = lens _vivsiSeriesBookType
      (\ s a -> s{_vivsiSeriesBookType = a})

-- | The book order number in the series.
vivsiOrderNumber :: Lens' VolumeseriesInfoVolumeSeriesItem (Maybe Int32)
vivsiOrderNumber
  = lens _vivsiOrderNumber
      (\ s a -> s{_vivsiOrderNumber = a})
      . mapping _Coerce

-- | List of issues. Applicable only for Collection Edition and Omnibus.
vivsiIssue :: Lens' VolumeseriesInfoVolumeSeriesItem [VolumeseriesInfoVolumeSeriesItemIssueItem]
vivsiIssue
  = lens _vivsiIssue (\ s a -> s{_vivsiIssue = a}) .
      _Default
      . _Coerce

instance FromJSON VolumeseriesInfoVolumeSeriesItem
         where
        parseJSON
          = withObject "VolumeseriesInfoVolumeSeriesItem"
              (\ o ->
                 VolumeseriesInfoVolumeSeriesItem' <$>
                   (o .:? "seriesId") <*> (o .:? "seriesBookType") <*>
                     (o .:? "orderNumber")
                     <*> (o .:? "issue" .!= mempty))

instance ToJSON VolumeseriesInfoVolumeSeriesItem
         where
        toJSON VolumeseriesInfoVolumeSeriesItem'{..}
          = object
              (catMaybes
                 [("seriesId" .=) <$> _vivsiSeriesId,
                  ("seriesBookType" .=) <$> _vivsiSeriesBookType,
                  ("orderNumber" .=) <$> _vivsiOrderNumber,
                  ("issue" .=) <$> _vivsiIssue])

-- | User settings in sub-objects, each for different purposes.
--
-- /See:/ 'userSettingsNotesExport' smart constructor.
data UserSettingsNotesExport =
  UserSettingsNotesExport'
    { _usneFolderName :: !(Maybe Text)
    , _usneIsEnabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usneFolderName'
--
-- * 'usneIsEnabled'
userSettingsNotesExport
    :: UserSettingsNotesExport
userSettingsNotesExport =
  UserSettingsNotesExport' {_usneFolderName = Nothing, _usneIsEnabled = Nothing}


usneFolderName :: Lens' UserSettingsNotesExport (Maybe Text)
usneFolderName
  = lens _usneFolderName
      (\ s a -> s{_usneFolderName = a})

usneIsEnabled :: Lens' UserSettingsNotesExport (Maybe Bool)
usneIsEnabled
  = lens _usneIsEnabled
      (\ s a -> s{_usneIsEnabled = a})

instance FromJSON UserSettingsNotesExport where
        parseJSON
          = withObject "UserSettingsNotesExport"
              (\ o ->
                 UserSettingsNotesExport' <$>
                   (o .:? "folderName") <*> (o .:? "isEnabled"))

instance ToJSON UserSettingsNotesExport where
        toJSON UserSettingsNotesExport'{..}
          = object
              (catMaybes
                 [("folderName" .=) <$> _usneFolderName,
                  ("isEnabled" .=) <$> _usneIsEnabled])

--
-- /See:/ 'concurrentAccessRestriction' smart constructor.
data ConcurrentAccessRestriction =
  ConcurrentAccessRestriction'
    { _carMaxConcurrentDevices :: !(Maybe (Textual Int32))
    , _carSignature :: !(Maybe Text)
    , _carTimeWindowSeconds :: !(Maybe (Textual Int32))
    , _carKind :: !(Maybe Text)
    , _carReasonCode :: !(Maybe Text)
    , _carVolumeId :: !(Maybe Text)
    , _carRestricted :: !(Maybe Bool)
    , _carSource :: !(Maybe Text)
    , _carDeviceAllowed :: !(Maybe Bool)
    , _carMessage :: !(Maybe Text)
    , _carNonce :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ConcurrentAccessRestriction'
    { _carMaxConcurrentDevices = Nothing
    , _carSignature = Nothing
    , _carTimeWindowSeconds = Nothing
    , _carKind = Nothing
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
      . mapping _Coerce

-- | Response signature.
carSignature :: Lens' ConcurrentAccessRestriction (Maybe Text)
carSignature
  = lens _carSignature (\ s a -> s{_carSignature = a})

-- | Time in seconds for license auto-expiration.
carTimeWindowSeconds :: Lens' ConcurrentAccessRestriction (Maybe Int32)
carTimeWindowSeconds
  = lens _carTimeWindowSeconds
      (\ s a -> s{_carTimeWindowSeconds = a})
      . mapping _Coerce

-- | Resource type.
carKind :: Lens' ConcurrentAccessRestriction (Maybe Text)
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
                 ConcurrentAccessRestriction' <$>
                   (o .:? "maxConcurrentDevices") <*>
                     (o .:? "signature")
                     <*> (o .:? "timeWindowSeconds")
                     <*> (o .:? "kind")
                     <*> (o .:? "reasonCode")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "restricted")
                     <*> (o .:? "source")
                     <*> (o .:? "deviceAllowed")
                     <*> (o .:? "message")
                     <*> (o .:? "nonce"))

instance ToJSON ConcurrentAccessRestriction where
        toJSON ConcurrentAccessRestriction'{..}
          = object
              (catMaybes
                 [("maxConcurrentDevices" .=) <$>
                    _carMaxConcurrentDevices,
                  ("signature" .=) <$> _carSignature,
                  ("timeWindowSeconds" .=) <$> _carTimeWindowSeconds,
                  ("kind" .=) <$> _carKind,
                  ("reasonCode" .=) <$> _carReasonCode,
                  ("volumeId" .=) <$> _carVolumeId,
                  ("restricted" .=) <$> _carRestricted,
                  ("source" .=) <$> _carSource,
                  ("deviceAllowed" .=) <$> _carDeviceAllowed,
                  ("message" .=) <$> _carMessage,
                  ("nonce" .=) <$> _carNonce])

--
-- /See:/ 'volumes' smart constructor.
data Volumes =
  Volumes'
    { _v1TotalItems :: !(Maybe (Textual Int32))
    , _v1Kind :: !(Maybe Text)
    , _v1Items :: !(Maybe [Volume])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Volumes' {_v1TotalItems = Nothing, _v1Kind = Nothing, _v1Items = Nothing}


-- | Total number of volumes found. This might be greater than the number of
-- volumes returned in this response if results have been paginated.
v1TotalItems :: Lens' Volumes (Maybe Int32)
v1TotalItems
  = lens _v1TotalItems (\ s a -> s{_v1TotalItems = a})
      . mapping _Coerce

-- | Resource type.
v1Kind :: Lens' Volumes (Maybe Text)
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
                 Volumes' <$>
                   (o .:? "totalItems") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Volumes where
        toJSON Volumes'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _v1TotalItems,
                  ("kind" .=) <$> _v1Kind, ("items" .=) <$> _v1Items])

--
-- /See:/ 'userSettingsNotificationMatchMyInterests' smart constructor.
newtype UserSettingsNotificationMatchMyInterests =
  UserSettingsNotificationMatchMyInterests'
    { _usnmmiOptedState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotificationMatchMyInterests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnmmiOptedState'
userSettingsNotificationMatchMyInterests
    :: UserSettingsNotificationMatchMyInterests
userSettingsNotificationMatchMyInterests =
  UserSettingsNotificationMatchMyInterests' {_usnmmiOptedState = Nothing}


usnmmiOptedState :: Lens' UserSettingsNotificationMatchMyInterests (Maybe Text)
usnmmiOptedState
  = lens _usnmmiOptedState
      (\ s a -> s{_usnmmiOptedState = a})

instance FromJSON
           UserSettingsNotificationMatchMyInterests
         where
        parseJSON
          = withObject
              "UserSettingsNotificationMatchMyInterests"
              (\ o ->
                 UserSettingsNotificationMatchMyInterests' <$>
                   (o .:? "opted_state"))

instance ToJSON
           UserSettingsNotificationMatchMyInterests
         where
        toJSON UserSettingsNotificationMatchMyInterests'{..}
          = object
              (catMaybes
                 [("opted_state" .=) <$> _usnmmiOptedState])

--
-- /See:/ 'bookshelves' smart constructor.
data Bookshelves =
  Bookshelves'
    { _booKind :: !(Maybe Text)
    , _booItems :: !(Maybe [Bookshelf])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Bookshelves' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'booKind'
--
-- * 'booItems'
bookshelves
    :: Bookshelves
bookshelves = Bookshelves' {_booKind = Nothing, _booItems = Nothing}


-- | Resource type.
booKind :: Lens' Bookshelves (Maybe Text)
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
                 Bookshelves' <$>
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON Bookshelves where
        toJSON Bookshelves'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _booKind,
                  ("items" .=) <$> _booItems])

-- | The source, url and attribution for this dictionary data.
--
-- /See:/ 'dictlayerDataDictSource' smart constructor.
data DictlayerDataDictSource =
  DictlayerDataDictSource'
    { _dddsURL :: !(Maybe Text)
    , _dddsAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddsURL'
--
-- * 'dddsAttribution'
dictlayerDataDictSource
    :: DictlayerDataDictSource
dictlayerDataDictSource =
  DictlayerDataDictSource' {_dddsURL = Nothing, _dddsAttribution = Nothing}


dddsURL :: Lens' DictlayerDataDictSource (Maybe Text)
dddsURL = lens _dddsURL (\ s a -> s{_dddsURL = a})

dddsAttribution :: Lens' DictlayerDataDictSource (Maybe Text)
dddsAttribution
  = lens _dddsAttribution
      (\ s a -> s{_dddsAttribution = a})

instance FromJSON DictlayerDataDictSource where
        parseJSON
          = withObject "DictlayerDataDictSource"
              (\ o ->
                 DictlayerDataDictSource' <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DictlayerDataDictSource where
        toJSON DictlayerDataDictSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddsURL,
                  ("attribution" .=) <$> _dddsAttribution])

--
-- /See:/ 'downloadAccesses' smart constructor.
data DownloadAccesses =
  DownloadAccesses'
    { _daKind :: !(Maybe Text)
    , _daDownloadAccessList :: !(Maybe [DownloadAccessRestriction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  DownloadAccesses' {_daKind = Nothing, _daDownloadAccessList = Nothing}


-- | Resource type.
daKind :: Lens' DownloadAccesses (Maybe Text)
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
                 DownloadAccesses' <$>
                   (o .:? "kind") <*>
                     (o .:? "downloadAccessList" .!= mempty))

instance ToJSON DownloadAccesses where
        toJSON DownloadAccesses'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _daKind,
                  ("downloadAccessList" .=) <$> _daDownloadAccessList])

--
-- /See:/ 'geolayerDataGeoViewportHi' smart constructor.
data GeolayerDataGeoViewportHi =
  GeolayerDataGeoViewportHi'
    { _gdgvhLatitude :: !(Maybe (Textual Double))
    , _gdgvhLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeolayerDataGeoViewportHi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgvhLatitude'
--
-- * 'gdgvhLongitude'
geolayerDataGeoViewportHi
    :: GeolayerDataGeoViewportHi
geolayerDataGeoViewportHi =
  GeolayerDataGeoViewportHi'
    {_gdgvhLatitude = Nothing, _gdgvhLongitude = Nothing}


gdgvhLatitude :: Lens' GeolayerDataGeoViewportHi (Maybe Double)
gdgvhLatitude
  = lens _gdgvhLatitude
      (\ s a -> s{_gdgvhLatitude = a})
      . mapping _Coerce

gdgvhLongitude :: Lens' GeolayerDataGeoViewportHi (Maybe Double)
gdgvhLongitude
  = lens _gdgvhLongitude
      (\ s a -> s{_gdgvhLongitude = a})
      . mapping _Coerce

instance FromJSON GeolayerDataGeoViewportHi where
        parseJSON
          = withObject "GeolayerDataGeoViewportHi"
              (\ o ->
                 GeolayerDataGeoViewportHi' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeolayerDataGeoViewportHi where
        toJSON GeolayerDataGeoViewportHi'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gdgvhLatitude,
                  ("longitude" .=) <$> _gdgvhLongitude])

-- | General volume information.
--
-- /See:/ 'volumeVolumeInfo' smart constructor.
data VolumeVolumeInfo =
  VolumeVolumeInfo'
    { _vviImageLinks :: !(Maybe VolumeVolumeInfoImageLinks)
    , _vviPanelizationSummary :: !(Maybe VolumeVolumeInfoPanelizationSummary)
    , _vviAverageRating :: !(Maybe (Textual Double))
    , _vviRatingsCount :: !(Maybe (Textual Int32))
    , _vviCanonicalVolumeLink :: !(Maybe Text)
    , _vviReadingModes :: !(Maybe VolumeVolumeInfoReadingModes)
    , _vviIndustryIdentifiers :: !(Maybe [VolumeVolumeInfoIndustryIdentifiersItem])
    , _vviSeriesInfo :: !(Maybe VolumeseriesInfo)
    , _vviPrintedPageCount :: !(Maybe (Textual Int32))
    , _vviMainCategory :: !(Maybe Text)
    , _vviContentVersion :: !(Maybe Text)
    , _vviSamplePageCount :: !(Maybe (Textual Int32))
    , _vviCategories :: !(Maybe [Text])
    , _vviAuthors :: !(Maybe [Text])
    , _vviComicsContent :: !(Maybe Bool)
    , _vviAllowAnonLogging :: !(Maybe Bool)
    , _vviSubtitle :: !(Maybe Text)
    , _vviPublishedDate :: !(Maybe Text)
    , _vviMaturityRating :: !(Maybe Text)
    , _vviPreviewLink :: !(Maybe Text)
    , _vviLanguage :: !(Maybe Text)
    , _vviTitle :: !(Maybe Text)
    , _vviPageCount :: !(Maybe (Textual Int32))
    , _vviDimensions :: !(Maybe VolumeVolumeInfoDimensions)
    , _vviInfoLink :: !(Maybe Text)
    , _vviPublisher :: !(Maybe Text)
    , _vviDescription :: !(Maybe Text)
    , _vviPrintType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vviImageLinks'
--
-- * 'vviPanelizationSummary'
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
-- * 'vviSeriesInfo'
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
-- * 'vviComicsContent'
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
  VolumeVolumeInfo'
    { _vviImageLinks = Nothing
    , _vviPanelizationSummary = Nothing
    , _vviAverageRating = Nothing
    , _vviRatingsCount = Nothing
    , _vviCanonicalVolumeLink = Nothing
    , _vviReadingModes = Nothing
    , _vviIndustryIdentifiers = Nothing
    , _vviSeriesInfo = Nothing
    , _vviPrintedPageCount = Nothing
    , _vviMainCategory = Nothing
    , _vviContentVersion = Nothing
    , _vviSamplePageCount = Nothing
    , _vviCategories = Nothing
    , _vviAuthors = Nothing
    , _vviComicsContent = Nothing
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

-- | A top-level summary of the panelization info in this volume.
vviPanelizationSummary :: Lens' VolumeVolumeInfo (Maybe VolumeVolumeInfoPanelizationSummary)
vviPanelizationSummary
  = lens _vviPanelizationSummary
      (\ s a -> s{_vviPanelizationSummary = a})

-- | The mean review rating for this volume. (min = 1.0, max = 5.0)
vviAverageRating :: Lens' VolumeVolumeInfo (Maybe Double)
vviAverageRating
  = lens _vviAverageRating
      (\ s a -> s{_vviAverageRating = a})
      . mapping _Coerce

-- | The number of review ratings for this volume.
vviRatingsCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviRatingsCount
  = lens _vviRatingsCount
      (\ s a -> s{_vviRatingsCount = a})
      . mapping _Coerce

-- | Canonical URL for a volume. (In LITE projection.)
vviCanonicalVolumeLink :: Lens' VolumeVolumeInfo (Maybe Text)
vviCanonicalVolumeLink
  = lens _vviCanonicalVolumeLink
      (\ s a -> s{_vviCanonicalVolumeLink = a})

-- | The reading modes available for this volume.
vviReadingModes :: Lens' VolumeVolumeInfo (Maybe VolumeVolumeInfoReadingModes)
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

vviSeriesInfo :: Lens' VolumeVolumeInfo (Maybe VolumeseriesInfo)
vviSeriesInfo
  = lens _vviSeriesInfo
      (\ s a -> s{_vviSeriesInfo = a})

-- | Total number of printed pages in generated pdf representation.
vviPrintedPageCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviPrintedPageCount
  = lens _vviPrintedPageCount
      (\ s a -> s{_vviPrintedPageCount = a})
      . mapping _Coerce

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
      . mapping _Coerce

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

-- | Whether the volume has comics content.
vviComicsContent :: Lens' VolumeVolumeInfo (Maybe Bool)
vviComicsContent
  = lens _vviComicsContent
      (\ s a -> s{_vviComicsContent = a})

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
      . mapping _Coerce

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
                 VolumeVolumeInfo' <$>
                   (o .:? "imageLinks") <*>
                     (o .:? "panelizationSummary")
                     <*> (o .:? "averageRating")
                     <*> (o .:? "ratingsCount")
                     <*> (o .:? "canonicalVolumeLink")
                     <*> (o .:? "readingModes")
                     <*> (o .:? "industryIdentifiers" .!= mempty)
                     <*> (o .:? "seriesInfo")
                     <*> (o .:? "printedPageCount")
                     <*> (o .:? "mainCategory")
                     <*> (o .:? "contentVersion")
                     <*> (o .:? "samplePageCount")
                     <*> (o .:? "categories" .!= mempty)
                     <*> (o .:? "authors" .!= mempty)
                     <*> (o .:? "comicsContent")
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
        toJSON VolumeVolumeInfo'{..}
          = object
              (catMaybes
                 [("imageLinks" .=) <$> _vviImageLinks,
                  ("panelizationSummary" .=) <$>
                    _vviPanelizationSummary,
                  ("averageRating" .=) <$> _vviAverageRating,
                  ("ratingsCount" .=) <$> _vviRatingsCount,
                  ("canonicalVolumeLink" .=) <$>
                    _vviCanonicalVolumeLink,
                  ("readingModes" .=) <$> _vviReadingModes,
                  ("industryIdentifiers" .=) <$>
                    _vviIndustryIdentifiers,
                  ("seriesInfo" .=) <$> _vviSeriesInfo,
                  ("printedPageCount" .=) <$> _vviPrintedPageCount,
                  ("mainCategory" .=) <$> _vviMainCategory,
                  ("contentVersion" .=) <$> _vviContentVersion,
                  ("samplePageCount" .=) <$> _vviSamplePageCount,
                  ("categories" .=) <$> _vviCategories,
                  ("authors" .=) <$> _vviAuthors,
                  ("comicsContent" .=) <$> _vviComicsContent,
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
data MetadataItemsItem =
  MetadataItemsItem'
    { _miiSize :: !(Maybe (Textual Int64))
    , _miiVersion :: !(Maybe (Textual Int64))
    , _miiLanguage :: !(Maybe Text)
    , _miiDownloadURL :: !(Maybe Text)
    , _miiEncryptedKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  MetadataItemsItem'
    { _miiSize = Nothing
    , _miiVersion = Nothing
    , _miiLanguage = Nothing
    , _miiDownloadURL = Nothing
    , _miiEncryptedKey = Nothing
    }


miiSize :: Lens' MetadataItemsItem (Maybe Int64)
miiSize
  = lens _miiSize (\ s a -> s{_miiSize = a}) .
      mapping _Coerce

miiVersion :: Lens' MetadataItemsItem (Maybe Int64)
miiVersion
  = lens _miiVersion (\ s a -> s{_miiVersion = a}) .
      mapping _Coerce

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
                 MetadataItemsItem' <$>
                   (o .:? "size") <*> (o .:? "version") <*>
                     (o .:? "language")
                     <*> (o .:? "download_url")
                     <*> (o .:? "encrypted_key"))

instance ToJSON MetadataItemsItem where
        toJSON MetadataItemsItem'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _miiSize,
                  ("version" .=) <$> _miiVersion,
                  ("language" .=) <$> _miiLanguage,
                  ("download_url" .=) <$> _miiDownloadURL,
                  ("encrypted_key" .=) <$> _miiEncryptedKey])

--
-- /See:/ 'dictlayerDataDictWordsItemSensesItemSource' smart constructor.
data DictlayerDataDictWordsItemSensesItemSource =
  DictlayerDataDictWordsItemSensesItemSource'
    { _dddwisisURL :: !(Maybe Text)
    , _dddwisisAttribution :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictlayerDataDictWordsItemSensesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddwisisURL'
--
-- * 'dddwisisAttribution'
dictlayerDataDictWordsItemSensesItemSource
    :: DictlayerDataDictWordsItemSensesItemSource
dictlayerDataDictWordsItemSensesItemSource =
  DictlayerDataDictWordsItemSensesItemSource'
    {_dddwisisURL = Nothing, _dddwisisAttribution = Nothing}


dddwisisURL :: Lens' DictlayerDataDictWordsItemSensesItemSource (Maybe Text)
dddwisisURL
  = lens _dddwisisURL (\ s a -> s{_dddwisisURL = a})

dddwisisAttribution :: Lens' DictlayerDataDictWordsItemSensesItemSource (Maybe Text)
dddwisisAttribution
  = lens _dddwisisAttribution
      (\ s a -> s{_dddwisisAttribution = a})

instance FromJSON
           DictlayerDataDictWordsItemSensesItemSource
         where
        parseJSON
          = withObject
              "DictlayerDataDictWordsItemSensesItemSource"
              (\ o ->
                 DictlayerDataDictWordsItemSensesItemSource' <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
           DictlayerDataDictWordsItemSensesItemSource
         where
        toJSON
          DictlayerDataDictWordsItemSensesItemSource'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dddwisisURL,
                  ("attribution" .=) <$> _dddwisisAttribution])

-- | Offer retail (=discounted) price in Micros
--
-- /See:/ 'volumeSaleInfoOffersItemRetailPrice' smart constructor.
data VolumeSaleInfoOffersItemRetailPrice =
  VolumeSaleInfoOffersItemRetailPrice'
    { _vsioirpCurrencyCode :: !(Maybe Text)
    , _vsioirpAmountInMicros :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeSaleInfoOffersItemRetailPrice'
    {_vsioirpCurrencyCode = Nothing, _vsioirpAmountInMicros = Nothing}


vsioirpCurrencyCode :: Lens' VolumeSaleInfoOffersItemRetailPrice (Maybe Text)
vsioirpCurrencyCode
  = lens _vsioirpCurrencyCode
      (\ s a -> s{_vsioirpCurrencyCode = a})

vsioirpAmountInMicros :: Lens' VolumeSaleInfoOffersItemRetailPrice (Maybe Double)
vsioirpAmountInMicros
  = lens _vsioirpAmountInMicros
      (\ s a -> s{_vsioirpAmountInMicros = a})
      . mapping _Coerce

instance FromJSON VolumeSaleInfoOffersItemRetailPrice
         where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemRetailPrice"
              (\ o ->
                 VolumeSaleInfoOffersItemRetailPrice' <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON VolumeSaleInfoOffersItemRetailPrice
         where
        toJSON VolumeSaleInfoOffersItemRetailPrice'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _vsioirpCurrencyCode,
                  ("amountInMicros" .=) <$> _vsioirpAmountInMicros])

-- | Information on the ability to share with the family.
--
-- /See:/ 'volumeUserInfoFamilySharing' smart constructor.
data VolumeUserInfoFamilySharing =
  VolumeUserInfoFamilySharing'
    { _vuifsFamilyRole :: !(Maybe Text)
    , _vuifsIsSharingAllowed :: !(Maybe Bool)
    , _vuifsIsSharingDisabledByFop :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumeUserInfoFamilySharing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuifsFamilyRole'
--
-- * 'vuifsIsSharingAllowed'
--
-- * 'vuifsIsSharingDisabledByFop'
volumeUserInfoFamilySharing
    :: VolumeUserInfoFamilySharing
volumeUserInfoFamilySharing =
  VolumeUserInfoFamilySharing'
    { _vuifsFamilyRole = Nothing
    , _vuifsIsSharingAllowed = Nothing
    , _vuifsIsSharingDisabledByFop = Nothing
    }


-- | The role of the user in the family.
vuifsFamilyRole :: Lens' VolumeUserInfoFamilySharing (Maybe Text)
vuifsFamilyRole
  = lens _vuifsFamilyRole
      (\ s a -> s{_vuifsFamilyRole = a})

-- | Whether or not this volume can be shared with the family by the user.
-- This includes sharing eligibility of both the volume and the user. If
-- the value is true, the user can initiate a family sharing action.
vuifsIsSharingAllowed :: Lens' VolumeUserInfoFamilySharing (Maybe Bool)
vuifsIsSharingAllowed
  = lens _vuifsIsSharingAllowed
      (\ s a -> s{_vuifsIsSharingAllowed = a})

-- | Whether or not sharing this volume is temporarily disabled due to issues
-- with the Family Wallet.
vuifsIsSharingDisabledByFop :: Lens' VolumeUserInfoFamilySharing (Maybe Bool)
vuifsIsSharingDisabledByFop
  = lens _vuifsIsSharingDisabledByFop
      (\ s a -> s{_vuifsIsSharingDisabledByFop = a})

instance FromJSON VolumeUserInfoFamilySharing where
        parseJSON
          = withObject "VolumeUserInfoFamilySharing"
              (\ o ->
                 VolumeUserInfoFamilySharing' <$>
                   (o .:? "familyRole") <*> (o .:? "isSharingAllowed")
                     <*> (o .:? "isSharingDisabledByFop"))

instance ToJSON VolumeUserInfoFamilySharing where
        toJSON VolumeUserInfoFamilySharing'{..}
          = object
              (catMaybes
                 [("familyRole" .=) <$> _vuifsFamilyRole,
                  ("isSharingAllowed" .=) <$> _vuifsIsSharingAllowed,
                  ("isSharingDisabledByFop" .=) <$>
                    _vuifsIsSharingDisabledByFop])

--
-- /See:/ 'userSettingsNotificationMoreFromSeries' smart constructor.
newtype UserSettingsNotificationMoreFromSeries =
  UserSettingsNotificationMoreFromSeries'
    { _usnmfsOptedState :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSettingsNotificationMoreFromSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usnmfsOptedState'
userSettingsNotificationMoreFromSeries
    :: UserSettingsNotificationMoreFromSeries
userSettingsNotificationMoreFromSeries =
  UserSettingsNotificationMoreFromSeries' {_usnmfsOptedState = Nothing}


usnmfsOptedState :: Lens' UserSettingsNotificationMoreFromSeries (Maybe Text)
usnmfsOptedState
  = lens _usnmfsOptedState
      (\ s a -> s{_usnmfsOptedState = a})

instance FromJSON
           UserSettingsNotificationMoreFromSeries
         where
        parseJSON
          = withObject "UserSettingsNotificationMoreFromSeries"
              (\ o ->
                 UserSettingsNotificationMoreFromSeries' <$>
                   (o .:? "opted_state"))

instance ToJSON
           UserSettingsNotificationMoreFromSeries
         where
        toJSON UserSettingsNotificationMoreFromSeries'{..}
          = object
              (catMaybes
                 [("opted_state" .=) <$> _usnmfsOptedState])

--
-- /See:/ 'volumeVolumeInfoIndustryIdentifiersItem' smart constructor.
data VolumeVolumeInfoIndustryIdentifiersItem =
  VolumeVolumeInfoIndustryIdentifiersItem'
    { _vviiiiIdentifier :: !(Maybe Text)
    , _vviiiiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  VolumeVolumeInfoIndustryIdentifiersItem'
    {_vviiiiIdentifier = Nothing, _vviiiiType = Nothing}


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
           VolumeVolumeInfoIndustryIdentifiersItem
         where
        parseJSON
          = withObject
              "VolumeVolumeInfoIndustryIdentifiersItem"
              (\ o ->
                 VolumeVolumeInfoIndustryIdentifiersItem' <$>
                   (o .:? "identifier") <*> (o .:? "type"))

instance ToJSON
           VolumeVolumeInfoIndustryIdentifiersItem
         where
        toJSON VolumeVolumeInfoIndustryIdentifiersItem'{..}
          = object
              (catMaybes
                 [("identifier" .=) <$> _vviiiiIdentifier,
                  ("type" .=) <$> _vviiiiType])

--
-- /See:/ 'booksAnnotationsRange' smart constructor.
data BooksAnnotationsRange =
  BooksAnnotationsRange'
    { _barStartOffSet :: !(Maybe Text)
    , _barEndOffSet :: !(Maybe Text)
    , _barEndPosition :: !(Maybe Text)
    , _barStartPosition :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooksAnnotationsRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'barStartOffSet'
--
-- * 'barEndOffSet'
--
-- * 'barEndPosition'
--
-- * 'barStartPosition'
booksAnnotationsRange
    :: BooksAnnotationsRange
booksAnnotationsRange =
  BooksAnnotationsRange'
    { _barStartOffSet = Nothing
    , _barEndOffSet = Nothing
    , _barEndPosition = Nothing
    , _barStartPosition = Nothing
    }


-- | The offset from the starting position.
barStartOffSet :: Lens' BooksAnnotationsRange (Maybe Text)
barStartOffSet
  = lens _barStartOffSet
      (\ s a -> s{_barStartOffSet = a})

-- | The offset from the ending position.
barEndOffSet :: Lens' BooksAnnotationsRange (Maybe Text)
barEndOffSet
  = lens _barEndOffSet (\ s a -> s{_barEndOffSet = a})

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
                 BooksAnnotationsRange' <$>
                   (o .:? "startOffset") <*> (o .:? "endOffset") <*>
                     (o .:? "endPosition")
                     <*> (o .:? "startPosition"))

instance ToJSON BooksAnnotationsRange where
        toJSON BooksAnnotationsRange'{..}
          = object
              (catMaybes
                 [("startOffset" .=) <$> _barStartOffSet,
                  ("endOffset" .=) <$> _barEndOffSet,
                  ("endPosition" .=) <$> _barEndPosition,
                  ("startPosition" .=) <$> _barStartPosition])

--
-- /See:/ 'layersummaries' smart constructor.
data Layersummaries =
  Layersummaries'
    { _layTotalItems :: !(Maybe (Textual Int32))
    , _layKind :: !(Maybe Text)
    , _layItems :: !(Maybe [Layersummary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Layersummaries'
    {_layTotalItems = Nothing, _layKind = Nothing, _layItems = Nothing}


-- | The total number of layer summaries found.
layTotalItems :: Lens' Layersummaries (Maybe Int32)
layTotalItems
  = lens _layTotalItems
      (\ s a -> s{_layTotalItems = a})
      . mapping _Coerce

-- | Resource type.
layKind :: Lens' Layersummaries (Maybe Text)
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
                 Layersummaries' <$>
                   (o .:? "totalItems") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Layersummaries where
        toJSON Layersummaries'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _layTotalItems,
                  ("kind" .=) <$> _layKind,
                  ("items" .=) <$> _layItems])
