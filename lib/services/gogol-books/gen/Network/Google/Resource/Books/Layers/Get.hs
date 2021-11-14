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
-- Module      : Network.Google.Resource.Books.Layers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the layer summary for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.get@.
module Network.Google.Resource.Books.Layers.Get
    (
    -- * REST Resource
      LayersGetResource

    -- * Creating a Request
    , layersGet
    , LayersGet

    -- * Request Lenses
    , lgXgafv
    , lgUploadProtocol
    , lgAccessToken
    , lgContentVersion
    , lgUploadType
    , lgVolumeId
    , lgSource
    , lgCallback
    , lgSummaryId
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.layers.get@ method which the
-- 'LayersGet' request conforms to.
type LayersGetResource =
     "books" :>
       "v1" :>
         "volumes" :>
           Capture "volumeId" Text :>
             "layersummary" :>
               Capture "summaryId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "contentVersion" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "source" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] Layersummary

-- | Gets the layer summary for a volume.
--
-- /See:/ 'layersGet' smart constructor.
data LayersGet =
  LayersGet'
    { _lgXgafv :: !(Maybe Xgafv)
    , _lgUploadProtocol :: !(Maybe Text)
    , _lgAccessToken :: !(Maybe Text)
    , _lgContentVersion :: !(Maybe Text)
    , _lgUploadType :: !(Maybe Text)
    , _lgVolumeId :: !Text
    , _lgSource :: !(Maybe Text)
    , _lgCallback :: !(Maybe Text)
    , _lgSummaryId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LayersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgXgafv'
--
-- * 'lgUploadProtocol'
--
-- * 'lgAccessToken'
--
-- * 'lgContentVersion'
--
-- * 'lgUploadType'
--
-- * 'lgVolumeId'
--
-- * 'lgSource'
--
-- * 'lgCallback'
--
-- * 'lgSummaryId'
layersGet
    :: Text -- ^ 'lgVolumeId'
    -> Text -- ^ 'lgSummaryId'
    -> LayersGet
layersGet pLgVolumeId_ pLgSummaryId_ =
  LayersGet'
    { _lgXgafv = Nothing
    , _lgUploadProtocol = Nothing
    , _lgAccessToken = Nothing
    , _lgContentVersion = Nothing
    , _lgUploadType = Nothing
    , _lgVolumeId = pLgVolumeId_
    , _lgSource = Nothing
    , _lgCallback = Nothing
    , _lgSummaryId = pLgSummaryId_
    }


-- | V1 error format.
lgXgafv :: Lens' LayersGet (Maybe Xgafv)
lgXgafv = lens _lgXgafv (\ s a -> s{_lgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lgUploadProtocol :: Lens' LayersGet (Maybe Text)
lgUploadProtocol
  = lens _lgUploadProtocol
      (\ s a -> s{_lgUploadProtocol = a})

-- | OAuth access token.
lgAccessToken :: Lens' LayersGet (Maybe Text)
lgAccessToken
  = lens _lgAccessToken
      (\ s a -> s{_lgAccessToken = a})

-- | The content version for the requested volume.
lgContentVersion :: Lens' LayersGet (Maybe Text)
lgContentVersion
  = lens _lgContentVersion
      (\ s a -> s{_lgContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lgUploadType :: Lens' LayersGet (Maybe Text)
lgUploadType
  = lens _lgUploadType (\ s a -> s{_lgUploadType = a})

-- | The volume to retrieve layers for.
lgVolumeId :: Lens' LayersGet Text
lgVolumeId
  = lens _lgVolumeId (\ s a -> s{_lgVolumeId = a})

-- | String to identify the originator of this request.
lgSource :: Lens' LayersGet (Maybe Text)
lgSource = lens _lgSource (\ s a -> s{_lgSource = a})

-- | JSONP
lgCallback :: Lens' LayersGet (Maybe Text)
lgCallback
  = lens _lgCallback (\ s a -> s{_lgCallback = a})

-- | The ID for the layer to get the summary for.
lgSummaryId :: Lens' LayersGet Text
lgSummaryId
  = lens _lgSummaryId (\ s a -> s{_lgSummaryId = a})

instance GoogleRequest LayersGet where
        type Rs LayersGet = Layersummary
        type Scopes LayersGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient LayersGet'{..}
          = go _lgVolumeId _lgSummaryId _lgXgafv
              _lgUploadProtocol
              _lgAccessToken
              _lgContentVersion
              _lgUploadType
              _lgSource
              _lgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy LayersGetResource)
                      mempty
