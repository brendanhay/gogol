{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | Selection ranges sent from the client.
--
-- /See:/ 'annotationClientVersionRanges' smart constructor.
data AnnotationClientVersionRanges = AnnotationClientVersionRanges
    { _aGbImageRange   :: !(Maybe (Maybe BooksAnnotationsRange))
    , _aContentVersion :: !(Maybe Text)
    , _aImageCfiRange  :: !(Maybe (Maybe BooksAnnotationsRange))
    , _aGbTextRange    :: !(Maybe (Maybe BooksAnnotationsRange))
    , _aCfiRange       :: !(Maybe (Maybe BooksAnnotationsRange))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationClientVersionRanges' with the minimum fields required to make a request.
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
annotationClientVersionRanges
    :: AnnotationClientVersionRanges
annotationClientVersionRanges =
    AnnotationClientVersionRanges
    { _aGbImageRange = Nothing
    , _aContentVersion = Nothing
    , _aImageCfiRange = Nothing
    , _aGbTextRange = Nothing
    , _aCfiRange = Nothing
    }

-- | Range in GB image format for this annotation sent by client.
aGbImageRange :: Lens' AnnotationClientVersionRanges (Maybe (Maybe BooksAnnotationsRange))
aGbImageRange
  = lens _aGbImageRange
      (\ s a -> s{_aGbImageRange = a})

-- | Content version the client sent in.
aContentVersion :: Lens' AnnotationClientVersionRanges (Maybe Text)
aContentVersion
  = lens _aContentVersion
      (\ s a -> s{_aContentVersion = a})

-- | Range in image CFI format for this annotation sent by client.
aImageCfiRange :: Lens' AnnotationClientVersionRanges (Maybe (Maybe BooksAnnotationsRange))
aImageCfiRange
  = lens _aImageCfiRange
      (\ s a -> s{_aImageCfiRange = a})

-- | Range in GB text format for this annotation sent by client.
aGbTextRange :: Lens' AnnotationClientVersionRanges (Maybe (Maybe BooksAnnotationsRange))
aGbTextRange
  = lens _aGbTextRange (\ s a -> s{_aGbTextRange = a})

-- | Range in CFI format for this annotation sent by client.
aCfiRange :: Lens' AnnotationClientVersionRanges (Maybe (Maybe BooksAnnotationsRange))
aCfiRange
  = lens _aCfiRange (\ s a -> s{_aCfiRange = a})

-- | Selection ranges for the most recent content version.
--
-- /See:/ 'annotationCurrentVersionRanges' smart constructor.
data AnnotationCurrentVersionRanges = AnnotationCurrentVersionRanges
    { _acvrGbImageRange   :: !(Maybe (Maybe BooksAnnotationsRange))
    , _acvrContentVersion :: !(Maybe Text)
    , _acvrImageCfiRange  :: !(Maybe (Maybe BooksAnnotationsRange))
    , _acvrGbTextRange    :: !(Maybe (Maybe BooksAnnotationsRange))
    , _acvrCfiRange       :: !(Maybe (Maybe BooksAnnotationsRange))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationCurrentVersionRanges' with the minimum fields required to make a request.
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
annotationCurrentVersionRanges
    :: AnnotationCurrentVersionRanges
annotationCurrentVersionRanges =
    AnnotationCurrentVersionRanges
    { _acvrGbImageRange = Nothing
    , _acvrContentVersion = Nothing
    , _acvrImageCfiRange = Nothing
    , _acvrGbTextRange = Nothing
    , _acvrCfiRange = Nothing
    }

-- | Range in GB image format for this annotation for version above.
acvrGbImageRange :: Lens' AnnotationCurrentVersionRanges (Maybe (Maybe BooksAnnotationsRange))
acvrGbImageRange
  = lens _acvrGbImageRange
      (\ s a -> s{_acvrGbImageRange = a})

-- | Content version applicable to ranges below.
acvrContentVersion :: Lens' AnnotationCurrentVersionRanges (Maybe Text)
acvrContentVersion
  = lens _acvrContentVersion
      (\ s a -> s{_acvrContentVersion = a})

-- | Range in image CFI format for this annotation for version above.
acvrImageCfiRange :: Lens' AnnotationCurrentVersionRanges (Maybe (Maybe BooksAnnotationsRange))
acvrImageCfiRange
  = lens _acvrImageCfiRange
      (\ s a -> s{_acvrImageCfiRange = a})

-- | Range in GB text format for this annotation for version above.
acvrGbTextRange :: Lens' AnnotationCurrentVersionRanges (Maybe (Maybe BooksAnnotationsRange))
acvrGbTextRange
  = lens _acvrGbTextRange
      (\ s a -> s{_acvrGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
acvrCfiRange :: Lens' AnnotationCurrentVersionRanges (Maybe (Maybe BooksAnnotationsRange))
acvrCfiRange
  = lens _acvrCfiRange (\ s a -> s{_acvrCfiRange = a})

--
-- /See:/ 'annotationLayerSummary' smart constructor.
data AnnotationLayerSummary = AnnotationLayerSummary
    { _alsLimitType               :: !(Maybe Text)
    , _alsAllowedCharacterCount   :: !(Maybe Int32)
    , _alsRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'annotationdata' smart constructor.
data Annotationdata = Annotationdata
    { _annnEncodedData    :: !(Maybe Word8)
    , _annnKind           :: !Text
    , _annnData           :: !(Maybe (Either Text Int64))
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

annnData :: Lens' Annotationdata (Maybe (Either Text Int64))
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

--
-- /See:/ 'annotations' smart constructor.
data Annotations = Annotations
    { _annTotalItems    :: !(Maybe Int32)
    , _annNextPageToken :: !(Maybe Text)
    , _annKind          :: !Text
    , _annItems         :: !(Maybe [Maybe Annotation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotations' with the minimum fields required to make a request.
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
annotations
    :: Annotations
annotations =
    Annotations
    { _annTotalItems = Nothing
    , _annNextPageToken = Nothing
    , _annKind = "books#annotations"
    , _annItems = Nothing
    }

-- | Total number of annotations found. This may be greater than the number
-- of notes returned in this response if results have been paginated.
annTotalItems :: Lens' Annotations (Maybe Int32)
annTotalItems
  = lens _annTotalItems
      (\ s a -> s{_annTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
annNextPageToken :: Lens' Annotations (Maybe Text)
annNextPageToken
  = lens _annNextPageToken
      (\ s a -> s{_annNextPageToken = a})

-- | Resource type.
annKind :: Lens' Annotations Text
annKind = lens _annKind (\ s a -> s{_annKind = a})

-- | A list of annotations.
annItems :: Lens' Annotations [Maybe Annotation]
annItems
  = lens _annItems (\ s a -> s{_annItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'annotationsSummary' smart constructor.
data AnnotationsSummary = AnnotationsSummary
    { _asKind   :: !Text
    , _asLayers :: !(Maybe [AnnotationsSummaryItemLayers])
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

asLayers :: Lens' AnnotationsSummary [AnnotationsSummaryItemLayers]
asLayers
  = lens _asLayers (\ s a -> s{_asLayers = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'annotationsSummaryItemLayers' smart constructor.
data AnnotationsSummaryItemLayers = AnnotationsSummaryItemLayers
    { _asilLimitType               :: !(Maybe Text)
    , _asilAllowedCharacterCount   :: !(Maybe Int32)
    , _asilUpdated                 :: !(Maybe UTCTime)
    , _asilLayerId                 :: !(Maybe Text)
    , _asilRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSummaryItemLayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asilLimitType'
--
-- * 'asilAllowedCharacterCount'
--
-- * 'asilUpdated'
--
-- * 'asilLayerId'
--
-- * 'asilRemainingCharacterCount'
annotationsSummaryItemLayers
    :: AnnotationsSummaryItemLayers
annotationsSummaryItemLayers =
    AnnotationsSummaryItemLayers
    { _asilLimitType = Nothing
    , _asilAllowedCharacterCount = Nothing
    , _asilUpdated = Nothing
    , _asilLayerId = Nothing
    , _asilRemainingCharacterCount = Nothing
    }

asilLimitType :: Lens' AnnotationsSummaryItemLayers (Maybe Text)
asilLimitType
  = lens _asilLimitType
      (\ s a -> s{_asilLimitType = a})

asilAllowedCharacterCount :: Lens' AnnotationsSummaryItemLayers (Maybe Int32)
asilAllowedCharacterCount
  = lens _asilAllowedCharacterCount
      (\ s a -> s{_asilAllowedCharacterCount = a})

asilUpdated :: Lens' AnnotationsSummaryItemLayers (Maybe UTCTime)
asilUpdated
  = lens _asilUpdated (\ s a -> s{_asilUpdated = a})

asilLayerId :: Lens' AnnotationsSummaryItemLayers (Maybe Text)
asilLayerId
  = lens _asilLayerId (\ s a -> s{_asilLayerId = a})

asilRemainingCharacterCount :: Lens' AnnotationsSummaryItemLayers (Maybe Int32)
asilRemainingCharacterCount
  = lens _asilRemainingCharacterCount
      (\ s a -> s{_asilRemainingCharacterCount = a})

--
-- /See:/ 'annotationsdata' smart constructor.
data Annotationsdata = Annotationsdata
    { _aTotalItems    :: !(Maybe Int32)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Maybe Annotationdata])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotationsdata' with the minimum fields required to make a request.
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
annotationsdata
    :: Annotationsdata
annotationsdata =
    Annotationsdata
    { _aTotalItems = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "books#annotationsdata"
    , _aItems = Nothing
    }

-- | The total number of volume annotations found.
aTotalItems :: Lens' Annotationsdata (Maybe Int32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
aNextPageToken :: Lens' Annotationsdata (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Resource type
aKind :: Lens' Annotationsdata Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | A list of Annotation Data.
aItems :: Lens' Annotationsdata [Maybe Annotationdata]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

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

--
-- /See:/ 'bookshelf' smart constructor.
data Bookshelf = Bookshelf
    { _booAccess             :: !(Maybe Text)
    , _booVolumesLastUpdated :: !(Maybe UTCTime)
    , _booKind               :: !Text
    , _booCreated            :: !(Maybe UTCTime)
    , _booVolumeCount        :: !(Maybe Int32)
    , _booSelfLink           :: !(Maybe Text)
    , _booId                 :: !(Maybe Int32)
    , _booUpdated            :: !(Maybe UTCTime)
    , _booTitle              :: !(Maybe Text)
    , _booDescription        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Bookshelf' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'booAccess'
--
-- * 'booVolumesLastUpdated'
--
-- * 'booKind'
--
-- * 'booCreated'
--
-- * 'booVolumeCount'
--
-- * 'booSelfLink'
--
-- * 'booId'
--
-- * 'booUpdated'
--
-- * 'booTitle'
--
-- * 'booDescription'
bookshelf
    :: Bookshelf
bookshelf =
    Bookshelf
    { _booAccess = Nothing
    , _booVolumesLastUpdated = Nothing
    , _booKind = "books#bookshelf"
    , _booCreated = Nothing
    , _booVolumeCount = Nothing
    , _booSelfLink = Nothing
    , _booId = Nothing
    , _booUpdated = Nothing
    , _booTitle = Nothing
    , _booDescription = Nothing
    }

-- | Whether this bookshelf is PUBLIC or PRIVATE.
booAccess :: Lens' Bookshelf (Maybe Text)
booAccess
  = lens _booAccess (\ s a -> s{_booAccess = a})

-- | Last time a volume was added or removed from this bookshelf (formatted
-- UTC timestamp with millisecond resolution).
booVolumesLastUpdated :: Lens' Bookshelf (Maybe UTCTime)
booVolumesLastUpdated
  = lens _booVolumesLastUpdated
      (\ s a -> s{_booVolumesLastUpdated = a})

-- | Resource type for bookshelf metadata.
booKind :: Lens' Bookshelf Text
booKind = lens _booKind (\ s a -> s{_booKind = a})

-- | Created time for this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
booCreated :: Lens' Bookshelf (Maybe UTCTime)
booCreated
  = lens _booCreated (\ s a -> s{_booCreated = a})

-- | Number of volumes in this bookshelf.
booVolumeCount :: Lens' Bookshelf (Maybe Int32)
booVolumeCount
  = lens _booVolumeCount
      (\ s a -> s{_booVolumeCount = a})

-- | URL to this resource.
booSelfLink :: Lens' Bookshelf (Maybe Text)
booSelfLink
  = lens _booSelfLink (\ s a -> s{_booSelfLink = a})

-- | Id of this bookshelf, only unique by user.
booId :: Lens' Bookshelf (Maybe Int32)
booId = lens _booId (\ s a -> s{_booId = a})

-- | Last modified time of this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
booUpdated :: Lens' Bookshelf (Maybe UTCTime)
booUpdated
  = lens _booUpdated (\ s a -> s{_booUpdated = a})

-- | Title of this bookshelf.
booTitle :: Lens' Bookshelf (Maybe Text)
booTitle = lens _booTitle (\ s a -> s{_booTitle = a})

-- | Description of this bookshelf.
booDescription :: Lens' Bookshelf (Maybe Text)
booDescription
  = lens _booDescription
      (\ s a -> s{_booDescription = a})

--
-- /See:/ 'bookshelves' smart constructor.
data Bookshelves = Bookshelves
    { _bKind  :: !Text
    , _bItems :: !(Maybe [Maybe Bookshelf])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Bookshelves' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bKind'
--
-- * 'bItems'
bookshelves
    :: Bookshelves
bookshelves =
    Bookshelves
    { _bKind = "books#bookshelves"
    , _bItems = Nothing
    }

-- | Resource type.
bKind :: Lens' Bookshelves Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | A list of bookshelves.
bItems :: Lens' Bookshelves [Maybe Bookshelf]
bItems
  = lens _bItems (\ s a -> s{_bItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'category' smart constructor.
data Category = Category
    { _cKind  :: !Text
    , _cItems :: !(Maybe [CategoryItemItems])
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
cItems :: Lens' Category [CategoryItemItems]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'categoryItemItems' smart constructor.
data CategoryItemItems = CategoryItemItems
    { _ciiName       :: !(Maybe Text)
    , _ciiCategoryId :: !(Maybe Text)
    , _ciiBadgeUrl   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CategoryItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiName'
--
-- * 'ciiCategoryId'
--
-- * 'ciiBadgeUrl'
categoryItemItems
    :: CategoryItemItems
categoryItemItems =
    CategoryItemItems
    { _ciiName = Nothing
    , _ciiCategoryId = Nothing
    , _ciiBadgeUrl = Nothing
    }

ciiName :: Lens' CategoryItemItems (Maybe Text)
ciiName = lens _ciiName (\ s a -> s{_ciiName = a})

ciiCategoryId :: Lens' CategoryItemItems (Maybe Text)
ciiCategoryId
  = lens _ciiCategoryId
      (\ s a -> s{_ciiCategoryId = a})

ciiBadgeUrl :: Lens' CategoryItemItems (Maybe Text)
ciiBadgeUrl
  = lens _ciiBadgeUrl (\ s a -> s{_ciiBadgeUrl = a})

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

--
-- /See:/ 'dictlayerdataCommon' smart constructor.
newtype DictlayerdataCommon = DictlayerdataCommon
    { _dcTitle :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'dictlayerdataDict' smart constructor.
data DictlayerdataDict = DictlayerdataDict
    { _ddSource :: !(Maybe DictlayerdataSourceDict)
    , _ddWords  :: !(Maybe [DictlayerdataItemWordsDict])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ddSource :: Lens' DictlayerdataDict (Maybe DictlayerdataSourceDict)
ddSource = lens _ddSource (\ s a -> s{_ddSource = a})

ddWords :: Lens' DictlayerdataDict [DictlayerdataItemWordsDict]
ddWords
  = lens _ddWords (\ s a -> s{_ddWords = a}) . _Default
      . _Coerce

--
-- /See:/ 'dictlayerdataItemConjugationsItemSensesItemWordsDict' smart constructor.
data DictlayerdataItemConjugationsItemSensesItemWordsDict = DictlayerdataItemConjugationsItemSensesItemWordsDict
    { _dicisiwdValue :: !(Maybe Text)
    , _dicisiwdType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemConjugationsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dicisiwdValue'
--
-- * 'dicisiwdType'
dictlayerdataItemConjugationsItemSensesItemWordsDict
    :: DictlayerdataItemConjugationsItemSensesItemWordsDict
dictlayerdataItemConjugationsItemSensesItemWordsDict =
    DictlayerdataItemConjugationsItemSensesItemWordsDict
    { _dicisiwdValue = Nothing
    , _dicisiwdType = Nothing
    }

dicisiwdValue :: Lens' DictlayerdataItemConjugationsItemSensesItemWordsDict (Maybe Text)
dicisiwdValue
  = lens _dicisiwdValue
      (\ s a -> s{_dicisiwdValue = a})

dicisiwdType :: Lens' DictlayerdataItemConjugationsItemSensesItemWordsDict (Maybe Text)
dicisiwdType
  = lens _dicisiwdType (\ s a -> s{_dicisiwdType = a})

--
-- /See:/ 'dictlayerdataItemDefinitionsItemSensesItemWordsDict' smart constructor.
data DictlayerdataItemDefinitionsItemSensesItemWordsDict = DictlayerdataItemDefinitionsItemSensesItemWordsDict
    { _didisiwdDefinition :: !(Maybe Text)
    , _didisiwdExamples   :: !(Maybe [DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemDefinitionsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didisiwdDefinition'
--
-- * 'didisiwdExamples'
dictlayerdataItemDefinitionsItemSensesItemWordsDict
    :: DictlayerdataItemDefinitionsItemSensesItemWordsDict
dictlayerdataItemDefinitionsItemSensesItemWordsDict =
    DictlayerdataItemDefinitionsItemSensesItemWordsDict
    { _didisiwdDefinition = Nothing
    , _didisiwdExamples = Nothing
    }

didisiwdDefinition :: Lens' DictlayerdataItemDefinitionsItemSensesItemWordsDict (Maybe Text)
didisiwdDefinition
  = lens _didisiwdDefinition
      (\ s a -> s{_didisiwdDefinition = a})

didisiwdExamples :: Lens' DictlayerdataItemDefinitionsItemSensesItemWordsDict [DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict]
didisiwdExamples
  = lens _didisiwdExamples
      (\ s a -> s{_didisiwdExamples = a})
      . _Default
      . _Coerce

--
-- /See:/ 'dictlayerdataItemDerivativesItemWordsDict' smart constructor.
data DictlayerdataItemDerivativesItemWordsDict = DictlayerdataItemDerivativesItemWordsDict
    { _didiwdText   :: !(Maybe Text)
    , _didiwdSource :: !(Maybe DictlayerdataSourceItemDerivativesItemWordsDict)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemDerivativesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didiwdText'
--
-- * 'didiwdSource'
dictlayerdataItemDerivativesItemWordsDict
    :: DictlayerdataItemDerivativesItemWordsDict
dictlayerdataItemDerivativesItemWordsDict =
    DictlayerdataItemDerivativesItemWordsDict
    { _didiwdText = Nothing
    , _didiwdSource = Nothing
    }

didiwdText :: Lens' DictlayerdataItemDerivativesItemWordsDict (Maybe Text)
didiwdText
  = lens _didiwdText (\ s a -> s{_didiwdText = a})

didiwdSource :: Lens' DictlayerdataItemDerivativesItemWordsDict (Maybe DictlayerdataSourceItemDerivativesItemWordsDict)
didiwdSource
  = lens _didiwdSource (\ s a -> s{_didiwdSource = a})

--
-- /See:/ 'dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict' smart constructor.
data DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict = DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    { _dieidisiwdText   :: !(Maybe Text)
    , _dieidisiwdSource :: !(Maybe DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dieidisiwdText'
--
-- * 'dieidisiwdSource'
dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    :: DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict =
    DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    { _dieidisiwdText = Nothing
    , _dieidisiwdSource = Nothing
    }

dieidisiwdText :: Lens' DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict (Maybe Text)
dieidisiwdText
  = lens _dieidisiwdText
      (\ s a -> s{_dieidisiwdText = a})

dieidisiwdSource :: Lens' DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict (Maybe DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict)
dieidisiwdSource
  = lens _dieidisiwdSource
      (\ s a -> s{_dieidisiwdSource = a})

--
-- /See:/ 'dictlayerdataItemExamplesItemWordsDict' smart constructor.
data DictlayerdataItemExamplesItemWordsDict = DictlayerdataItemExamplesItemWordsDict
    { _dieiwdText   :: !(Maybe Text)
    , _dieiwdSource :: !(Maybe DictlayerdataSourceItemExamplesItemWordsDict)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemExamplesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dieiwdText'
--
-- * 'dieiwdSource'
dictlayerdataItemExamplesItemWordsDict
    :: DictlayerdataItemExamplesItemWordsDict
dictlayerdataItemExamplesItemWordsDict =
    DictlayerdataItemExamplesItemWordsDict
    { _dieiwdText = Nothing
    , _dieiwdSource = Nothing
    }

dieiwdText :: Lens' DictlayerdataItemExamplesItemWordsDict (Maybe Text)
dieiwdText
  = lens _dieiwdText (\ s a -> s{_dieiwdText = a})

dieiwdSource :: Lens' DictlayerdataItemExamplesItemWordsDict (Maybe DictlayerdataSourceItemExamplesItemWordsDict)
dieiwdSource
  = lens _dieiwdSource (\ s a -> s{_dieiwdSource = a})

--
-- /See:/ 'dictlayerdataItemSensesItemWordsDict' smart constructor.
data DictlayerdataItemSensesItemWordsDict = DictlayerdataItemSensesItemWordsDict
    { _disiwdPronunciationUrl :: !(Maybe Text)
    , _disiwdConjugations     :: !(Maybe [DictlayerdataItemConjugationsItemSensesItemWordsDict])
    , _disiwdPronunciation    :: !(Maybe Text)
    , _disiwdSynonyms         :: !(Maybe [DictlayerdataItemSynonymsItemSensesItemWordsDict])
    , _disiwdSource           :: !(Maybe DictlayerdataSourceItemSensesItemWordsDict)
    , _disiwdPartOfSpeech     :: !(Maybe Text)
    , _disiwdDefinitions      :: !(Maybe [DictlayerdataItemDefinitionsItemSensesItemWordsDict])
    , _disiwdSyllabification  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disiwdPronunciationUrl'
--
-- * 'disiwdConjugations'
--
-- * 'disiwdPronunciation'
--
-- * 'disiwdSynonyms'
--
-- * 'disiwdSource'
--
-- * 'disiwdPartOfSpeech'
--
-- * 'disiwdDefinitions'
--
-- * 'disiwdSyllabification'
dictlayerdataItemSensesItemWordsDict
    :: DictlayerdataItemSensesItemWordsDict
dictlayerdataItemSensesItemWordsDict =
    DictlayerdataItemSensesItemWordsDict
    { _disiwdPronunciationUrl = Nothing
    , _disiwdConjugations = Nothing
    , _disiwdPronunciation = Nothing
    , _disiwdSynonyms = Nothing
    , _disiwdSource = Nothing
    , _disiwdPartOfSpeech = Nothing
    , _disiwdDefinitions = Nothing
    , _disiwdSyllabification = Nothing
    }

disiwdPronunciationUrl :: Lens' DictlayerdataItemSensesItemWordsDict (Maybe Text)
disiwdPronunciationUrl
  = lens _disiwdPronunciationUrl
      (\ s a -> s{_disiwdPronunciationUrl = a})

disiwdConjugations :: Lens' DictlayerdataItemSensesItemWordsDict [DictlayerdataItemConjugationsItemSensesItemWordsDict]
disiwdConjugations
  = lens _disiwdConjugations
      (\ s a -> s{_disiwdConjugations = a})
      . _Default
      . _Coerce

disiwdPronunciation :: Lens' DictlayerdataItemSensesItemWordsDict (Maybe Text)
disiwdPronunciation
  = lens _disiwdPronunciation
      (\ s a -> s{_disiwdPronunciation = a})

disiwdSynonyms :: Lens' DictlayerdataItemSensesItemWordsDict [DictlayerdataItemSynonymsItemSensesItemWordsDict]
disiwdSynonyms
  = lens _disiwdSynonyms
      (\ s a -> s{_disiwdSynonyms = a})
      . _Default
      . _Coerce

disiwdSource :: Lens' DictlayerdataItemSensesItemWordsDict (Maybe DictlayerdataSourceItemSensesItemWordsDict)
disiwdSource
  = lens _disiwdSource (\ s a -> s{_disiwdSource = a})

disiwdPartOfSpeech :: Lens' DictlayerdataItemSensesItemWordsDict (Maybe Text)
disiwdPartOfSpeech
  = lens _disiwdPartOfSpeech
      (\ s a -> s{_disiwdPartOfSpeech = a})

disiwdDefinitions :: Lens' DictlayerdataItemSensesItemWordsDict [DictlayerdataItemDefinitionsItemSensesItemWordsDict]
disiwdDefinitions
  = lens _disiwdDefinitions
      (\ s a -> s{_disiwdDefinitions = a})
      . _Default
      . _Coerce

disiwdSyllabification :: Lens' DictlayerdataItemSensesItemWordsDict (Maybe Text)
disiwdSyllabification
  = lens _disiwdSyllabification
      (\ s a -> s{_disiwdSyllabification = a})

--
-- /See:/ 'dictlayerdataItemSynonymsItemSensesItemWordsDict' smart constructor.
data DictlayerdataItemSynonymsItemSensesItemWordsDict = DictlayerdataItemSynonymsItemSensesItemWordsDict
    { _disisiwdText   :: !(Maybe Text)
    , _disisiwdSource :: !(Maybe DictlayerdataSourceItemSynonymsItemSensesItemWordsDict)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemSynonymsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disisiwdText'
--
-- * 'disisiwdSource'
dictlayerdataItemSynonymsItemSensesItemWordsDict
    :: DictlayerdataItemSynonymsItemSensesItemWordsDict
dictlayerdataItemSynonymsItemSensesItemWordsDict =
    DictlayerdataItemSynonymsItemSensesItemWordsDict
    { _disisiwdText = Nothing
    , _disisiwdSource = Nothing
    }

disisiwdText :: Lens' DictlayerdataItemSynonymsItemSensesItemWordsDict (Maybe Text)
disisiwdText
  = lens _disisiwdText (\ s a -> s{_disisiwdText = a})

disisiwdSource :: Lens' DictlayerdataItemSynonymsItemSensesItemWordsDict (Maybe DictlayerdataSourceItemSynonymsItemSensesItemWordsDict)
disisiwdSource
  = lens _disisiwdSource
      (\ s a -> s{_disisiwdSource = a})

--
-- /See:/ 'dictlayerdataItemWordsDict' smart constructor.
data DictlayerdataItemWordsDict = DictlayerdataItemWordsDict
    { _diwdSenses      :: !(Maybe [DictlayerdataItemSensesItemWordsDict])
    , _diwdSource      :: !(Maybe DictlayerdataSourceItemWordsDict)
    , _diwdDerivatives :: !(Maybe [DictlayerdataItemDerivativesItemWordsDict])
    , _diwdExamples    :: !(Maybe [DictlayerdataItemExamplesItemWordsDict])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diwdSenses'
--
-- * 'diwdSource'
--
-- * 'diwdDerivatives'
--
-- * 'diwdExamples'
dictlayerdataItemWordsDict
    :: DictlayerdataItemWordsDict
dictlayerdataItemWordsDict =
    DictlayerdataItemWordsDict
    { _diwdSenses = Nothing
    , _diwdSource = Nothing
    , _diwdDerivatives = Nothing
    , _diwdExamples = Nothing
    }

diwdSenses :: Lens' DictlayerdataItemWordsDict [DictlayerdataItemSensesItemWordsDict]
diwdSenses
  = lens _diwdSenses (\ s a -> s{_diwdSenses = a}) .
      _Default
      . _Coerce

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
diwdSource :: Lens' DictlayerdataItemWordsDict (Maybe DictlayerdataSourceItemWordsDict)
diwdSource
  = lens _diwdSource (\ s a -> s{_diwdSource = a})

diwdDerivatives :: Lens' DictlayerdataItemWordsDict [DictlayerdataItemDerivativesItemWordsDict]
diwdDerivatives
  = lens _diwdDerivatives
      (\ s a -> s{_diwdDerivatives = a})
      . _Default
      . _Coerce

diwdExamples :: Lens' DictlayerdataItemWordsDict [DictlayerdataItemExamplesItemWordsDict]
diwdExamples
  = lens _diwdExamples (\ s a -> s{_diwdExamples = a})
      . _Default
      . _Coerce

-- | The source, url and attribution for this dictionary data.
--
-- /See:/ 'dictlayerdataSourceDict' smart constructor.
data DictlayerdataSourceDict = DictlayerdataSourceDict
    { _dsdUrl         :: !(Maybe Text)
    , _dsdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdUrl'
--
-- * 'dsdAttribution'
dictlayerdataSourceDict
    :: DictlayerdataSourceDict
dictlayerdataSourceDict =
    DictlayerdataSourceDict
    { _dsdUrl = Nothing
    , _dsdAttribution = Nothing
    }

dsdUrl :: Lens' DictlayerdataSourceDict (Maybe Text)
dsdUrl = lens _dsdUrl (\ s a -> s{_dsdUrl = a})

dsdAttribution :: Lens' DictlayerdataSourceDict (Maybe Text)
dsdAttribution
  = lens _dsdAttribution
      (\ s a -> s{_dsdAttribution = a})

--
-- /See:/ 'dictlayerdataSourceItemDerivativesItemWordsDict' smart constructor.
data DictlayerdataSourceItemDerivativesItemWordsDict = DictlayerdataSourceItemDerivativesItemWordsDict
    { _dsidiwdUrl         :: !(Maybe Text)
    , _dsidiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemDerivativesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsidiwdUrl'
--
-- * 'dsidiwdAttribution'
dictlayerdataSourceItemDerivativesItemWordsDict
    :: DictlayerdataSourceItemDerivativesItemWordsDict
dictlayerdataSourceItemDerivativesItemWordsDict =
    DictlayerdataSourceItemDerivativesItemWordsDict
    { _dsidiwdUrl = Nothing
    , _dsidiwdAttribution = Nothing
    }

dsidiwdUrl :: Lens' DictlayerdataSourceItemDerivativesItemWordsDict (Maybe Text)
dsidiwdUrl
  = lens _dsidiwdUrl (\ s a -> s{_dsidiwdUrl = a})

dsidiwdAttribution :: Lens' DictlayerdataSourceItemDerivativesItemWordsDict (Maybe Text)
dsidiwdAttribution
  = lens _dsidiwdAttribution
      (\ s a -> s{_dsidiwdAttribution = a})

--
-- /See:/ 'dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict' smart constructor.
data DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict = DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    { _dsieidisiwdUrl         :: !(Maybe Text)
    , _dsieidisiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsieidisiwdUrl'
--
-- * 'dsieidisiwdAttribution'
dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    :: DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict =
    DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    { _dsieidisiwdUrl = Nothing
    , _dsieidisiwdAttribution = Nothing
    }

dsieidisiwdUrl :: Lens' DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict (Maybe Text)
dsieidisiwdUrl
  = lens _dsieidisiwdUrl
      (\ s a -> s{_dsieidisiwdUrl = a})

dsieidisiwdAttribution :: Lens' DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict (Maybe Text)
dsieidisiwdAttribution
  = lens _dsieidisiwdAttribution
      (\ s a -> s{_dsieidisiwdAttribution = a})

--
-- /See:/ 'dictlayerdataSourceItemExamplesItemWordsDict' smart constructor.
data DictlayerdataSourceItemExamplesItemWordsDict = DictlayerdataSourceItemExamplesItemWordsDict
    { _dsieiwdUrl         :: !(Maybe Text)
    , _dsieiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemExamplesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsieiwdUrl'
--
-- * 'dsieiwdAttribution'
dictlayerdataSourceItemExamplesItemWordsDict
    :: DictlayerdataSourceItemExamplesItemWordsDict
dictlayerdataSourceItemExamplesItemWordsDict =
    DictlayerdataSourceItemExamplesItemWordsDict
    { _dsieiwdUrl = Nothing
    , _dsieiwdAttribution = Nothing
    }

dsieiwdUrl :: Lens' DictlayerdataSourceItemExamplesItemWordsDict (Maybe Text)
dsieiwdUrl
  = lens _dsieiwdUrl (\ s a -> s{_dsieiwdUrl = a})

dsieiwdAttribution :: Lens' DictlayerdataSourceItemExamplesItemWordsDict (Maybe Text)
dsieiwdAttribution
  = lens _dsieiwdAttribution
      (\ s a -> s{_dsieiwdAttribution = a})

--
-- /See:/ 'dictlayerdataSourceItemSensesItemWordsDict' smart constructor.
data DictlayerdataSourceItemSensesItemWordsDict = DictlayerdataSourceItemSensesItemWordsDict
    { _dsisiwdUrl         :: !(Maybe Text)
    , _dsisiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsisiwdUrl'
--
-- * 'dsisiwdAttribution'
dictlayerdataSourceItemSensesItemWordsDict
    :: DictlayerdataSourceItemSensesItemWordsDict
dictlayerdataSourceItemSensesItemWordsDict =
    DictlayerdataSourceItemSensesItemWordsDict
    { _dsisiwdUrl = Nothing
    , _dsisiwdAttribution = Nothing
    }

dsisiwdUrl :: Lens' DictlayerdataSourceItemSensesItemWordsDict (Maybe Text)
dsisiwdUrl
  = lens _dsisiwdUrl (\ s a -> s{_dsisiwdUrl = a})

dsisiwdAttribution :: Lens' DictlayerdataSourceItemSensesItemWordsDict (Maybe Text)
dsisiwdAttribution
  = lens _dsisiwdAttribution
      (\ s a -> s{_dsisiwdAttribution = a})

--
-- /See:/ 'dictlayerdataSourceItemSynonymsItemSensesItemWordsDict' smart constructor.
data DictlayerdataSourceItemSynonymsItemSensesItemWordsDict = DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    { _dsisisiwdUrl         :: !(Maybe Text)
    , _dsisisiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemSynonymsItemSensesItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsisisiwdUrl'
--
-- * 'dsisisiwdAttribution'
dictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    :: DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
dictlayerdataSourceItemSynonymsItemSensesItemWordsDict =
    DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    { _dsisisiwdUrl = Nothing
    , _dsisisiwdAttribution = Nothing
    }

dsisisiwdUrl :: Lens' DictlayerdataSourceItemSynonymsItemSensesItemWordsDict (Maybe Text)
dsisisiwdUrl
  = lens _dsisisiwdUrl (\ s a -> s{_dsisisiwdUrl = a})

dsisisiwdAttribution :: Lens' DictlayerdataSourceItemSynonymsItemSensesItemWordsDict (Maybe Text)
dsisisiwdAttribution
  = lens _dsisisiwdAttribution
      (\ s a -> s{_dsisisiwdAttribution = a})

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
--
-- /See:/ 'dictlayerdataSourceItemWordsDict' smart constructor.
data DictlayerdataSourceItemWordsDict = DictlayerdataSourceItemWordsDict
    { _dsiwdUrl         :: !(Maybe Text)
    , _dsiwdAttribution :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataSourceItemWordsDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiwdUrl'
--
-- * 'dsiwdAttribution'
dictlayerdataSourceItemWordsDict
    :: DictlayerdataSourceItemWordsDict
dictlayerdataSourceItemWordsDict =
    DictlayerdataSourceItemWordsDict
    { _dsiwdUrl = Nothing
    , _dsiwdAttribution = Nothing
    }

dsiwdUrl :: Lens' DictlayerdataSourceItemWordsDict (Maybe Text)
dsiwdUrl = lens _dsiwdUrl (\ s a -> s{_dsiwdUrl = a})

dsiwdAttribution :: Lens' DictlayerdataSourceItemWordsDict (Maybe Text)
dsiwdAttribution
  = lens _dsiwdAttribution
      (\ s a -> s{_dsiwdAttribution = a})

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

--
-- /See:/ 'geolayerdataCommon' smart constructor.
data GeolayerdataCommon = GeolayerdataCommon
    { _gcSnippet         :: !(Maybe Text)
    , _gcSnippetUrl      :: !(Maybe Text)
    , _gcLang            :: !(Maybe Text)
    , _gcTitle           :: !(Maybe Text)
    , _gcPreviewImageUrl :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataCommon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcSnippet'
--
-- * 'gcSnippetUrl'
--
-- * 'gcLang'
--
-- * 'gcTitle'
--
-- * 'gcPreviewImageUrl'
geolayerdataCommon
    :: GeolayerdataCommon
geolayerdataCommon =
    GeolayerdataCommon
    { _gcSnippet = Nothing
    , _gcSnippetUrl = Nothing
    , _gcLang = Nothing
    , _gcTitle = Nothing
    , _gcPreviewImageUrl = Nothing
    }

-- | The description for this location.
gcSnippet :: Lens' GeolayerdataCommon (Maybe Text)
gcSnippet
  = lens _gcSnippet (\ s a -> s{_gcSnippet = a})

-- | The URL for information for this location. Ex: wikipedia link.
gcSnippetUrl :: Lens' GeolayerdataCommon (Maybe Text)
gcSnippetUrl
  = lens _gcSnippetUrl (\ s a -> s{_gcSnippetUrl = a})

-- | The language of the information url and description.
gcLang :: Lens' GeolayerdataCommon (Maybe Text)
gcLang = lens _gcLang (\ s a -> s{_gcLang = a})

-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
gcTitle :: Lens' GeolayerdataCommon (Maybe Text)
gcTitle = lens _gcTitle (\ s a -> s{_gcTitle = a})

-- | The URL for the preview image information.
gcPreviewImageUrl :: Lens' GeolayerdataCommon (Maybe Text)
gcPreviewImageUrl
  = lens _gcPreviewImageUrl
      (\ s a -> s{_gcPreviewImageUrl = a})

--
-- /See:/ 'geolayerdataGeo' smart constructor.
data GeolayerdataGeo = GeolayerdataGeo
    { _ggMapType     :: !(Maybe Text)
    , _ggCachePolicy :: !(Maybe Text)
    , _ggViewport    :: !(Maybe GeolayerdataViewportGeo)
    , _ggBoundary    :: !(Maybe [[GeolayerdataItemItemBoundaryGeo]])
    , _ggLatitude    :: !(Maybe Double)
    , _ggZoom        :: !(Maybe Int32)
    , _ggCountryCode :: !(Maybe Text)
    , _ggLongitude   :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ggViewport :: Lens' GeolayerdataGeo (Maybe GeolayerdataViewportGeo)
ggViewport
  = lens _ggViewport (\ s a -> s{_ggViewport = a})

-- | The boundary of the location as a set of loops containing pairs of
-- latitude, longitude coordinates.
ggBoundary :: Lens' GeolayerdataGeo [[GeolayerdataItemItemBoundaryGeo]]
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

--
-- /See:/ 'geolayerdataHiViewportGeo' smart constructor.
data GeolayerdataHiViewportGeo = GeolayerdataHiViewportGeo
    { _ghvgLatitude  :: !(Maybe Double)
    , _ghvgLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataHiViewportGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghvgLatitude'
--
-- * 'ghvgLongitude'
geolayerdataHiViewportGeo
    :: GeolayerdataHiViewportGeo
geolayerdataHiViewportGeo =
    GeolayerdataHiViewportGeo
    { _ghvgLatitude = Nothing
    , _ghvgLongitude = Nothing
    }

ghvgLatitude :: Lens' GeolayerdataHiViewportGeo (Maybe Double)
ghvgLatitude
  = lens _ghvgLatitude (\ s a -> s{_ghvgLatitude = a})

ghvgLongitude :: Lens' GeolayerdataHiViewportGeo (Maybe Double)
ghvgLongitude
  = lens _ghvgLongitude
      (\ s a -> s{_ghvgLongitude = a})

--
-- /See:/ 'geolayerdataItemItemBoundaryGeo' smart constructor.
data GeolayerdataItemItemBoundaryGeo = GeolayerdataItemItemBoundaryGeo
    { _giibgLatitude  :: !(Maybe Word32)
    , _giibgLongitude :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataItemItemBoundaryGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giibgLatitude'
--
-- * 'giibgLongitude'
geolayerdataItemItemBoundaryGeo
    :: GeolayerdataItemItemBoundaryGeo
geolayerdataItemItemBoundaryGeo =
    GeolayerdataItemItemBoundaryGeo
    { _giibgLatitude = Nothing
    , _giibgLongitude = Nothing
    }

giibgLatitude :: Lens' GeolayerdataItemItemBoundaryGeo (Maybe Word32)
giibgLatitude
  = lens _giibgLatitude
      (\ s a -> s{_giibgLatitude = a})

giibgLongitude :: Lens' GeolayerdataItemItemBoundaryGeo (Maybe Word32)
giibgLongitude
  = lens _giibgLongitude
      (\ s a -> s{_giibgLongitude = a})

--
-- /See:/ 'geolayerdataLoViewportGeo' smart constructor.
data GeolayerdataLoViewportGeo = GeolayerdataLoViewportGeo
    { _glvgLatitude  :: !(Maybe Double)
    , _glvgLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataLoViewportGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glvgLatitude'
--
-- * 'glvgLongitude'
geolayerdataLoViewportGeo
    :: GeolayerdataLoViewportGeo
geolayerdataLoViewportGeo =
    GeolayerdataLoViewportGeo
    { _glvgLatitude = Nothing
    , _glvgLongitude = Nothing
    }

glvgLatitude :: Lens' GeolayerdataLoViewportGeo (Maybe Double)
glvgLatitude
  = lens _glvgLatitude (\ s a -> s{_glvgLatitude = a})

glvgLongitude :: Lens' GeolayerdataLoViewportGeo (Maybe Double)
glvgLongitude
  = lens _glvgLongitude
      (\ s a -> s{_glvgLongitude = a})

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
--
-- /See:/ 'geolayerdataViewportGeo' smart constructor.
data GeolayerdataViewportGeo = GeolayerdataViewportGeo
    { _gvgHi :: !(Maybe GeolayerdataHiViewportGeo)
    , _gvgLo :: !(Maybe GeolayerdataLoViewportGeo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataViewportGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvgHi'
--
-- * 'gvgLo'
geolayerdataViewportGeo
    :: GeolayerdataViewportGeo
geolayerdataViewportGeo =
    GeolayerdataViewportGeo
    { _gvgHi = Nothing
    , _gvgLo = Nothing
    }

gvgHi :: Lens' GeolayerdataViewportGeo (Maybe GeolayerdataHiViewportGeo)
gvgHi = lens _gvgHi (\ s a -> s{_gvgHi = a})

gvgLo :: Lens' GeolayerdataViewportGeo (Maybe GeolayerdataLoViewportGeo)
gvgLo = lens _gvgLo (\ s a -> s{_gvgLo = a})

--
-- /See:/ 'layersummaries' smart constructor.
data Layersummaries = Layersummaries
    { _lTotalItems :: !(Maybe Int32)
    , _lKind       :: !Text
    , _lItems      :: !(Maybe [Maybe Layersummary])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layersummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lTotalItems'
--
-- * 'lKind'
--
-- * 'lItems'
layersummaries
    :: Layersummaries
layersummaries =
    Layersummaries
    { _lTotalItems = Nothing
    , _lKind = "books#layersummaries"
    , _lItems = Nothing
    }

-- | The total number of layer summaries found.
lTotalItems :: Lens' Layersummaries (Maybe Int32)
lTotalItems
  = lens _lTotalItems (\ s a -> s{_lTotalItems = a})

-- | Resource type.
lKind :: Lens' Layersummaries Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | A list of layer summary items.
lItems :: Lens' Layersummaries [Maybe Layersummary]
lItems
  = lens _lItems (\ s a -> s{_lItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'layersummary' smart constructor.
data Layersummary = Layersummary
    { _layAnnotationsDataLink      :: !(Maybe Text)
    , _layAnnotationsLink          :: !(Maybe Text)
    , _layKind                     :: !Text
    , _layDataCount                :: !(Maybe Int32)
    , _layContentVersion           :: !(Maybe Text)
    , _layVolumeAnnotationsVersion :: !(Maybe Text)
    , _layAnnotationCount          :: !(Maybe Int32)
    , _layAnnotationTypes          :: !(Maybe [Text])
    , _laySelfLink                 :: !(Maybe Text)
    , _layVolumeId                 :: !(Maybe Text)
    , _layId                       :: !(Maybe Text)
    , _layUpdated                  :: !(Maybe UTCTime)
    , _layLayerId                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layersummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layAnnotationsDataLink'
--
-- * 'layAnnotationsLink'
--
-- * 'layKind'
--
-- * 'layDataCount'
--
-- * 'layContentVersion'
--
-- * 'layVolumeAnnotationsVersion'
--
-- * 'layAnnotationCount'
--
-- * 'layAnnotationTypes'
--
-- * 'laySelfLink'
--
-- * 'layVolumeId'
--
-- * 'layId'
--
-- * 'layUpdated'
--
-- * 'layLayerId'
layersummary
    :: Layersummary
layersummary =
    Layersummary
    { _layAnnotationsDataLink = Nothing
    , _layAnnotationsLink = Nothing
    , _layKind = "books#layersummary"
    , _layDataCount = Nothing
    , _layContentVersion = Nothing
    , _layVolumeAnnotationsVersion = Nothing
    , _layAnnotationCount = Nothing
    , _layAnnotationTypes = Nothing
    , _laySelfLink = Nothing
    , _layVolumeId = Nothing
    , _layId = Nothing
    , _layUpdated = Nothing
    , _layLayerId = Nothing
    }

-- | Link to get data for this annotation.
layAnnotationsDataLink :: Lens' Layersummary (Maybe Text)
layAnnotationsDataLink
  = lens _layAnnotationsDataLink
      (\ s a -> s{_layAnnotationsDataLink = a})

-- | The link to get the annotations for this layer.
layAnnotationsLink :: Lens' Layersummary (Maybe Text)
layAnnotationsLink
  = lens _layAnnotationsLink
      (\ s a -> s{_layAnnotationsLink = a})

-- | Resource Type
layKind :: Lens' Layersummary Text
layKind = lens _layKind (\ s a -> s{_layKind = a})

-- | The number of data items for this layer.
layDataCount :: Lens' Layersummary (Maybe Int32)
layDataCount
  = lens _layDataCount (\ s a -> s{_layDataCount = a})

-- | The content version this resource is for.
layContentVersion :: Lens' Layersummary (Maybe Text)
layContentVersion
  = lens _layContentVersion
      (\ s a -> s{_layContentVersion = a})

-- | The current version of this layer\'s volume annotations. Note that this
-- version applies only to the data in the books.layers.volumeAnnotations.*
-- responses. The actual annotation data is versioned separately.
layVolumeAnnotationsVersion :: Lens' Layersummary (Maybe Text)
layVolumeAnnotationsVersion
  = lens _layVolumeAnnotationsVersion
      (\ s a -> s{_layVolumeAnnotationsVersion = a})

-- | The number of annotations for this layer.
layAnnotationCount :: Lens' Layersummary (Maybe Int32)
layAnnotationCount
  = lens _layAnnotationCount
      (\ s a -> s{_layAnnotationCount = a})

-- | The list of annotation types contained for this layer.
layAnnotationTypes :: Lens' Layersummary [Text]
layAnnotationTypes
  = lens _layAnnotationTypes
      (\ s a -> s{_layAnnotationTypes = a})
      . _Default
      . _Coerce

-- | URL to this resource.
laySelfLink :: Lens' Layersummary (Maybe Text)
laySelfLink
  = lens _laySelfLink (\ s a -> s{_laySelfLink = a})

-- | The volume id this resource is for.
layVolumeId :: Lens' Layersummary (Maybe Text)
layVolumeId
  = lens _layVolumeId (\ s a -> s{_layVolumeId = a})

-- | Unique id of this layer summary.
layId :: Lens' Layersummary (Maybe Text)
layId = lens _layId (\ s a -> s{_layId = a})

-- | Timestamp for the last time an item in this layer was updated. (RFC 3339
-- UTC date-time format).
layUpdated :: Lens' Layersummary (Maybe UTCTime)
layUpdated
  = lens _layUpdated (\ s a -> s{_layUpdated = a})

-- | The layer id for this summary.
layLayerId :: Lens' Layersummary (Maybe Text)
layLayerId
  = lens _layLayerId (\ s a -> s{_layLayerId = a})

--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind  :: !Text
    , _mItems :: !(Maybe [MetadataItemItems])
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
mItems :: Lens' Metadata [MetadataItemItems]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'metadataItemItems' smart constructor.
data MetadataItemItems = MetadataItemItems
    { _miiSize         :: !(Maybe Int64)
    , _miiVersion      :: !(Maybe Int64)
    , _miiLanguage     :: !(Maybe Text)
    , _miiDownloadUrl  :: !(Maybe Text)
    , _miiEncryptedKey :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miiSize'
--
-- * 'miiVersion'
--
-- * 'miiLanguage'
--
-- * 'miiDownloadUrl'
--
-- * 'miiEncryptedKey'
metadataItemItems
    :: MetadataItemItems
metadataItemItems =
    MetadataItemItems
    { _miiSize = Nothing
    , _miiVersion = Nothing
    , _miiLanguage = Nothing
    , _miiDownloadUrl = Nothing
    , _miiEncryptedKey = Nothing
    }

miiSize :: Lens' MetadataItemItems (Maybe Int64)
miiSize = lens _miiSize (\ s a -> s{_miiSize = a})

miiVersion :: Lens' MetadataItemItems (Maybe Int64)
miiVersion
  = lens _miiVersion (\ s a -> s{_miiVersion = a})

miiLanguage :: Lens' MetadataItemItems (Maybe Text)
miiLanguage
  = lens _miiLanguage (\ s a -> s{_miiLanguage = a})

miiDownloadUrl :: Lens' MetadataItemItems (Maybe Text)
miiDownloadUrl
  = lens _miiDownloadUrl
      (\ s a -> s{_miiDownloadUrl = a})

miiEncryptedKey :: Lens' MetadataItemItems (Maybe Text)
miiEncryptedKey
  = lens _miiEncryptedKey
      (\ s a -> s{_miiEncryptedKey = a})

--
-- /See:/ 'offers' smart constructor.
data Offers = Offers
    { _oKind  :: !Text
    , _oItems :: !(Maybe [OffersItemItems])
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
oItems :: Lens' Offers [OffersItemItems]
oItems
  = lens _oItems (\ s a -> s{_oItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'offersItemItems' smart constructor.
data OffersItemItems = OffersItemItems
    { _oiiItems        :: !(Maybe [OffersItemItemsItemItems])
    , _oiiArtUrl       :: !(Maybe Text)
    , _oiiId           :: !(Maybe Text)
    , _oiiGservicesKey :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiiItems'
--
-- * 'oiiArtUrl'
--
-- * 'oiiId'
--
-- * 'oiiGservicesKey'
offersItemItems
    :: OffersItemItems
offersItemItems =
    OffersItemItems
    { _oiiItems = Nothing
    , _oiiArtUrl = Nothing
    , _oiiId = Nothing
    , _oiiGservicesKey = Nothing
    }

oiiItems :: Lens' OffersItemItems [OffersItemItemsItemItems]
oiiItems
  = lens _oiiItems (\ s a -> s{_oiiItems = a}) .
      _Default
      . _Coerce

oiiArtUrl :: Lens' OffersItemItems (Maybe Text)
oiiArtUrl
  = lens _oiiArtUrl (\ s a -> s{_oiiArtUrl = a})

oiiId :: Lens' OffersItemItems (Maybe Text)
oiiId = lens _oiiId (\ s a -> s{_oiiId = a})

oiiGservicesKey :: Lens' OffersItemItems (Maybe Text)
oiiGservicesKey
  = lens _oiiGservicesKey
      (\ s a -> s{_oiiGservicesKey = a})

--
-- /See:/ 'offersItemItemsItemItems' smart constructor.
data OffersItemItemsItemItems = OffersItemItemsItemItems
    { _oiiiiCanonicalVolumeLink :: !(Maybe Text)
    , _oiiiiCoverUrl            :: !(Maybe Text)
    , _oiiiiVolumeId            :: !(Maybe Text)
    , _oiiiiAuthor              :: !(Maybe Text)
    , _oiiiiTitle               :: !(Maybe Text)
    , _oiiiiDescription         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemItemsItemItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiiiiCanonicalVolumeLink'
--
-- * 'oiiiiCoverUrl'
--
-- * 'oiiiiVolumeId'
--
-- * 'oiiiiAuthor'
--
-- * 'oiiiiTitle'
--
-- * 'oiiiiDescription'
offersItemItemsItemItems
    :: OffersItemItemsItemItems
offersItemItemsItemItems =
    OffersItemItemsItemItems
    { _oiiiiCanonicalVolumeLink = Nothing
    , _oiiiiCoverUrl = Nothing
    , _oiiiiVolumeId = Nothing
    , _oiiiiAuthor = Nothing
    , _oiiiiTitle = Nothing
    , _oiiiiDescription = Nothing
    }

oiiiiCanonicalVolumeLink :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiCanonicalVolumeLink
  = lens _oiiiiCanonicalVolumeLink
      (\ s a -> s{_oiiiiCanonicalVolumeLink = a})

oiiiiCoverUrl :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiCoverUrl
  = lens _oiiiiCoverUrl
      (\ s a -> s{_oiiiiCoverUrl = a})

oiiiiVolumeId :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiVolumeId
  = lens _oiiiiVolumeId
      (\ s a -> s{_oiiiiVolumeId = a})

oiiiiAuthor :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiAuthor
  = lens _oiiiiAuthor (\ s a -> s{_oiiiiAuthor = a})

oiiiiTitle :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiTitle
  = lens _oiiiiTitle (\ s a -> s{_oiiiiTitle = a})

oiiiiDescription :: Lens' OffersItemItemsItemItems (Maybe Text)
oiiiiDescription
  = lens _oiiiiDescription
      (\ s a -> s{_oiiiiDescription = a})

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

-- | Author of this review.
--
-- /See:/ 'reviewAuthor' smart constructor.
newtype ReviewAuthor = ReviewAuthor
    { _raDisplayName :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Information regarding the source of this review, when the review is not
-- from a Google Books user.
--
-- /See:/ 'reviewSource' smart constructor.
data ReviewSource = ReviewSource
    { _rsExtraDescription :: !(Maybe Text)
    , _rsUrl              :: !(Maybe Text)
    , _rsDescription      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReviewSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsExtraDescription'
--
-- * 'rsUrl'
--
-- * 'rsDescription'
reviewSource
    :: ReviewSource
reviewSource =
    ReviewSource
    { _rsExtraDescription = Nothing
    , _rsUrl = Nothing
    , _rsDescription = Nothing
    }

-- | Extra text about the source of the review.
rsExtraDescription :: Lens' ReviewSource (Maybe Text)
rsExtraDescription
  = lens _rsExtraDescription
      (\ s a -> s{_rsExtraDescription = a})

-- | URL of the source of the review.
rsUrl :: Lens' ReviewSource (Maybe Text)
rsUrl = lens _rsUrl (\ s a -> s{_rsUrl = a})

-- | Name of the source.
rsDescription :: Lens' ReviewSource (Maybe Text)
rsDescription
  = lens _rsDescription
      (\ s a -> s{_rsDescription = a})

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

-- | User settings in sub-objects, each for different purposes.
--
-- /See:/ 'usersettingsNotesExport' smart constructor.
data UsersettingsNotesExport = UsersettingsNotesExport
    { _uneFolderName :: !(Maybe Text)
    , _uneIsEnabled  :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'volume' smart constructor.
data Volume = Volume
    { _v1UserInfo        :: !(Maybe VolumeUserInfo)
    , _v1Etag            :: !(Maybe Text)
    , _v1AccessInfo      :: !(Maybe VolumeAccessInfo)
    , _v1Kind            :: !Text
    , _v1SearchInfo      :: !(Maybe VolumeSearchInfo)
    , _v1SelfLink        :: !(Maybe Text)
    , _v1LayerInfo       :: !(Maybe VolumeLayerInfo)
    , _v1SaleInfo        :: !(Maybe VolumeSaleInfo)
    , _v1Id              :: !(Maybe Text)
    , _v1RecommendedInfo :: !(Maybe VolumeRecommendedInfo)
    , _v1VolumeInfo      :: !(Maybe VolumeVolumeInfo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'v1UserInfo'
--
-- * 'v1Etag'
--
-- * 'v1AccessInfo'
--
-- * 'v1Kind'
--
-- * 'v1SearchInfo'
--
-- * 'v1SelfLink'
--
-- * 'v1LayerInfo'
--
-- * 'v1SaleInfo'
--
-- * 'v1Id'
--
-- * 'v1RecommendedInfo'
--
-- * 'v1VolumeInfo'
volume
    :: Volume
volume =
    Volume
    { _v1UserInfo = Nothing
    , _v1Etag = Nothing
    , _v1AccessInfo = Nothing
    , _v1Kind = "books#volume"
    , _v1SearchInfo = Nothing
    , _v1SelfLink = Nothing
    , _v1LayerInfo = Nothing
    , _v1SaleInfo = Nothing
    , _v1Id = Nothing
    , _v1RecommendedInfo = Nothing
    , _v1VolumeInfo = Nothing
    }

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
v1UserInfo :: Lens' Volume (Maybe VolumeUserInfo)
v1UserInfo
  = lens _v1UserInfo (\ s a -> s{_v1UserInfo = a})

-- | Opaque identifier for a specific version of a volume resource. (In LITE
-- projection)
v1Etag :: Lens' Volume (Maybe Text)
v1Etag = lens _v1Etag (\ s a -> s{_v1Etag = a})

-- | Any information about a volume related to reading or obtaining that
-- volume text. This information can depend on country (books may be public
-- domain in one country but not in another, e.g.).
v1AccessInfo :: Lens' Volume (Maybe VolumeAccessInfo)
v1AccessInfo
  = lens _v1AccessInfo (\ s a -> s{_v1AccessInfo = a})

-- | Resource type for a volume. (In LITE projection.)
v1Kind :: Lens' Volume Text
v1Kind = lens _v1Kind (\ s a -> s{_v1Kind = a})

-- | Search result information related to this volume.
v1SearchInfo :: Lens' Volume (Maybe VolumeSearchInfo)
v1SearchInfo
  = lens _v1SearchInfo (\ s a -> s{_v1SearchInfo = a})

-- | URL to this resource. (In LITE projection.)
v1SelfLink :: Lens' Volume (Maybe Text)
v1SelfLink
  = lens _v1SelfLink (\ s a -> s{_v1SelfLink = a})

-- | What layers exist in this volume and high level information about them.
v1LayerInfo :: Lens' Volume (Maybe VolumeLayerInfo)
v1LayerInfo
  = lens _v1LayerInfo (\ s a -> s{_v1LayerInfo = a})

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
v1SaleInfo :: Lens' Volume (Maybe VolumeSaleInfo)
v1SaleInfo
  = lens _v1SaleInfo (\ s a -> s{_v1SaleInfo = a})

-- | Unique identifier for a volume. (In LITE projection.)
v1Id :: Lens' Volume (Maybe Text)
v1Id = lens _v1Id (\ s a -> s{_v1Id = a})

-- | Recommendation related information for this volume.
v1RecommendedInfo :: Lens' Volume (Maybe VolumeRecommendedInfo)
v1RecommendedInfo
  = lens _v1RecommendedInfo
      (\ s a -> s{_v1RecommendedInfo = a})

-- | General volume information.
v1VolumeInfo :: Lens' Volume (Maybe VolumeVolumeInfo)
v1VolumeInfo
  = lens _v1VolumeInfo (\ s a -> s{_v1VolumeInfo = a})

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
    , _vaiEpub                             :: !(Maybe VolumeEpubAccessInfo)
    , _vaiPdf                              :: !(Maybe VolumePdfAccessInfo)
    , _vaiTextToSpeechPermission           :: !(Maybe Text)
    , _vaiEmbeddable                       :: !(Maybe Bool)
    , _vaiAccessViewStatus                 :: !(Maybe Text)
    , _vaiDownloadAccess                   :: !(Maybe (Maybe DownloadAccessRestriction))
    , _vaiViewOrderUrl                     :: !(Maybe Text)
    , _vaiPublicDomain                     :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vaiViewOrderUrl'
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
    , _vaiViewOrderUrl = Nothing
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
vaiEpub :: Lens' VolumeAccessInfo (Maybe VolumeEpubAccessInfo)
vaiEpub = lens _vaiEpub (\ s a -> s{_vaiEpub = a})

-- | Information about pdf content. (In LITE projection.)
vaiPdf :: Lens' VolumeAccessInfo (Maybe VolumePdfAccessInfo)
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
vaiDownloadAccess :: Lens' VolumeAccessInfo (Maybe (Maybe DownloadAccessRestriction))
vaiDownloadAccess
  = lens _vaiDownloadAccess
      (\ s a -> s{_vaiDownloadAccess = a})

-- | For ordered but not yet processed orders, we give a URL that can be used
-- to go to the appropriate Google Wallet page.
vaiViewOrderUrl :: Lens' VolumeAccessInfo (Maybe Text)
vaiViewOrderUrl
  = lens _vaiViewOrderUrl
      (\ s a -> s{_vaiViewOrderUrl = a})

-- | Whether or not this book is public domain in the country listed above.
vaiPublicDomain :: Lens' VolumeAccessInfo (Maybe Bool)
vaiPublicDomain
  = lens _vaiPublicDomain
      (\ s a -> s{_vaiPublicDomain = a})

-- | Copy\/Paste accounting information.
--
-- /See:/ 'volumeCopyUserInfo' smart constructor.
data VolumeCopyUserInfo = VolumeCopyUserInfo
    { _vcuiLimitType               :: !(Maybe Text)
    , _vcuiAllowedCharacterCount   :: !(Maybe Int32)
    , _vcuiUpdated                 :: !(Maybe UTCTime)
    , _vcuiRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeCopyUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcuiLimitType'
--
-- * 'vcuiAllowedCharacterCount'
--
-- * 'vcuiUpdated'
--
-- * 'vcuiRemainingCharacterCount'
volumeCopyUserInfo
    :: VolumeCopyUserInfo
volumeCopyUserInfo =
    VolumeCopyUserInfo
    { _vcuiLimitType = Nothing
    , _vcuiAllowedCharacterCount = Nothing
    , _vcuiUpdated = Nothing
    , _vcuiRemainingCharacterCount = Nothing
    }

vcuiLimitType :: Lens' VolumeCopyUserInfo (Maybe Text)
vcuiLimitType
  = lens _vcuiLimitType
      (\ s a -> s{_vcuiLimitType = a})

vcuiAllowedCharacterCount :: Lens' VolumeCopyUserInfo (Maybe Int32)
vcuiAllowedCharacterCount
  = lens _vcuiAllowedCharacterCount
      (\ s a -> s{_vcuiAllowedCharacterCount = a})

vcuiUpdated :: Lens' VolumeCopyUserInfo (Maybe UTCTime)
vcuiUpdated
  = lens _vcuiUpdated (\ s a -> s{_vcuiUpdated = a})

vcuiRemainingCharacterCount :: Lens' VolumeCopyUserInfo (Maybe Int32)
vcuiRemainingCharacterCount
  = lens _vcuiRemainingCharacterCount
      (\ s a -> s{_vcuiRemainingCharacterCount = a})

-- | Physical dimensions of this volume.
--
-- /See:/ 'volumeDimensionsVolumeInfo' smart constructor.
data VolumeDimensionsVolumeInfo = VolumeDimensionsVolumeInfo
    { _vdviHeight    :: !(Maybe Text)
    , _vdviWidth     :: !(Maybe Text)
    , _vdviThickness :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeDimensionsVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdviHeight'
--
-- * 'vdviWidth'
--
-- * 'vdviThickness'
volumeDimensionsVolumeInfo
    :: VolumeDimensionsVolumeInfo
volumeDimensionsVolumeInfo =
    VolumeDimensionsVolumeInfo
    { _vdviHeight = Nothing
    , _vdviWidth = Nothing
    , _vdviThickness = Nothing
    }

-- | Height or length of this volume (in cm).
vdviHeight :: Lens' VolumeDimensionsVolumeInfo (Maybe Text)
vdviHeight
  = lens _vdviHeight (\ s a -> s{_vdviHeight = a})

-- | Width of this volume (in cm).
vdviWidth :: Lens' VolumeDimensionsVolumeInfo (Maybe Text)
vdviWidth
  = lens _vdviWidth (\ s a -> s{_vdviWidth = a})

-- | Thickness of this volume (in cm).
vdviThickness :: Lens' VolumeDimensionsVolumeInfo (Maybe Text)
vdviThickness
  = lens _vdviThickness
      (\ s a -> s{_vdviThickness = a})

-- | Information about epub content. (In LITE projection.)
--
-- /See:/ 'volumeEpubAccessInfo' smart constructor.
data VolumeEpubAccessInfo = VolumeEpubAccessInfo
    { _veaiAcsTokenLink :: !(Maybe Text)
    , _veaiIsAvailable  :: !(Maybe Bool)
    , _veaiDownloadLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeEpubAccessInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veaiAcsTokenLink'
--
-- * 'veaiIsAvailable'
--
-- * 'veaiDownloadLink'
volumeEpubAccessInfo
    :: VolumeEpubAccessInfo
volumeEpubAccessInfo =
    VolumeEpubAccessInfo
    { _veaiAcsTokenLink = Nothing
    , _veaiIsAvailable = Nothing
    , _veaiDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for epub download. (In LITE projection.)
veaiAcsTokenLink :: Lens' VolumeEpubAccessInfo (Maybe Text)
veaiAcsTokenLink
  = lens _veaiAcsTokenLink
      (\ s a -> s{_veaiAcsTokenLink = a})

-- | Is a flowing text epub available either as public domain or for
-- purchase. (In LITE projection.)
veaiIsAvailable :: Lens' VolumeEpubAccessInfo (Maybe Bool)
veaiIsAvailable
  = lens _veaiIsAvailable
      (\ s a -> s{_veaiIsAvailable = a})

-- | URL to download epub. (In LITE projection.)
veaiDownloadLink :: Lens' VolumeEpubAccessInfo (Maybe Text)
veaiDownloadLink
  = lens _veaiDownloadLink
      (\ s a -> s{_veaiDownloadLink = a})

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
--
-- /See:/ 'volumeImageLinksVolumeInfo' smart constructor.
data VolumeImageLinksVolumeInfo = VolumeImageLinksVolumeInfo
    { _vilviThumbnail      :: !(Maybe Text)
    , _vilviSmall          :: !(Maybe Text)
    , _vilviExtraLarge     :: !(Maybe Text)
    , _vilviLarge          :: !(Maybe Text)
    , _vilviMedium         :: !(Maybe Text)
    , _vilviSmallThumbnail :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeImageLinksVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vilviThumbnail'
--
-- * 'vilviSmall'
--
-- * 'vilviExtraLarge'
--
-- * 'vilviLarge'
--
-- * 'vilviMedium'
--
-- * 'vilviSmallThumbnail'
volumeImageLinksVolumeInfo
    :: VolumeImageLinksVolumeInfo
volumeImageLinksVolumeInfo =
    VolumeImageLinksVolumeInfo
    { _vilviThumbnail = Nothing
    , _vilviSmall = Nothing
    , _vilviExtraLarge = Nothing
    , _vilviLarge = Nothing
    , _vilviMedium = Nothing
    , _vilviSmallThumbnail = Nothing
    }

-- | Image link for thumbnail size (width of ~128 pixels). (In LITE
-- projection)
vilviThumbnail :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviThumbnail
  = lens _vilviThumbnail
      (\ s a -> s{_vilviThumbnail = a})

-- | Image link for small size (width of ~300 pixels). (In LITE projection)
vilviSmall :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviSmall
  = lens _vilviSmall (\ s a -> s{_vilviSmall = a})

-- | Image link for extra large size (width of ~1280 pixels). (In LITE
-- projection)
vilviExtraLarge :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviExtraLarge
  = lens _vilviExtraLarge
      (\ s a -> s{_vilviExtraLarge = a})

-- | Image link for large size (width of ~800 pixels). (In LITE projection)
vilviLarge :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviLarge
  = lens _vilviLarge (\ s a -> s{_vilviLarge = a})

-- | Image link for medium size (width of ~575 pixels). (In LITE projection)
vilviMedium :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviMedium
  = lens _vilviMedium (\ s a -> s{_vilviMedium = a})

-- | Image link for small thumbnail size (width of ~80 pixels). (In LITE
-- projection)
vilviSmallThumbnail :: Lens' VolumeImageLinksVolumeInfo (Maybe Text)
vilviSmallThumbnail
  = lens _vilviSmallThumbnail
      (\ s a -> s{_vilviSmallThumbnail = a})

--
-- /See:/ 'volumeItemIndustryIdentifiersVolumeInfo' smart constructor.
data VolumeItemIndustryIdentifiersVolumeInfo = VolumeItemIndustryIdentifiersVolumeInfo
    { _viiiviIdentifier :: !(Maybe Text)
    , _viiiviType       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeItemIndustryIdentifiersVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viiiviIdentifier'
--
-- * 'viiiviType'
volumeItemIndustryIdentifiersVolumeInfo
    :: VolumeItemIndustryIdentifiersVolumeInfo
volumeItemIndustryIdentifiersVolumeInfo =
    VolumeItemIndustryIdentifiersVolumeInfo
    { _viiiviIdentifier = Nothing
    , _viiiviType = Nothing
    }

-- | Industry specific volume identifier.
viiiviIdentifier :: Lens' VolumeItemIndustryIdentifiersVolumeInfo (Maybe Text)
viiiviIdentifier
  = lens _viiiviIdentifier
      (\ s a -> s{_viiiviIdentifier = a})

-- | Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER.
viiiviType :: Lens' VolumeItemIndustryIdentifiersVolumeInfo (Maybe Text)
viiiviType
  = lens _viiiviType (\ s a -> s{_viiiviType = a})

--
-- /See:/ 'volumeItemLayersLayerInfo' smart constructor.
data VolumeItemLayersLayerInfo = VolumeItemLayersLayerInfo
    { _villiVolumeAnnotationsVersion :: !(Maybe Text)
    , _villiLayerId                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeItemLayersLayerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'villiVolumeAnnotationsVersion'
--
-- * 'villiLayerId'
volumeItemLayersLayerInfo
    :: VolumeItemLayersLayerInfo
volumeItemLayersLayerInfo =
    VolumeItemLayersLayerInfo
    { _villiVolumeAnnotationsVersion = Nothing
    , _villiLayerId = Nothing
    }

-- | The current version of this layer\'s volume annotations. Note that this
-- version applies only to the data in the books.layers.volumeAnnotations.*
-- responses. The actual annotation data is versioned separately.
villiVolumeAnnotationsVersion :: Lens' VolumeItemLayersLayerInfo (Maybe Text)
villiVolumeAnnotationsVersion
  = lens _villiVolumeAnnotationsVersion
      (\ s a -> s{_villiVolumeAnnotationsVersion = a})

-- | The layer id of this layer (e.g. \"geo\").
villiLayerId :: Lens' VolumeItemLayersLayerInfo (Maybe Text)
villiLayerId
  = lens _villiLayerId (\ s a -> s{_villiLayerId = a})

--
-- /See:/ 'volumeItemOffersSaleInfo' smart constructor.
data VolumeItemOffersSaleInfo = VolumeItemOffersSaleInfo
    { _viosiFinskyOfferType :: !(Maybe Int32)
    , _viosiRentalDuration  :: !(Maybe VolumeRentalDurationItemOffersSaleInfo)
    , _viosiListPrice       :: !(Maybe VolumeListPriceItemOffersSaleInfo)
    , _viosiRetailPrice     :: !(Maybe VolumeRetailPriceItemOffersSaleInfo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeItemOffersSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viosiFinskyOfferType'
--
-- * 'viosiRentalDuration'
--
-- * 'viosiListPrice'
--
-- * 'viosiRetailPrice'
volumeItemOffersSaleInfo
    :: VolumeItemOffersSaleInfo
volumeItemOffersSaleInfo =
    VolumeItemOffersSaleInfo
    { _viosiFinskyOfferType = Nothing
    , _viosiRentalDuration = Nothing
    , _viosiListPrice = Nothing
    , _viosiRetailPrice = Nothing
    }

-- | The finsky offer type (e.g., PURCHASE=0 RENTAL=3)
viosiFinskyOfferType :: Lens' VolumeItemOffersSaleInfo (Maybe Int32)
viosiFinskyOfferType
  = lens _viosiFinskyOfferType
      (\ s a -> s{_viosiFinskyOfferType = a})

-- | The rental duration (for rental offers only).
viosiRentalDuration :: Lens' VolumeItemOffersSaleInfo (Maybe VolumeRentalDurationItemOffersSaleInfo)
viosiRentalDuration
  = lens _viosiRentalDuration
      (\ s a -> s{_viosiRentalDuration = a})

-- | Offer list (=undiscounted) price in Micros.
viosiListPrice :: Lens' VolumeItemOffersSaleInfo (Maybe VolumeListPriceItemOffersSaleInfo)
viosiListPrice
  = lens _viosiListPrice
      (\ s a -> s{_viosiListPrice = a})

-- | Offer retail (=discounted) price in Micros
viosiRetailPrice :: Lens' VolumeItemOffersSaleInfo (Maybe VolumeRetailPriceItemOffersSaleInfo)
viosiRetailPrice
  = lens _viosiRetailPrice
      (\ s a -> s{_viosiRetailPrice = a})

-- | What layers exist in this volume and high level information about them.
--
-- /See:/ 'volumeLayerInfo' smart constructor.
newtype VolumeLayerInfo = VolumeLayerInfo
    { _vliLayers :: Maybe [VolumeItemLayersLayerInfo]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
vliLayers :: Lens' VolumeLayerInfo [VolumeItemLayersLayerInfo]
vliLayers
  = lens _vliLayers (\ s a -> s{_vliLayers = a}) .
      _Default
      . _Coerce

-- | Offer list (=undiscounted) price in Micros.
--
-- /See:/ 'volumeListPriceItemOffersSaleInfo' smart constructor.
data VolumeListPriceItemOffersSaleInfo = VolumeListPriceItemOffersSaleInfo
    { _vlpiosiCurrencyCode   :: !(Maybe Text)
    , _vlpiosiAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeListPriceItemOffersSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlpiosiCurrencyCode'
--
-- * 'vlpiosiAmountInMicros'
volumeListPriceItemOffersSaleInfo
    :: VolumeListPriceItemOffersSaleInfo
volumeListPriceItemOffersSaleInfo =
    VolumeListPriceItemOffersSaleInfo
    { _vlpiosiCurrencyCode = Nothing
    , _vlpiosiAmountInMicros = Nothing
    }

vlpiosiCurrencyCode :: Lens' VolumeListPriceItemOffersSaleInfo (Maybe Text)
vlpiosiCurrencyCode
  = lens _vlpiosiCurrencyCode
      (\ s a -> s{_vlpiosiCurrencyCode = a})

vlpiosiAmountInMicros :: Lens' VolumeListPriceItemOffersSaleInfo (Maybe Double)
vlpiosiAmountInMicros
  = lens _vlpiosiAmountInMicros
      (\ s a -> s{_vlpiosiAmountInMicros = a})

-- | Suggested retail price. (In LITE projection.)
--
-- /See:/ 'volumeListPriceSaleInfo' smart constructor.
data VolumeListPriceSaleInfo = VolumeListPriceSaleInfo
    { _vlpsiAmount       :: !(Maybe Double)
    , _vlpsiCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeListPriceSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlpsiAmount'
--
-- * 'vlpsiCurrencyCode'
volumeListPriceSaleInfo
    :: VolumeListPriceSaleInfo
volumeListPriceSaleInfo =
    VolumeListPriceSaleInfo
    { _vlpsiAmount = Nothing
    , _vlpsiCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
vlpsiAmount :: Lens' VolumeListPriceSaleInfo (Maybe Double)
vlpsiAmount
  = lens _vlpsiAmount (\ s a -> s{_vlpsiAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vlpsiCurrencyCode :: Lens' VolumeListPriceSaleInfo (Maybe Text)
vlpsiCurrencyCode
  = lens _vlpsiCurrencyCode
      (\ s a -> s{_vlpsiCurrencyCode = a})

-- | Information about pdf content. (In LITE projection.)
--
-- /See:/ 'volumePdfAccessInfo' smart constructor.
data VolumePdfAccessInfo = VolumePdfAccessInfo
    { _vpaiAcsTokenLink :: !(Maybe Text)
    , _vpaiIsAvailable  :: !(Maybe Bool)
    , _vpaiDownloadLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumePdfAccessInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpaiAcsTokenLink'
--
-- * 'vpaiIsAvailable'
--
-- * 'vpaiDownloadLink'
volumePdfAccessInfo
    :: VolumePdfAccessInfo
volumePdfAccessInfo =
    VolumePdfAccessInfo
    { _vpaiAcsTokenLink = Nothing
    , _vpaiIsAvailable = Nothing
    , _vpaiDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for pdf download. (In LITE projection.)
vpaiAcsTokenLink :: Lens' VolumePdfAccessInfo (Maybe Text)
vpaiAcsTokenLink
  = lens _vpaiAcsTokenLink
      (\ s a -> s{_vpaiAcsTokenLink = a})

-- | Is a scanned image pdf available either as public domain or for
-- purchase. (In LITE projection.)
vpaiIsAvailable :: Lens' VolumePdfAccessInfo (Maybe Bool)
vpaiIsAvailable
  = lens _vpaiIsAvailable
      (\ s a -> s{_vpaiIsAvailable = a})

-- | URL to download pdf. (In LITE projection.)
vpaiDownloadLink :: Lens' VolumePdfAccessInfo (Maybe Text)
vpaiDownloadLink
  = lens _vpaiDownloadLink
      (\ s a -> s{_vpaiDownloadLink = a})

-- | Recommendation related information for this volume.
--
-- /See:/ 'volumeRecommendedInfo' smart constructor.
newtype VolumeRecommendedInfo = VolumeRecommendedInfo
    { _vriExplanation :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | The rental duration (for rental offers only).
--
-- /See:/ 'volumeRentalDurationItemOffersSaleInfo' smart constructor.
data VolumeRentalDurationItemOffersSaleInfo = VolumeRentalDurationItemOffersSaleInfo
    { _vrdiosiCount :: !(Maybe Double)
    , _vrdiosiUnit  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeRentalDurationItemOffersSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrdiosiCount'
--
-- * 'vrdiosiUnit'
volumeRentalDurationItemOffersSaleInfo
    :: VolumeRentalDurationItemOffersSaleInfo
volumeRentalDurationItemOffersSaleInfo =
    VolumeRentalDurationItemOffersSaleInfo
    { _vrdiosiCount = Nothing
    , _vrdiosiUnit = Nothing
    }

vrdiosiCount :: Lens' VolumeRentalDurationItemOffersSaleInfo (Maybe Double)
vrdiosiCount
  = lens _vrdiosiCount (\ s a -> s{_vrdiosiCount = a})

vrdiosiUnit :: Lens' VolumeRentalDurationItemOffersSaleInfo (Maybe Text)
vrdiosiUnit
  = lens _vrdiosiUnit (\ s a -> s{_vrdiosiUnit = a})

-- | Period during this book is\/was a valid rental.
--
-- /See:/ 'volumeRentalPeriodUserInfo' smart constructor.
data VolumeRentalPeriodUserInfo = VolumeRentalPeriodUserInfo
    { _vrpuiEndUtcSec   :: !(Maybe Int64)
    , _vrpuiStartUtcSec :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeRentalPeriodUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpuiEndUtcSec'
--
-- * 'vrpuiStartUtcSec'
volumeRentalPeriodUserInfo
    :: VolumeRentalPeriodUserInfo
volumeRentalPeriodUserInfo =
    VolumeRentalPeriodUserInfo
    { _vrpuiEndUtcSec = Nothing
    , _vrpuiStartUtcSec = Nothing
    }

vrpuiEndUtcSec :: Lens' VolumeRentalPeriodUserInfo (Maybe Int64)
vrpuiEndUtcSec
  = lens _vrpuiEndUtcSec
      (\ s a -> s{_vrpuiEndUtcSec = a})

vrpuiStartUtcSec :: Lens' VolumeRentalPeriodUserInfo (Maybe Int64)
vrpuiStartUtcSec
  = lens _vrpuiStartUtcSec
      (\ s a -> s{_vrpuiStartUtcSec = a})

-- | Offer retail (=discounted) price in Micros
--
-- /See:/ 'volumeRetailPriceItemOffersSaleInfo' smart constructor.
data VolumeRetailPriceItemOffersSaleInfo = VolumeRetailPriceItemOffersSaleInfo
    { _vrpiosiCurrencyCode   :: !(Maybe Text)
    , _vrpiosiAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeRetailPriceItemOffersSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpiosiCurrencyCode'
--
-- * 'vrpiosiAmountInMicros'
volumeRetailPriceItemOffersSaleInfo
    :: VolumeRetailPriceItemOffersSaleInfo
volumeRetailPriceItemOffersSaleInfo =
    VolumeRetailPriceItemOffersSaleInfo
    { _vrpiosiCurrencyCode = Nothing
    , _vrpiosiAmountInMicros = Nothing
    }

vrpiosiCurrencyCode :: Lens' VolumeRetailPriceItemOffersSaleInfo (Maybe Text)
vrpiosiCurrencyCode
  = lens _vrpiosiCurrencyCode
      (\ s a -> s{_vrpiosiCurrencyCode = a})

vrpiosiAmountInMicros :: Lens' VolumeRetailPriceItemOffersSaleInfo (Maybe Double)
vrpiosiAmountInMicros
  = lens _vrpiosiAmountInMicros
      (\ s a -> s{_vrpiosiAmountInMicros = a})

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
--
-- /See:/ 'volumeRetailPriceSaleInfo' smart constructor.
data VolumeRetailPriceSaleInfo = VolumeRetailPriceSaleInfo
    { _vrpsiAmount       :: !(Maybe Double)
    , _vrpsiCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeRetailPriceSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpsiAmount'
--
-- * 'vrpsiCurrencyCode'
volumeRetailPriceSaleInfo
    :: VolumeRetailPriceSaleInfo
volumeRetailPriceSaleInfo =
    VolumeRetailPriceSaleInfo
    { _vrpsiAmount = Nothing
    , _vrpsiCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
vrpsiAmount :: Lens' VolumeRetailPriceSaleInfo (Maybe Double)
vrpsiAmount
  = lens _vrpsiAmount (\ s a -> s{_vrpsiAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vrpsiCurrencyCode :: Lens' VolumeRetailPriceSaleInfo (Maybe Text)
vrpsiCurrencyCode
  = lens _vrpsiCurrencyCode
      (\ s a -> s{_vrpsiCurrencyCode = a})

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
--
-- /See:/ 'volumeSaleInfo' smart constructor.
data VolumeSaleInfo = VolumeSaleInfo
    { _vsiCountry     :: !(Maybe Text)
    , _vsiOnSaleDate  :: !(Maybe UTCTime)
    , _vsiListPrice   :: !(Maybe VolumeListPriceSaleInfo)
    , _vsiRetailPrice :: !(Maybe VolumeRetailPriceSaleInfo)
    , _vsiOffers      :: !(Maybe [VolumeItemOffersSaleInfo])
    , _vsiBuyLink     :: !(Maybe Text)
    , _vsiIsEbook     :: !(Maybe Bool)
    , _vsiSaleability :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Suggested retail price. (In LITE projection.)
vsiListPrice :: Lens' VolumeSaleInfo (Maybe VolumeListPriceSaleInfo)
vsiListPrice
  = lens _vsiListPrice (\ s a -> s{_vsiListPrice = a})

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
vsiRetailPrice :: Lens' VolumeSaleInfo (Maybe VolumeRetailPriceSaleInfo)
vsiRetailPrice
  = lens _vsiRetailPrice
      (\ s a -> s{_vsiRetailPrice = a})

-- | Offers available for this volume (sales and rentals).
vsiOffers :: Lens' VolumeSaleInfo [VolumeItemOffersSaleInfo]
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

-- | Search result information related to this volume.
--
-- /See:/ 'volumeSearchInfo' smart constructor.
newtype VolumeSearchInfo = VolumeSearchInfo
    { _vsiTextSnippet :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
--
-- /See:/ 'volumeUserInfo' smart constructor.
data VolumeUserInfo = VolumeUserInfo
    { _vuiCopy                   :: !(Maybe VolumeCopyUserInfo)
    , _vuiUserUploadedVolumeInfo :: !(Maybe VolumeUserUploadedVolumeInfoUserInfo)
    , _vuiIsPurchased            :: !(Maybe Bool)
    , _vuiRentalState            :: !(Maybe Text)
    , _vuiIsPreordered           :: !(Maybe Bool)
    , _vuiReview                 :: !(Maybe (Maybe Review))
    , _vuiRentalPeriod           :: !(Maybe VolumeRentalPeriodUserInfo)
    , _vuiUpdated                :: !(Maybe UTCTime)
    , _vuiIsUploaded             :: !(Maybe Bool)
    , _vuiIsInMyBooks            :: !(Maybe Bool)
    , _vuiReadingPosition        :: !(Maybe (Maybe ReadingPosition))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vuiIsPreordered'
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
    , _vuiIsPreordered = Nothing
    , _vuiReview = Nothing
    , _vuiRentalPeriod = Nothing
    , _vuiUpdated = Nothing
    , _vuiIsUploaded = Nothing
    , _vuiIsInMyBooks = Nothing
    , _vuiReadingPosition = Nothing
    }

-- | Copy\/Paste accounting information.
vuiCopy :: Lens' VolumeUserInfo (Maybe VolumeCopyUserInfo)
vuiCopy = lens _vuiCopy (\ s a -> s{_vuiCopy = a})

vuiUserUploadedVolumeInfo :: Lens' VolumeUserInfo (Maybe VolumeUserUploadedVolumeInfoUserInfo)
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
vuiIsPreordered :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsPreordered
  = lens _vuiIsPreordered
      (\ s a -> s{_vuiIsPreordered = a})

-- | This user\'s review of this volume, if one exists.
vuiReview :: Lens' VolumeUserInfo (Maybe (Maybe Review))
vuiReview
  = lens _vuiReview (\ s a -> s{_vuiReview = a})

-- | Period during this book is\/was a valid rental.
vuiRentalPeriod :: Lens' VolumeUserInfo (Maybe VolumeRentalPeriodUserInfo)
vuiRentalPeriod
  = lens _vuiRentalPeriod
      (\ s a -> s{_vuiRentalPeriod = a})

-- | Timestamp when this volume was last modified by a user action, such as a
-- reading position update, volume purchase or writing a review. (RFC 3339
-- UTC date-time format).
vuiUpdated :: Lens' VolumeUserInfo (Maybe UTCTime)
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
vuiReadingPosition :: Lens' VolumeUserInfo (Maybe (Maybe ReadingPosition))
vuiReadingPosition
  = lens _vuiReadingPosition
      (\ s a -> s{_vuiReadingPosition = a})

--
-- /See:/ 'volumeUserUploadedVolumeInfoUserInfo' smart constructor.
newtype VolumeUserUploadedVolumeInfoUserInfo = VolumeUserUploadedVolumeInfoUserInfo
    { _vuuviuiProcessingState :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeUserUploadedVolumeInfoUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuuviuiProcessingState'
volumeUserUploadedVolumeInfoUserInfo
    :: VolumeUserUploadedVolumeInfoUserInfo
volumeUserUploadedVolumeInfoUserInfo =
    VolumeUserUploadedVolumeInfoUserInfo
    { _vuuviuiProcessingState = Nothing
    }

vuuviuiProcessingState :: Lens' VolumeUserUploadedVolumeInfoUserInfo (Maybe Text)
vuuviuiProcessingState
  = lens _vuuviuiProcessingState
      (\ s a -> s{_vuuviuiProcessingState = a})

-- | General volume information.
--
-- /See:/ 'volumeVolumeInfo' smart constructor.
data VolumeVolumeInfo = VolumeVolumeInfo
    { _vviImageLinks          :: !(Maybe VolumeImageLinksVolumeInfo)
    , _vviAverageRating       :: !(Maybe Double)
    , _vviRatingsCount        :: !(Maybe Int32)
    , _vviCanonicalVolumeLink :: !(Maybe Text)
    , _vviReadingModes        :: !(Maybe (Either Text Int64))
    , _vviIndustryIdentifiers :: !(Maybe [VolumeItemIndustryIdentifiersVolumeInfo])
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
    , _vviDimensions          :: !(Maybe VolumeDimensionsVolumeInfo)
    , _vviInfoLink            :: !(Maybe Text)
    , _vviPublisher           :: !(Maybe Text)
    , _vviDescription         :: !(Maybe Text)
    , _vviPrintType           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
vviImageLinks :: Lens' VolumeVolumeInfo (Maybe VolumeImageLinksVolumeInfo)
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
vviReadingModes :: Lens' VolumeVolumeInfo (Maybe (Either Text Int64))
vviReadingModes
  = lens _vviReadingModes
      (\ s a -> s{_vviReadingModes = a})

-- | Industry standard identifiers for this volume.
vviIndustryIdentifiers :: Lens' VolumeVolumeInfo [VolumeItemIndustryIdentifiersVolumeInfo]
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
vviDimensions :: Lens' VolumeVolumeInfo (Maybe VolumeDimensionsVolumeInfo)
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

--
-- /See:/ 'volumeannotation' smart constructor.
data Volumeannotation = Volumeannotation
    { _vvSelectedText       :: !(Maybe Text)
    , _vvAnnotationDataLink :: !(Maybe Text)
    , _vvPageIds            :: !(Maybe [Text])
    , _vvKind               :: !Text
    , _vvData               :: !(Maybe Text)
    , _vvSelfLink           :: !(Maybe Text)
    , _vvAnnotationType     :: !(Maybe Text)
    , _vvAnnotationDataId   :: !(Maybe Text)
    , _vvContentRanges      :: !(Maybe VolumeannotationContentRanges)
    , _vvVolumeId           :: !(Maybe Text)
    , _vvId                 :: !(Maybe Text)
    , _vvDeleted            :: !(Maybe Bool)
    , _vvUpdated            :: !(Maybe UTCTime)
    , _vvLayerId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumeannotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvSelectedText'
--
-- * 'vvAnnotationDataLink'
--
-- * 'vvPageIds'
--
-- * 'vvKind'
--
-- * 'vvData'
--
-- * 'vvSelfLink'
--
-- * 'vvAnnotationType'
--
-- * 'vvAnnotationDataId'
--
-- * 'vvContentRanges'
--
-- * 'vvVolumeId'
--
-- * 'vvId'
--
-- * 'vvDeleted'
--
-- * 'vvUpdated'
--
-- * 'vvLayerId'
volumeannotation
    :: Volumeannotation
volumeannotation =
    Volumeannotation
    { _vvSelectedText = Nothing
    , _vvAnnotationDataLink = Nothing
    , _vvPageIds = Nothing
    , _vvKind = "books#volumeannotation"
    , _vvData = Nothing
    , _vvSelfLink = Nothing
    , _vvAnnotationType = Nothing
    , _vvAnnotationDataId = Nothing
    , _vvContentRanges = Nothing
    , _vvVolumeId = Nothing
    , _vvId = Nothing
    , _vvDeleted = Nothing
    , _vvUpdated = Nothing
    , _vvLayerId = Nothing
    }

-- | Excerpt from the volume.
vvSelectedText :: Lens' Volumeannotation (Maybe Text)
vvSelectedText
  = lens _vvSelectedText
      (\ s a -> s{_vvSelectedText = a})

-- | Link to get data for this annotation.
vvAnnotationDataLink :: Lens' Volumeannotation (Maybe Text)
vvAnnotationDataLink
  = lens _vvAnnotationDataLink
      (\ s a -> s{_vvAnnotationDataLink = a})

-- | Pages the annotation spans.
vvPageIds :: Lens' Volumeannotation [Text]
vvPageIds
  = lens _vvPageIds (\ s a -> s{_vvPageIds = a}) .
      _Default
      . _Coerce

-- | Resource Type
vvKind :: Lens' Volumeannotation Text
vvKind = lens _vvKind (\ s a -> s{_vvKind = a})

-- | Data for this annotation.
vvData :: Lens' Volumeannotation (Maybe Text)
vvData = lens _vvData (\ s a -> s{_vvData = a})

-- | URL to this resource.
vvSelfLink :: Lens' Volumeannotation (Maybe Text)
vvSelfLink
  = lens _vvSelfLink (\ s a -> s{_vvSelfLink = a})

-- | The type of annotation this is.
vvAnnotationType :: Lens' Volumeannotation (Maybe Text)
vvAnnotationType
  = lens _vvAnnotationType
      (\ s a -> s{_vvAnnotationType = a})

-- | The annotation data id for this volume annotation.
vvAnnotationDataId :: Lens' Volumeannotation (Maybe Text)
vvAnnotationDataId
  = lens _vvAnnotationDataId
      (\ s a -> s{_vvAnnotationDataId = a})

-- | The content ranges to identify the selected text.
vvContentRanges :: Lens' Volumeannotation (Maybe VolumeannotationContentRanges)
vvContentRanges
  = lens _vvContentRanges
      (\ s a -> s{_vvContentRanges = a})

-- | The Volume this annotation is for.
vvVolumeId :: Lens' Volumeannotation (Maybe Text)
vvVolumeId
  = lens _vvVolumeId (\ s a -> s{_vvVolumeId = a})

-- | Unique id of this volume annotation.
vvId :: Lens' Volumeannotation (Maybe Text)
vvId = lens _vvId (\ s a -> s{_vvId = a})

-- | Indicates that this annotation is deleted.
vvDeleted :: Lens' Volumeannotation (Maybe Bool)
vvDeleted
  = lens _vvDeleted (\ s a -> s{_vvDeleted = a})

-- | Timestamp for the last time this anntoation was updated. (RFC 3339 UTC
-- date-time format).
vvUpdated :: Lens' Volumeannotation (Maybe UTCTime)
vvUpdated
  = lens _vvUpdated (\ s a -> s{_vvUpdated = a})

-- | The Layer this annotation is for.
vvLayerId :: Lens' Volumeannotation (Maybe Text)
vvLayerId
  = lens _vvLayerId (\ s a -> s{_vvLayerId = a})

-- | The content ranges to identify the selected text.
--
-- /See:/ 'volumeannotationContentRanges' smart constructor.
data VolumeannotationContentRanges = VolumeannotationContentRanges
    { _vcrGbImageRange   :: !(Maybe (Maybe BooksAnnotationsRange))
    , _vcrContentVersion :: !(Maybe Text)
    , _vcrGbTextRange    :: !(Maybe (Maybe BooksAnnotationsRange))
    , _vcrCfiRange       :: !(Maybe (Maybe BooksAnnotationsRange))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
vcrGbImageRange :: Lens' VolumeannotationContentRanges (Maybe (Maybe BooksAnnotationsRange))
vcrGbImageRange
  = lens _vcrGbImageRange
      (\ s a -> s{_vcrGbImageRange = a})

-- | Content version applicable to ranges below.
vcrContentVersion :: Lens' VolumeannotationContentRanges (Maybe Text)
vcrContentVersion
  = lens _vcrContentVersion
      (\ s a -> s{_vcrContentVersion = a})

-- | Range in GB text format for this annotation for version above.
vcrGbTextRange :: Lens' VolumeannotationContentRanges (Maybe (Maybe BooksAnnotationsRange))
vcrGbTextRange
  = lens _vcrGbTextRange
      (\ s a -> s{_vcrGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
vcrCfiRange :: Lens' VolumeannotationContentRanges (Maybe (Maybe BooksAnnotationsRange))
vcrCfiRange
  = lens _vcrCfiRange (\ s a -> s{_vcrCfiRange = a})

--
-- /See:/ 'volumeannotations' smart constructor.
data Volumeannotations = Volumeannotations
    { _volTotalItems    :: !(Maybe Int32)
    , _volNextPageToken :: !(Maybe Text)
    , _volKind          :: !Text
    , _volItems         :: !(Maybe [Maybe Volumeannotation])
    , _volVersion       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumeannotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'volTotalItems'
--
-- * 'volNextPageToken'
--
-- * 'volKind'
--
-- * 'volItems'
--
-- * 'volVersion'
volumeannotations
    :: Volumeannotations
volumeannotations =
    Volumeannotations
    { _volTotalItems = Nothing
    , _volNextPageToken = Nothing
    , _volKind = "books#volumeannotations"
    , _volItems = Nothing
    , _volVersion = Nothing
    }

-- | The total number of volume annotations found.
volTotalItems :: Lens' Volumeannotations (Maybe Int32)
volTotalItems
  = lens _volTotalItems
      (\ s a -> s{_volTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
volNextPageToken :: Lens' Volumeannotations (Maybe Text)
volNextPageToken
  = lens _volNextPageToken
      (\ s a -> s{_volNextPageToken = a})

-- | Resource type
volKind :: Lens' Volumeannotations Text
volKind = lens _volKind (\ s a -> s{_volKind = a})

-- | A list of volume annotations.
volItems :: Lens' Volumeannotations [Maybe Volumeannotation]
volItems
  = lens _volItems (\ s a -> s{_volItems = a}) .
      _Default
      . _Coerce

-- | The version string for all of the volume annotations in this layer (not
-- just the ones in this response). Note: the version string doesn\'t apply
-- to the annotation data, just the information in this response (e.g. the
-- location of annotations in the book).
volVersion :: Lens' Volumeannotations (Maybe Text)
volVersion
  = lens _volVersion (\ s a -> s{_volVersion = a})

--
-- /See:/ 'volumes' smart constructor.
data Volumes = Volumes
    { _vTotalItems :: !(Maybe Int32)
    , _vKind       :: !Text
    , _vItems      :: !(Maybe [Maybe Volume])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vTotalItems'
--
-- * 'vKind'
--
-- * 'vItems'
volumes
    :: Volumes
volumes =
    Volumes
    { _vTotalItems = Nothing
    , _vKind = "books#volumes"
    , _vItems = Nothing
    }

-- | Total number of volumes found. This might be greater than the number of
-- volumes returned in this response if results have been paginated.
vTotalItems :: Lens' Volumes (Maybe Int32)
vTotalItems
  = lens _vTotalItems (\ s a -> s{_vTotalItems = a})

-- | Resource type.
vKind :: Lens' Volumes Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | A list of volumes.
vItems :: Lens' Volumes [Maybe Volume]
vItems
  = lens _vItems (\ s a -> s{_vItems = a}) . _Default .
      _Coerce
