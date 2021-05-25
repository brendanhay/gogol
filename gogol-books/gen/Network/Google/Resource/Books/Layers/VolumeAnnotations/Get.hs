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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the volume annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.volumeAnnotations.get@.
module Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
    (
    -- * REST Resource
      LayersVolumeAnnotationsGetResource

    -- * Creating a Request
    , layersVolumeAnnotationsGet
    , LayersVolumeAnnotationsGet

    -- * Request Lenses
    , lvagXgafv
    , lvagUploadProtocol
    , lvagLocale
    , lvagAccessToken
    , lvagUploadType
    , lvagAnnotationId
    , lvagVolumeId
    , lvagSource
    , lvagLayerId
    , lvagCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.layers.volumeAnnotations.get@ method which the
-- 'LayersVolumeAnnotationsGet' request conforms to.
type LayersVolumeAnnotationsGetResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layers" :>
               Capture "layerId" Text :>
                 "annotations" :>
                   Capture "annotationId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "locale" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "source" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Volumeannotation

-- | Gets the volume annotation.
--
-- /See:/ 'layersVolumeAnnotationsGet' smart constructor.
data LayersVolumeAnnotationsGet =
  LayersVolumeAnnotationsGet'
    { _lvagXgafv :: !(Maybe Xgafv)
    , _lvagUploadProtocol :: !(Maybe Text)
    , _lvagLocale :: !(Maybe Text)
    , _lvagAccessToken :: !(Maybe Text)
    , _lvagUploadType :: !(Maybe Text)
    , _lvagAnnotationId :: !Text
    , _lvagVolumeId :: !Text
    , _lvagSource :: !(Maybe Text)
    , _lvagLayerId :: !Text
    , _lvagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersVolumeAnnotationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvagXgafv'
--
-- * 'lvagUploadProtocol'
--
-- * 'lvagLocale'
--
-- * 'lvagAccessToken'
--
-- * 'lvagUploadType'
--
-- * 'lvagAnnotationId'
--
-- * 'lvagVolumeId'
--
-- * 'lvagSource'
--
-- * 'lvagLayerId'
--
-- * 'lvagCallback'
layersVolumeAnnotationsGet
    :: Text -- ^ 'lvagAnnotationId'
    -> Text -- ^ 'lvagVolumeId'
    -> Text -- ^ 'lvagLayerId'
    -> LayersVolumeAnnotationsGet
layersVolumeAnnotationsGet pLvagAnnotationId_ pLvagVolumeId_ pLvagLayerId_ =
  LayersVolumeAnnotationsGet'
    { _lvagXgafv = Nothing
    , _lvagUploadProtocol = Nothing
    , _lvagLocale = Nothing
    , _lvagAccessToken = Nothing
    , _lvagUploadType = Nothing
    , _lvagAnnotationId = pLvagAnnotationId_
    , _lvagVolumeId = pLvagVolumeId_
    , _lvagSource = Nothing
    , _lvagLayerId = pLvagLayerId_
    , _lvagCallback = Nothing
    }


-- | V1 error format.
lvagXgafv :: Lens' LayersVolumeAnnotationsGet (Maybe Xgafv)
lvagXgafv
  = lens _lvagXgafv (\ s a -> s{_lvagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lvagUploadProtocol :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagUploadProtocol
  = lens _lvagUploadProtocol
      (\ s a -> s{_lvagUploadProtocol = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvagLocale :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagLocale
  = lens _lvagLocale (\ s a -> s{_lvagLocale = a})

-- | OAuth access token.
lvagAccessToken :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagAccessToken
  = lens _lvagAccessToken
      (\ s a -> s{_lvagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lvagUploadType :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagUploadType
  = lens _lvagUploadType
      (\ s a -> s{_lvagUploadType = a})

-- | The ID of the volume annotation to retrieve.
lvagAnnotationId :: Lens' LayersVolumeAnnotationsGet Text
lvagAnnotationId
  = lens _lvagAnnotationId
      (\ s a -> s{_lvagAnnotationId = a})

-- | The volume to retrieve annotations for.
lvagVolumeId :: Lens' LayersVolumeAnnotationsGet Text
lvagVolumeId
  = lens _lvagVolumeId (\ s a -> s{_lvagVolumeId = a})

-- | String to identify the originator of this request.
lvagSource :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagSource
  = lens _lvagSource (\ s a -> s{_lvagSource = a})

-- | The ID for the layer to get the annotations.
lvagLayerId :: Lens' LayersVolumeAnnotationsGet Text
lvagLayerId
  = lens _lvagLayerId (\ s a -> s{_lvagLayerId = a})

-- | JSONP
lvagCallback :: Lens' LayersVolumeAnnotationsGet (Maybe Text)
lvagCallback
  = lens _lvagCallback (\ s a -> s{_lvagCallback = a})

instance GoogleRequest LayersVolumeAnnotationsGet
         where
        type Rs LayersVolumeAnnotationsGet = Volumeannotation
        type Scopes LayersVolumeAnnotationsGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersVolumeAnnotationsGet'{..}
          = go _lvagVolumeId _lvagLayerId _lvagAnnotationId
              _lvagXgafv
              _lvagUploadProtocol
              _lvagLocale
              _lvagAccessToken
              _lvagUploadType
              _lvagSource
              _lvagCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersVolumeAnnotationsGetResource)
                      mempty
