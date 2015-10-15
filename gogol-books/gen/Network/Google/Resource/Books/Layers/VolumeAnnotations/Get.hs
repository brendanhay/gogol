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
-- Module      : Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the volume annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersVolumeAnnotationsGet@.
module Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
    (
    -- * REST Resource
      LayersVolumeAnnotationsGetResource

    -- * Creating a Request
    , layersVolumeAnnotationsGet'
    , LayersVolumeAnnotationsGet'

    -- * Request Lenses
    , lvagLocale
    , lvagAnnotationId
    , lvagVolumeId
    , lvagSource
    , lvagLayerId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersVolumeAnnotationsGet@ method which the
-- 'LayersVolumeAnnotationsGet'' request conforms to.
type LayersVolumeAnnotationsGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             "annotations" :>
               Capture "annotationId" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "source" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] Volumeannotation

-- | Gets the volume annotation.
--
-- /See:/ 'layersVolumeAnnotationsGet'' smart constructor.
data LayersVolumeAnnotationsGet' = LayersVolumeAnnotationsGet'
    { _lvagLocale       :: !(Maybe Text)
    , _lvagAnnotationId :: !Text
    , _lvagVolumeId     :: !Text
    , _lvagSource       :: !(Maybe Text)
    , _lvagLayerId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersVolumeAnnotationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvagLocale'
--
-- * 'lvagAnnotationId'
--
-- * 'lvagVolumeId'
--
-- * 'lvagSource'
--
-- * 'lvagLayerId'
layersVolumeAnnotationsGet'
    :: Text -- ^ 'annotationId'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersVolumeAnnotationsGet'
layersVolumeAnnotationsGet' pLvagAnnotationId_ pLvagVolumeId_ pLvagLayerId_ =
    LayersVolumeAnnotationsGet'
    { _lvagLocale = Nothing
    , _lvagAnnotationId = pLvagAnnotationId_
    , _lvagVolumeId = pLvagVolumeId_
    , _lvagSource = Nothing
    , _lvagLayerId = pLvagLayerId_
    }

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvagLocale :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagLocale
  = lens _lvagLocale (\ s a -> s{_lvagLocale = a})

-- | The ID of the volume annotation to retrieve.
lvagAnnotationId :: Lens' LayersVolumeAnnotationsGet' Text
lvagAnnotationId
  = lens _lvagAnnotationId
      (\ s a -> s{_lvagAnnotationId = a})

-- | The volume to retrieve annotations for.
lvagVolumeId :: Lens' LayersVolumeAnnotationsGet' Text
lvagVolumeId
  = lens _lvagVolumeId (\ s a -> s{_lvagVolumeId = a})

-- | String to identify the originator of this request.
lvagSource :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagSource
  = lens _lvagSource (\ s a -> s{_lvagSource = a})

-- | The ID for the layer to get the annotations.
lvagLayerId :: Lens' LayersVolumeAnnotationsGet' Text
lvagLayerId
  = lens _lvagLayerId (\ s a -> s{_lvagLayerId = a})

instance GoogleRequest LayersVolumeAnnotationsGet'
         where
        type Rs LayersVolumeAnnotationsGet' =
             Volumeannotation
        requestClient LayersVolumeAnnotationsGet'{..}
          = go _lvagVolumeId _lvagLayerId _lvagAnnotationId
              _lvagLocale
              _lvagSource
              (Just AltJSON)
              books
          where go
                  = buildClient
                      (Proxy :: Proxy LayersVolumeAnnotationsGetResource)
                      mempty
