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
-- Module      : Network.Google.Resource.Books.Layers.VolumeAnnotations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the volume annotations for a volume and layer.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.volumeAnnotations.list@.
module Network.Google.Resource.Books.Layers.VolumeAnnotations.List
    (
    -- * REST Resource
      LayersVolumeAnnotationsListResource

    -- * Creating a Request
    , layersVolumeAnnotationsList
    , LayersVolumeAnnotationsList

    -- * Request Lenses
    , lvalXgafv
    , lvalUploadProtocol
    , lvalStartOffSet
    , lvalLocale
    , lvalAccessToken
    , lvalContentVersion
    , lvalUploadType
    , lvalShowDeleted
    , lvalVolumeAnnotationsVersion
    , lvalUpdatedMax
    , lvalUpdatedMin
    , lvalEndOffSet
    , lvalVolumeId
    , lvalSource
    , lvalPageToken
    , lvalEndPosition
    , lvalLayerId
    , lvalMaxResults
    , lvalStartPosition
    , lvalCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.layers.volumeAnnotations.list@ method which the
-- 'LayersVolumeAnnotationsList' request conforms to.
type LayersVolumeAnnotationsListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layers" :>
               Capture "layerId" Text :>
                 QueryParam "contentVersion" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "startOffset" Text :>
                         QueryParam "locale" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "showDeleted" Bool :>
                                 QueryParam "volumeAnnotationsVersion" Text :>
                                   QueryParam "updatedMax" Text :>
                                     QueryParam "updatedMin" Text :>
                                       QueryParam "endOffset" Text :>
                                         QueryParam "source" Text :>
                                           QueryParam "pageToken" Text :>
                                             QueryParam "endPosition" Text :>
                                               QueryParam "maxResults"
                                                 (Textual Word32)
                                                 :>
                                                 QueryParam "startPosition" Text
                                                   :>
                                                   QueryParam "callback" Text :>
                                                     QueryParam "alt" AltJSON :>
                                                       Get '[JSON]
                                                         Volumeannotations

-- | Gets the volume annotations for a volume and layer.
--
-- /See:/ 'layersVolumeAnnotationsList' smart constructor.
data LayersVolumeAnnotationsList =
  LayersVolumeAnnotationsList'
    { _lvalXgafv :: !(Maybe Xgafv)
    , _lvalUploadProtocol :: !(Maybe Text)
    , _lvalStartOffSet :: !(Maybe Text)
    , _lvalLocale :: !(Maybe Text)
    , _lvalAccessToken :: !(Maybe Text)
    , _lvalContentVersion :: !Text
    , _lvalUploadType :: !(Maybe Text)
    , _lvalShowDeleted :: !(Maybe Bool)
    , _lvalVolumeAnnotationsVersion :: !(Maybe Text)
    , _lvalUpdatedMax :: !(Maybe Text)
    , _lvalUpdatedMin :: !(Maybe Text)
    , _lvalEndOffSet :: !(Maybe Text)
    , _lvalVolumeId :: !Text
    , _lvalSource :: !(Maybe Text)
    , _lvalPageToken :: !(Maybe Text)
    , _lvalEndPosition :: !(Maybe Text)
    , _lvalLayerId :: !Text
    , _lvalMaxResults :: !(Maybe (Textual Word32))
    , _lvalStartPosition :: !(Maybe Text)
    , _lvalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersVolumeAnnotationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvalXgafv'
--
-- * 'lvalUploadProtocol'
--
-- * 'lvalStartOffSet'
--
-- * 'lvalLocale'
--
-- * 'lvalAccessToken'
--
-- * 'lvalContentVersion'
--
-- * 'lvalUploadType'
--
-- * 'lvalShowDeleted'
--
-- * 'lvalVolumeAnnotationsVersion'
--
-- * 'lvalUpdatedMax'
--
-- * 'lvalUpdatedMin'
--
-- * 'lvalEndOffSet'
--
-- * 'lvalVolumeId'
--
-- * 'lvalSource'
--
-- * 'lvalPageToken'
--
-- * 'lvalEndPosition'
--
-- * 'lvalLayerId'
--
-- * 'lvalMaxResults'
--
-- * 'lvalStartPosition'
--
-- * 'lvalCallback'
layersVolumeAnnotationsList
    :: Text -- ^ 'lvalContentVersion'
    -> Text -- ^ 'lvalVolumeId'
    -> Text -- ^ 'lvalLayerId'
    -> LayersVolumeAnnotationsList
layersVolumeAnnotationsList pLvalContentVersion_ pLvalVolumeId_ pLvalLayerId_ =
  LayersVolumeAnnotationsList'
    { _lvalXgafv = Nothing
    , _lvalUploadProtocol = Nothing
    , _lvalStartOffSet = Nothing
    , _lvalLocale = Nothing
    , _lvalAccessToken = Nothing
    , _lvalContentVersion = pLvalContentVersion_
    , _lvalUploadType = Nothing
    , _lvalShowDeleted = Nothing
    , _lvalVolumeAnnotationsVersion = Nothing
    , _lvalUpdatedMax = Nothing
    , _lvalUpdatedMin = Nothing
    , _lvalEndOffSet = Nothing
    , _lvalVolumeId = pLvalVolumeId_
    , _lvalSource = Nothing
    , _lvalPageToken = Nothing
    , _lvalEndPosition = Nothing
    , _lvalLayerId = pLvalLayerId_
    , _lvalMaxResults = Nothing
    , _lvalStartPosition = Nothing
    , _lvalCallback = Nothing
    }


-- | V1 error format.
lvalXgafv :: Lens' LayersVolumeAnnotationsList (Maybe Xgafv)
lvalXgafv
  = lens _lvalXgafv (\ s a -> s{_lvalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lvalUploadProtocol :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalUploadProtocol
  = lens _lvalUploadProtocol
      (\ s a -> s{_lvalUploadProtocol = a})

-- | The start offset to start retrieving data from.
lvalStartOffSet :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalStartOffSet
  = lens _lvalStartOffSet
      (\ s a -> s{_lvalStartOffSet = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvalLocale :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalLocale
  = lens _lvalLocale (\ s a -> s{_lvalLocale = a})

-- | OAuth access token.
lvalAccessToken :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalAccessToken
  = lens _lvalAccessToken
      (\ s a -> s{_lvalAccessToken = a})

-- | The content version for the requested volume.
lvalContentVersion :: Lens' LayersVolumeAnnotationsList Text
lvalContentVersion
  = lens _lvalContentVersion
      (\ s a -> s{_lvalContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lvalUploadType :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalUploadType
  = lens _lvalUploadType
      (\ s a -> s{_lvalUploadType = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
lvalShowDeleted :: Lens' LayersVolumeAnnotationsList (Maybe Bool)
lvalShowDeleted
  = lens _lvalShowDeleted
      (\ s a -> s{_lvalShowDeleted = a})

-- | The version of the volume annotations that you are requesting.
lvalVolumeAnnotationsVersion :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalVolumeAnnotationsVersion
  = lens _lvalVolumeAnnotationsVersion
      (\ s a -> s{_lvalVolumeAnnotationsVersion = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
lvalUpdatedMax :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalUpdatedMax
  = lens _lvalUpdatedMax
      (\ s a -> s{_lvalUpdatedMax = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
lvalUpdatedMin :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalUpdatedMin
  = lens _lvalUpdatedMin
      (\ s a -> s{_lvalUpdatedMin = a})

-- | The end offset to end retrieving data from.
lvalEndOffSet :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalEndOffSet
  = lens _lvalEndOffSet
      (\ s a -> s{_lvalEndOffSet = a})

-- | The volume to retrieve annotations for.
lvalVolumeId :: Lens' LayersVolumeAnnotationsList Text
lvalVolumeId
  = lens _lvalVolumeId (\ s a -> s{_lvalVolumeId = a})

-- | String to identify the originator of this request.
lvalSource :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalSource
  = lens _lvalSource (\ s a -> s{_lvalSource = a})

-- | The value of the nextToken from the previous page.
lvalPageToken :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalPageToken
  = lens _lvalPageToken
      (\ s a -> s{_lvalPageToken = a})

-- | The end position to end retrieving data from.
lvalEndPosition :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalEndPosition
  = lens _lvalEndPosition
      (\ s a -> s{_lvalEndPosition = a})

-- | The ID for the layer to get the annotations.
lvalLayerId :: Lens' LayersVolumeAnnotationsList Text
lvalLayerId
  = lens _lvalLayerId (\ s a -> s{_lvalLayerId = a})

-- | Maximum number of results to return
lvalMaxResults :: Lens' LayersVolumeAnnotationsList (Maybe Word32)
lvalMaxResults
  = lens _lvalMaxResults
      (\ s a -> s{_lvalMaxResults = a})
      . mapping _Coerce

-- | The start position to start retrieving data from.
lvalStartPosition :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalStartPosition
  = lens _lvalStartPosition
      (\ s a -> s{_lvalStartPosition = a})

-- | JSONP
lvalCallback :: Lens' LayersVolumeAnnotationsList (Maybe Text)
lvalCallback
  = lens _lvalCallback (\ s a -> s{_lvalCallback = a})

instance GoogleRequest LayersVolumeAnnotationsList
         where
        type Rs LayersVolumeAnnotationsList =
             Volumeannotations
        type Scopes LayersVolumeAnnotationsList =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersVolumeAnnotationsList'{..}
          = go _lvalVolumeId _lvalLayerId
              (Just _lvalContentVersion)
              _lvalXgafv
              _lvalUploadProtocol
              _lvalStartOffSet
              _lvalLocale
              _lvalAccessToken
              _lvalUploadType
              _lvalShowDeleted
              _lvalVolumeAnnotationsVersion
              _lvalUpdatedMax
              _lvalUpdatedMin
              _lvalEndOffSet
              _lvalSource
              _lvalPageToken
              _lvalEndPosition
              _lvalMaxResults
              _lvalStartPosition
              _lvalCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy LayersVolumeAnnotationsListResource)
                      mempty
