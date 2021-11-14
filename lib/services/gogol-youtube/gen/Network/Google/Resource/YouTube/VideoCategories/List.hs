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
-- Module      : Network.Google.Resource.YouTube.VideoCategories.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videoCategories.list@.
module Network.Google.Resource.YouTube.VideoCategories.List
    (
    -- * REST Resource
      VideoCategoriesListResource

    -- * Creating a Request
    , videoCategoriesList
    , VideoCategoriesList

    -- * Request Lenses
    , vclXgafv
    , vclPart
    , vclUploadProtocol
    , vclRegionCode
    , vclAccessToken
    , vclUploadType
    , vclHl
    , vclId
    , vclCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videoCategories.list@ method which the
-- 'VideoCategoriesList' request conforms to.
type VideoCategoriesListResource =
     "youtube" :>
       "v3" :>
         "videoCategories" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "regionCode" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "hl" Text :>
                         QueryParams "id" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VideoCategoryListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'videoCategoriesList' smart constructor.
data VideoCategoriesList =
  VideoCategoriesList'
    { _vclXgafv :: !(Maybe Xgafv)
    , _vclPart :: ![Text]
    , _vclUploadProtocol :: !(Maybe Text)
    , _vclRegionCode :: !(Maybe Text)
    , _vclAccessToken :: !(Maybe Text)
    , _vclUploadType :: !(Maybe Text)
    , _vclHl :: !Text
    , _vclId :: !(Maybe [Text])
    , _vclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideoCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclXgafv'
--
-- * 'vclPart'
--
-- * 'vclUploadProtocol'
--
-- * 'vclRegionCode'
--
-- * 'vclAccessToken'
--
-- * 'vclUploadType'
--
-- * 'vclHl'
--
-- * 'vclId'
--
-- * 'vclCallback'
videoCategoriesList
    :: [Text] -- ^ 'vclPart'
    -> VideoCategoriesList
videoCategoriesList pVclPart_ =
  VideoCategoriesList'
    { _vclXgafv = Nothing
    , _vclPart = _Coerce # pVclPart_
    , _vclUploadProtocol = Nothing
    , _vclRegionCode = Nothing
    , _vclAccessToken = Nothing
    , _vclUploadType = Nothing
    , _vclHl = "en-US"
    , _vclId = Nothing
    , _vclCallback = Nothing
    }


-- | V1 error format.
vclXgafv :: Lens' VideoCategoriesList (Maybe Xgafv)
vclXgafv = lens _vclXgafv (\ s a -> s{_vclXgafv = a})

-- | The *part* parameter specifies the videoCategory resource properties
-- that the API response will include. Set the parameter value to snippet.
vclPart :: Lens' VideoCategoriesList [Text]
vclPart
  = lens _vclPart (\ s a -> s{_vclPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vclUploadProtocol :: Lens' VideoCategoriesList (Maybe Text)
vclUploadProtocol
  = lens _vclUploadProtocol
      (\ s a -> s{_vclUploadProtocol = a})

vclRegionCode :: Lens' VideoCategoriesList (Maybe Text)
vclRegionCode
  = lens _vclRegionCode
      (\ s a -> s{_vclRegionCode = a})

-- | OAuth access token.
vclAccessToken :: Lens' VideoCategoriesList (Maybe Text)
vclAccessToken
  = lens _vclAccessToken
      (\ s a -> s{_vclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vclUploadType :: Lens' VideoCategoriesList (Maybe Text)
vclUploadType
  = lens _vclUploadType
      (\ s a -> s{_vclUploadType = a})

vclHl :: Lens' VideoCategoriesList Text
vclHl = lens _vclHl (\ s a -> s{_vclHl = a})

-- | Returns the video categories with the given IDs for Stubby or Apiary.
vclId :: Lens' VideoCategoriesList [Text]
vclId
  = lens _vclId (\ s a -> s{_vclId = a}) . _Default .
      _Coerce

-- | JSONP
vclCallback :: Lens' VideoCategoriesList (Maybe Text)
vclCallback
  = lens _vclCallback (\ s a -> s{_vclCallback = a})

instance GoogleRequest VideoCategoriesList where
        type Rs VideoCategoriesList =
             VideoCategoryListResponse
        type Scopes VideoCategoriesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideoCategoriesList'{..}
          = go _vclPart _vclXgafv _vclUploadProtocol
              _vclRegionCode
              _vclAccessToken
              _vclUploadType
              (Just _vclHl)
              (_vclId ^. _Default)
              _vclCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoCategoriesListResource)
                      mempty
