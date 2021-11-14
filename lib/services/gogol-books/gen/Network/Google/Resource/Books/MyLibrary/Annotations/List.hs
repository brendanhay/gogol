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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of annotations, possibly filtered.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.list@.
module Network.Google.Resource.Books.MyLibrary.Annotations.List
    (
    -- * REST Resource
      MyLibraryAnnotationsListResource

    -- * Creating a Request
    , myLibraryAnnotationsList
    , MyLibraryAnnotationsList

    -- * Request Lenses
    , mlalXgafv
    , mlalUploadProtocol
    , mlalAccessToken
    , mlalContentVersion
    , mlalUploadType
    , mlalShowDeleted
    , mlalUpdatedMax
    , mlalUpdatedMin
    , mlalLayerIds
    , mlalVolumeId
    , mlalSource
    , mlalPageToken
    , mlalLayerId
    , mlalMaxResults
    , mlalCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.list@ method which the
-- 'MyLibraryAnnotationsList' request conforms to.
type MyLibraryAnnotationsListResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "contentVersion" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "showDeleted" Bool :>
                         QueryParam "updatedMax" Text :>
                           QueryParam "updatedMin" Text :>
                             QueryParams "layerIds" Text :>
                               QueryParam "volumeId" Text :>
                                 QueryParam "source" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "layerId" Text :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] Annotations

-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ 'myLibraryAnnotationsList' smart constructor.
data MyLibraryAnnotationsList =
  MyLibraryAnnotationsList'
    { _mlalXgafv :: !(Maybe Xgafv)
    , _mlalUploadProtocol :: !(Maybe Text)
    , _mlalAccessToken :: !(Maybe Text)
    , _mlalContentVersion :: !(Maybe Text)
    , _mlalUploadType :: !(Maybe Text)
    , _mlalShowDeleted :: !(Maybe Bool)
    , _mlalUpdatedMax :: !(Maybe Text)
    , _mlalUpdatedMin :: !(Maybe Text)
    , _mlalLayerIds :: !(Maybe [Text])
    , _mlalVolumeId :: !(Maybe Text)
    , _mlalSource :: !(Maybe Text)
    , _mlalPageToken :: !(Maybe Text)
    , _mlalLayerId :: !(Maybe Text)
    , _mlalMaxResults :: !(Maybe (Textual Word32))
    , _mlalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryAnnotationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlalXgafv'
--
-- * 'mlalUploadProtocol'
--
-- * 'mlalAccessToken'
--
-- * 'mlalContentVersion'
--
-- * 'mlalUploadType'
--
-- * 'mlalShowDeleted'
--
-- * 'mlalUpdatedMax'
--
-- * 'mlalUpdatedMin'
--
-- * 'mlalLayerIds'
--
-- * 'mlalVolumeId'
--
-- * 'mlalSource'
--
-- * 'mlalPageToken'
--
-- * 'mlalLayerId'
--
-- * 'mlalMaxResults'
--
-- * 'mlalCallback'
myLibraryAnnotationsList
    :: MyLibraryAnnotationsList
myLibraryAnnotationsList =
  MyLibraryAnnotationsList'
    { _mlalXgafv = Nothing
    , _mlalUploadProtocol = Nothing
    , _mlalAccessToken = Nothing
    , _mlalContentVersion = Nothing
    , _mlalUploadType = Nothing
    , _mlalShowDeleted = Nothing
    , _mlalUpdatedMax = Nothing
    , _mlalUpdatedMin = Nothing
    , _mlalLayerIds = Nothing
    , _mlalVolumeId = Nothing
    , _mlalSource = Nothing
    , _mlalPageToken = Nothing
    , _mlalLayerId = Nothing
    , _mlalMaxResults = Nothing
    , _mlalCallback = Nothing
    }


-- | V1 error format.
mlalXgafv :: Lens' MyLibraryAnnotationsList (Maybe Xgafv)
mlalXgafv
  = lens _mlalXgafv (\ s a -> s{_mlalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlalUploadProtocol :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalUploadProtocol
  = lens _mlalUploadProtocol
      (\ s a -> s{_mlalUploadProtocol = a})

-- | OAuth access token.
mlalAccessToken :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalAccessToken
  = lens _mlalAccessToken
      (\ s a -> s{_mlalAccessToken = a})

-- | The content version for the requested volume.
mlalContentVersion :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalContentVersion
  = lens _mlalContentVersion
      (\ s a -> s{_mlalContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlalUploadType :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalUploadType
  = lens _mlalUploadType
      (\ s a -> s{_mlalUploadType = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
mlalShowDeleted :: Lens' MyLibraryAnnotationsList (Maybe Bool)
mlalShowDeleted
  = lens _mlalShowDeleted
      (\ s a -> s{_mlalShowDeleted = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
mlalUpdatedMax :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalUpdatedMax
  = lens _mlalUpdatedMax
      (\ s a -> s{_mlalUpdatedMax = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
mlalUpdatedMin :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalUpdatedMin
  = lens _mlalUpdatedMin
      (\ s a -> s{_mlalUpdatedMin = a})

-- | The layer ID(s) to limit annotation by.
mlalLayerIds :: Lens' MyLibraryAnnotationsList [Text]
mlalLayerIds
  = lens _mlalLayerIds (\ s a -> s{_mlalLayerIds = a})
      . _Default
      . _Coerce

-- | The volume to restrict annotations to.
mlalVolumeId :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalVolumeId
  = lens _mlalVolumeId (\ s a -> s{_mlalVolumeId = a})

-- | String to identify the originator of this request.
mlalSource :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalSource
  = lens _mlalSource (\ s a -> s{_mlalSource = a})

-- | The value of the nextToken from the previous page.
mlalPageToken :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalPageToken
  = lens _mlalPageToken
      (\ s a -> s{_mlalPageToken = a})

-- | The layer ID to limit annotation by.
mlalLayerId :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalLayerId
  = lens _mlalLayerId (\ s a -> s{_mlalLayerId = a})

-- | Maximum number of results to return
mlalMaxResults :: Lens' MyLibraryAnnotationsList (Maybe Word32)
mlalMaxResults
  = lens _mlalMaxResults
      (\ s a -> s{_mlalMaxResults = a})
      . mapping _Coerce

-- | JSONP
mlalCallback :: Lens' MyLibraryAnnotationsList (Maybe Text)
mlalCallback
  = lens _mlalCallback (\ s a -> s{_mlalCallback = a})

instance GoogleRequest MyLibraryAnnotationsList where
        type Rs MyLibraryAnnotationsList = Annotations
        type Scopes MyLibraryAnnotationsList =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsList'{..}
          = go _mlalXgafv _mlalUploadProtocol _mlalAccessToken
              _mlalContentVersion
              _mlalUploadType
              _mlalShowDeleted
              _mlalUpdatedMax
              _mlalUpdatedMin
              (_mlalLayerIds ^. _Default)
              _mlalVolumeId
              _mlalSource
              _mlalPageToken
              _mlalLayerId
              _mlalMaxResults
              _mlalCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsListResource)
                      mempty
