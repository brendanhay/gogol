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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the annotation data.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.annotationData.get@.
module Network.Google.Resource.Books.Layers.AnnotationData.Get
    (
    -- * REST Resource
      LayersAnnotationDataGetResource

    -- * Creating a Request
    , layersAnnotationDataGet
    , LayersAnnotationDataGet

    -- * Request Lenses
    , ladgXgafv
    , ladgW
    , ladgUploadProtocol
    , ladgScale
    , ladgLocale
    , ladgAccessToken
    , ladgContentVersion
    , ladgUploadType
    , ladgAllowWebDefinitions
    , ladgAnnotationDataId
    , ladgVolumeId
    , ladgSource
    , ladgH
    , ladgLayerId
    , ladgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

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
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "w" (Textual Int32) :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "scale" (Textual Int32) :>
                               QueryParam "locale" Text :>
                                 QueryParam "access_token" Text :>
                                   QueryParam "uploadType" Text :>
                                     QueryParam "allowWebDefinitions" Bool :>
                                       QueryParam "source" Text :>
                                         QueryParam "h" (Textual Int32) :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 DictionaryAnnotationData

-- | Gets the annotation data.
--
-- /See:/ 'layersAnnotationDataGet' smart constructor.
data LayersAnnotationDataGet =
  LayersAnnotationDataGet'
    { _ladgXgafv :: !(Maybe Xgafv)
    , _ladgW :: !(Maybe (Textual Int32))
    , _ladgUploadProtocol :: !(Maybe Text)
    , _ladgScale :: !(Maybe (Textual Int32))
    , _ladgLocale :: !(Maybe Text)
    , _ladgAccessToken :: !(Maybe Text)
    , _ladgContentVersion :: !Text
    , _ladgUploadType :: !(Maybe Text)
    , _ladgAllowWebDefinitions :: !(Maybe Bool)
    , _ladgAnnotationDataId :: !Text
    , _ladgVolumeId :: !Text
    , _ladgSource :: !(Maybe Text)
    , _ladgH :: !(Maybe (Textual Int32))
    , _ladgLayerId :: !Text
    , _ladgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersAnnotationDataGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladgXgafv'
--
-- * 'ladgW'
--
-- * 'ladgUploadProtocol'
--
-- * 'ladgScale'
--
-- * 'ladgLocale'
--
-- * 'ladgAccessToken'
--
-- * 'ladgContentVersion'
--
-- * 'ladgUploadType'
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
--
-- * 'ladgCallback'
layersAnnotationDataGet
    :: Text -- ^ 'ladgContentVersion'
    -> Text -- ^ 'ladgAnnotationDataId'
    -> Text -- ^ 'ladgVolumeId'
    -> Text -- ^ 'ladgLayerId'
    -> LayersAnnotationDataGet
layersAnnotationDataGet pLadgContentVersion_ pLadgAnnotationDataId_ pLadgVolumeId_ pLadgLayerId_ =
  LayersAnnotationDataGet'
    { _ladgXgafv = Nothing
    , _ladgW = Nothing
    , _ladgUploadProtocol = Nothing
    , _ladgScale = Nothing
    , _ladgLocale = Nothing
    , _ladgAccessToken = Nothing
    , _ladgContentVersion = pLadgContentVersion_
    , _ladgUploadType = Nothing
    , _ladgAllowWebDefinitions = Nothing
    , _ladgAnnotationDataId = pLadgAnnotationDataId_
    , _ladgVolumeId = pLadgVolumeId_
    , _ladgSource = Nothing
    , _ladgH = Nothing
    , _ladgLayerId = pLadgLayerId_
    , _ladgCallback = Nothing
    }


-- | V1 error format.
ladgXgafv :: Lens' LayersAnnotationDataGet (Maybe Xgafv)
ladgXgafv
  = lens _ladgXgafv (\ s a -> s{_ladgXgafv = a})

-- | The requested pixel width for any images. If width is provided height
-- must also be provided.
ladgW :: Lens' LayersAnnotationDataGet (Maybe Int32)
ladgW
  = lens _ladgW (\ s a -> s{_ladgW = a}) .
      mapping _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ladgUploadProtocol :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgUploadProtocol
  = lens _ladgUploadProtocol
      (\ s a -> s{_ladgUploadProtocol = a})

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

-- | OAuth access token.
ladgAccessToken :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgAccessToken
  = lens _ladgAccessToken
      (\ s a -> s{_ladgAccessToken = a})

-- | The content version for the volume you are trying to retrieve.
ladgContentVersion :: Lens' LayersAnnotationDataGet Text
ladgContentVersion
  = lens _ladgContentVersion
      (\ s a -> s{_ladgContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ladgUploadType :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgUploadType
  = lens _ladgUploadType
      (\ s a -> s{_ladgUploadType = a})

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

-- | JSONP
ladgCallback :: Lens' LayersAnnotationDataGet (Maybe Text)
ladgCallback
  = lens _ladgCallback (\ s a -> s{_ladgCallback = a})

instance GoogleRequest LayersAnnotationDataGet where
        type Rs LayersAnnotationDataGet =
             DictionaryAnnotationData
        type Scopes LayersAnnotationDataGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersAnnotationDataGet'{..}
          = go _ladgVolumeId _ladgLayerId _ladgAnnotationDataId
              (Just _ladgContentVersion)
              _ladgXgafv
              _ladgW
              _ladgUploadProtocol
              _ladgScale
              _ladgLocale
              _ladgAccessToken
              _ladgUploadType
              _ladgAllowWebDefinitions
              _ladgSource
              _ladgH
              _ladgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersAnnotationDataGetResource)
                      mempty
