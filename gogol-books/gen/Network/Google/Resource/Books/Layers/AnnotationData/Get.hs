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
-- Module      : Network.Google.Resource.Books.Layers.AnnotationData.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the annotation data.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.layers.annotationData.get@.
module Network.Google.Resource.Books.Layers.AnnotationData.Get
    (
    -- * REST Resource
      LayersAnnotationDataGetResource

    -- * Creating a Request
    , layersAnnotationDataGet
    , LayersAnnotationDataGet

    -- * Request Lenses
    , ladgW
    , ladgScale
    , ladgLocale
    , ladgContentVersion
    , ladgAllowWebDefinitions
    , ladgAnnotationDataId
    , ladgVolumeId
    , ladgSource
    , ladgH
    , ladgLayerId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.layers.annotationData.get@ method which the
-- 'LayersAnnotationDataGet' request conforms to.
type LayersAnnotationDataGetResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layers" :>
               Capture "layerId" Text :>
                 "data" :>
                   Capture "annotationDataId" Text :>
                     QueryParam "contentVersion" Text :>
                       QueryParam "w" (Textual Int32) :>
                         QueryParam "scale" (Textual Int32) :>
                           QueryParam "locale" Text :>
                             QueryParam "allowWebDefinitions" Bool :>
                               QueryParam "source" Text :>
                                 QueryParam "h" (Textual Int32) :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] AnnotationData

-- | Gets the annotation data.
--
-- /See:/ 'layersAnnotationDataGet' smart constructor.
data LayersAnnotationDataGet = LayersAnnotationDataGet
    { _ladgW                   :: !(Maybe (Textual Int32))
    , _ladgScale               :: !(Maybe (Textual Int32))
    , _ladgLocale              :: !(Maybe Text)
    , _ladgContentVersion      :: !Text
    , _ladgAllowWebDefinitions :: !(Maybe Bool)
    , _ladgAnnotationDataId    :: !Text
    , _ladgVolumeId            :: !Text
    , _ladgSource              :: !(Maybe Text)
    , _ladgH                   :: !(Maybe (Textual Int32))
    , _ladgLayerId             :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersAnnotationDataGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladgW'
--
-- * 'ladgScale'
--
-- * 'ladgLocale'
--
-- * 'ladgContentVersion'
--
-- * 'ladgAllowWebDefinitions'
--
-- * 'ladgAnnotationDataId'
--
-- * 'ladgVolumeId'
--
-- * 'ladgSource'
--
-- * 'ladgH'
--
-- * 'ladgLayerId'
layersAnnotationDataGet
    :: Text -- ^ 'ladgContentVersion'
    -> Text -- ^ 'ladgAnnotationDataId'
    -> Text -- ^ 'ladgVolumeId'
    -> Text -- ^ 'ladgLayerId'
    -> LayersAnnotationDataGet
layersAnnotationDataGet pLadgContentVersion_ pLadgAnnotationDataId_ pLadgVolumeId_ pLadgLayerId_ =
    LayersAnnotationDataGet
    { _ladgW = Nothing
    , _ladgScale = Nothing
    , _ladgLocale = Nothing
    , _ladgContentVersion = pLadgContentVersion_
    , _ladgAllowWebDefinitions = Nothing
    , _ladgAnnotationDataId = pLadgAnnotationDataId_
    , _ladgVolumeId = pLadgVolumeId_
    , _ladgSource = Nothing
    , _ladgH = Nothing
    , _ladgLayerId = pLadgLayerId_
    }

-- | The requested pixel width for any images. If width is provided height
-- must also be provided.
ladgW :: Lens' LayersAnnotationDataGet (Maybe Int32)
ladgW
  = lens _ladgW (\ s a -> s{_ladgW = a}) .
      mapping _Coerce

-- | The requested scale for the image.
ladgScale :: Lens' LayersAnnotationDataGet (Maybe Int32)
ladgScale
  = lens _ladgScale (\ s a -> s{_ladgScale = a}) .
      mapping _Coerce

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
ladgLocale :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgLocale
  = lens _ladgLocale (\ s a -> s{_ladgLocale = a})

-- | The content version for the volume you are trying to retrieve.
ladgContentVersion :: Lens' LayersAnnotationDataGet Text
ladgContentVersion
  = lens _ladgContentVersion
      (\ s a -> s{_ladgContentVersion = a})

-- | For the dictionary layer. Whether or not to allow web definitions.
ladgAllowWebDefinitions :: Lens' LayersAnnotationDataGet (Maybe Bool)
ladgAllowWebDefinitions
  = lens _ladgAllowWebDefinitions
      (\ s a -> s{_ladgAllowWebDefinitions = a})

-- | The ID of the annotation data to retrieve.
ladgAnnotationDataId :: Lens' LayersAnnotationDataGet Text
ladgAnnotationDataId
  = lens _ladgAnnotationDataId
      (\ s a -> s{_ladgAnnotationDataId = a})

-- | The volume to retrieve annotations for.
ladgVolumeId :: Lens' LayersAnnotationDataGet Text
ladgVolumeId
  = lens _ladgVolumeId (\ s a -> s{_ladgVolumeId = a})

-- | String to identify the originator of this request.
ladgSource :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgSource
  = lens _ladgSource (\ s a -> s{_ladgSource = a})

-- | The requested pixel height for any images. If height is provided width
-- must also be provided.
ladgH :: Lens' LayersAnnotationDataGet (Maybe Int32)
ladgH
  = lens _ladgH (\ s a -> s{_ladgH = a}) .
      mapping _Coerce

-- | The ID for the layer to get the annotations.
ladgLayerId :: Lens' LayersAnnotationDataGet Text
ladgLayerId
  = lens _ladgLayerId (\ s a -> s{_ladgLayerId = a})

instance GoogleRequest LayersAnnotationDataGet where
        type Rs LayersAnnotationDataGet = AnnotationData
        requestClient LayersAnnotationDataGet{..}
          = go _ladgVolumeId _ladgLayerId _ladgAnnotationDataId
              (Just _ladgContentVersion)
              _ladgW
              _ladgScale
              _ladgLocale
              _ladgAllowWebDefinitions
              _ladgSource
              _ladgH
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersAnnotationDataGetResource)
                      mempty
