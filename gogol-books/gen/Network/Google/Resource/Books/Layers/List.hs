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
-- Module      : Network.Google.Resource.Books.Layers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the layer summaries for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.list@.
module Network.Google.Resource.Books.Layers.List
    (
    -- * REST Resource
      LayersListResource

    -- * Creating a Request
    , layersList
    , LayersList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llContentVersion
    , llUploadType
    , llVolumeId
    , llSource
    , llPageToken
    , llMaxResults
    , llCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.layers.list@ method which the
-- 'LayersList' request conforms to.
type LayersListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layersummary" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "contentVersion" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Layersummaries

-- | List the layer summaries for a volume.
--
-- /See:/ 'layersList' smart constructor.
data LayersList =
  LayersList'
    { _llXgafv :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken :: !(Maybe Text)
    , _llContentVersion :: !(Maybe Text)
    , _llUploadType :: !(Maybe Text)
    , _llVolumeId :: !Text
    , _llSource :: !(Maybe Text)
    , _llPageToken :: !(Maybe Text)
    , _llMaxResults :: !(Maybe (Textual Word32))
    , _llCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llAccessToken'
--
-- * 'llContentVersion'
--
-- * 'llUploadType'
--
-- * 'llVolumeId'
--
-- * 'llSource'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
--
-- * 'llCallback'
layersList
    :: Text -- ^ 'llVolumeId'
    -> LayersList
layersList pLlVolumeId_ =
  LayersList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llContentVersion = Nothing
    , _llUploadType = Nothing
    , _llVolumeId = pLlVolumeId_
    , _llSource = Nothing
    , _llPageToken = Nothing
    , _llMaxResults = Nothing
    , _llCallback = Nothing
    }


-- | V1 error format.
llXgafv :: Lens' LayersList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LayersList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | OAuth access token.
llAccessToken :: Lens' LayersList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | The content version for the requested volume.
llContentVersion :: Lens' LayersList (Maybe Text)
llContentVersion
  = lens _llContentVersion
      (\ s a -> s{_llContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LayersList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | The volume to retrieve layers for.
llVolumeId :: Lens' LayersList Text
llVolumeId
  = lens _llVolumeId (\ s a -> s{_llVolumeId = a})

-- | String to identify the originator of this request.
llSource :: Lens' LayersList (Maybe Text)
llSource = lens _llSource (\ s a -> s{_llSource = a})

-- | The value of the nextToken from the previous page.
llPageToken :: Lens' LayersList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | Maximum number of results to return
llMaxResults :: Lens' LayersList (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . mapping _Coerce

-- | JSONP
llCallback :: Lens' LayersList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LayersList where
        type Rs LayersList = Layersummaries
        type Scopes LayersList =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersList'{..}
          = go _llVolumeId _llXgafv _llUploadProtocol
              _llAccessToken
              _llContentVersion
              _llUploadType
              _llSource
              _llPageToken
              _llMaxResults
              _llCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy LayersListResource)
                      mempty
