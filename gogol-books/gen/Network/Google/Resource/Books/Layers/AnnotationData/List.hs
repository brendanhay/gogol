{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Books.Layers.AnnotationData.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the annotation data for a volume and layer.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.layers.annotationData.list@.
module Network.Google.Resource.Books.Layers.AnnotationData.List
    (
    -- * REST Resource
      LayersAnnotationDataListResource

    -- * Creating a Request
    , layersAnnotationDataList
    , LayersAnnotationDataList

    -- * Request Lenses
    , ladlW
    , ladlScale
    , ladlLocale
    , ladlContentVersion
    , ladlUpdatedMax
    , ladlUpdatedMin
    , ladlAnnotationDataId
    , ladlVolumeId
    , ladlSource
    , ladlH
    , ladlPageToken
    , ladlLayerId
    , ladlMaxResults
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.layers.annotationData.list@ method which the
-- 'LayersAnnotationDataList' request conforms to.
type LayersAnnotationDataListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layers" :>
               Capture "layerId" Text :>
                 "data" :>
                   QueryParam "contentVersion" Text :>
                     QueryParam "w" (Textual Int32) :>
                       QueryParam "scale" (Textual Int32) :>
                         QueryParam "locale" Text :>
                           QueryParam "updatedMax" Text :>
                             QueryParam "updatedMin" Text :>
                               QueryParams "annotationDataId" Text :>
                                 QueryParam "source" Text :>
                                   QueryParam "h" (Textual Int32) :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] AnnotationsData

-- | Gets the annotation data for a volume and layer.
--
-- /See:/ 'layersAnnotationDataList' smart constructor.
data LayersAnnotationDataList = LayersAnnotationDataList
    { _ladlW                :: !(Maybe (Textual Int32))
    , _ladlScale            :: !(Maybe (Textual Int32))
    , _ladlLocale           :: !(Maybe Text)
    , _ladlContentVersion   :: !Text
    , _ladlUpdatedMax       :: !(Maybe Text)
    , _ladlUpdatedMin       :: !(Maybe Text)
    , _ladlAnnotationDataId :: !(Maybe [Text])
    , _ladlVolumeId         :: !Text
    , _ladlSource           :: !(Maybe Text)
    , _ladlH                :: !(Maybe (Textual Int32))
    , _ladlPageToken        :: !(Maybe Text)
    , _ladlLayerId          :: !Text
    , _ladlMaxResults       :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersAnnotationDataList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladlW'
--
-- * 'ladlScale'
--
-- * 'ladlLocale'
--
-- * 'ladlContentVersion'
--
-- * 'ladlUpdatedMax'
--
-- * 'ladlUpdatedMin'
--
-- * 'ladlAnnotationDataId'
--
-- * 'ladlVolumeId'
--
-- * 'ladlSource'
--
-- * 'ladlH'
--
-- * 'ladlPageToken'
--
-- * 'ladlLayerId'
--
-- * 'ladlMaxResults'
layersAnnotationDataList
    :: Text -- ^ 'ladlContentVersion'
    -> Text -- ^ 'ladlVolumeId'
    -> Text -- ^ 'ladlLayerId'
    -> LayersAnnotationDataList
layersAnnotationDataList pLadlContentVersion_ pLadlVolumeId_ pLadlLayerId_ =
    LayersAnnotationDataList
    { _ladlW = Nothing
    , _ladlScale = Nothing
    , _ladlLocale = Nothing
    , _ladlContentVersion = pLadlContentVersion_
    , _ladlUpdatedMax = Nothing
    , _ladlUpdatedMin = Nothing
    , _ladlAnnotationDataId = Nothing
    , _ladlVolumeId = pLadlVolumeId_
    , _ladlSource = Nothing
    , _ladlH = Nothing
    , _ladlPageToken = Nothing
    , _ladlLayerId = pLadlLayerId_
    , _ladlMaxResults = Nothing
    }

-- | The requested pixel width for any images. If width is provided height
-- must also be provided.
ladlW :: Lens' LayersAnnotationDataList (Maybe Int32)
ladlW
  = lens _ladlW (\ s a -> s{_ladlW = a}) .
      mapping _Coerce

-- | The requested scale for the image.
ladlScale :: Lens' LayersAnnotationDataList (Maybe Int32)
ladlScale
  = lens _ladlScale (\ s a -> s{_ladlScale = a}) .
      mapping _Coerce

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
ladlLocale :: Lens' LayersAnnotationDataList (Maybe Text)
ladlLocale
  = lens _ladlLocale (\ s a -> s{_ladlLocale = a})

-- | The content version for the requested volume.
ladlContentVersion :: Lens' LayersAnnotationDataList Text
ladlContentVersion
  = lens _ladlContentVersion
      (\ s a -> s{_ladlContentVersion = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
ladlUpdatedMax :: Lens' LayersAnnotationDataList (Maybe Text)
ladlUpdatedMax
  = lens _ladlUpdatedMax
      (\ s a -> s{_ladlUpdatedMax = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
ladlUpdatedMin :: Lens' LayersAnnotationDataList (Maybe Text)
ladlUpdatedMin
  = lens _ladlUpdatedMin
      (\ s a -> s{_ladlUpdatedMin = a})

-- | The list of Annotation Data Ids to retrieve. Pagination is ignored if
-- this is set.
ladlAnnotationDataId :: Lens' LayersAnnotationDataList [Text]
ladlAnnotationDataId
  = lens _ladlAnnotationDataId
      (\ s a -> s{_ladlAnnotationDataId = a})
      . _Default
      . _Coerce

-- | The volume to retrieve annotation data for.
ladlVolumeId :: Lens' LayersAnnotationDataList Text
ladlVolumeId
  = lens _ladlVolumeId (\ s a -> s{_ladlVolumeId = a})

-- | String to identify the originator of this request.
ladlSource :: Lens' LayersAnnotationDataList (Maybe Text)
ladlSource
  = lens _ladlSource (\ s a -> s{_ladlSource = a})

-- | The requested pixel height for any images. If height is provided width
-- must also be provided.
ladlH :: Lens' LayersAnnotationDataList (Maybe Int32)
ladlH
  = lens _ladlH (\ s a -> s{_ladlH = a}) .
      mapping _Coerce

-- | The value of the nextToken from the previous page.
ladlPageToken :: Lens' LayersAnnotationDataList (Maybe Text)
ladlPageToken
  = lens _ladlPageToken
      (\ s a -> s{_ladlPageToken = a})

-- | The ID for the layer to get the annotation data.
ladlLayerId :: Lens' LayersAnnotationDataList Text
ladlLayerId
  = lens _ladlLayerId (\ s a -> s{_ladlLayerId = a})

-- | Maximum number of results to return
ladlMaxResults :: Lens' LayersAnnotationDataList (Maybe Word32)
ladlMaxResults
  = lens _ladlMaxResults
      (\ s a -> s{_ladlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest LayersAnnotationDataList where
        type Rs LayersAnnotationDataList = AnnotationsData
        requestClient LayersAnnotationDataList{..}
          = go _ladlVolumeId _ladlLayerId
              (Just _ladlContentVersion)
              _ladlW
              _ladlScale
              _ladlLocale
              _ladlUpdatedMax
              _ladlUpdatedMin
              (_ladlAnnotationDataId ^. _Default)
              _ladlSource
              _ladlH
              _ladlPageToken
              _ladlMaxResults
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersAnnotationDataListResource)
                      mempty
