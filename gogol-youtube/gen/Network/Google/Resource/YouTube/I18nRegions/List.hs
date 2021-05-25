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
-- Module      : Network.Google.Resource.YouTube.I18nRegions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.i18nRegions.list@.
module Network.Google.Resource.YouTube.I18nRegions.List
    (
    -- * REST Resource
      I18nRegionsListResource

    -- * Creating a Request
    , i18nRegionsList
    , I18nRegionsList

    -- * Request Lenses
    , irlXgafv
    , irlPart
    , irlUploadProtocol
    , irlAccessToken
    , irlUploadType
    , irlHl
    , irlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.i18nRegions.list@ method which the
-- 'I18nRegionsList' request conforms to.
type I18nRegionsListResource =
     "youtube" :>
       "v3" :>
         "i18nRegions" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "hl" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] I18nRegionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'i18nRegionsList' smart constructor.
data I18nRegionsList =
  I18nRegionsList'
    { _irlXgafv :: !(Maybe Xgafv)
    , _irlPart :: ![Text]
    , _irlUploadProtocol :: !(Maybe Text)
    , _irlAccessToken :: !(Maybe Text)
    , _irlUploadType :: !(Maybe Text)
    , _irlHl :: !Text
    , _irlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'I18nRegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlXgafv'
--
-- * 'irlPart'
--
-- * 'irlUploadProtocol'
--
-- * 'irlAccessToken'
--
-- * 'irlUploadType'
--
-- * 'irlHl'
--
-- * 'irlCallback'
i18nRegionsList
    :: [Text] -- ^ 'irlPart'
    -> I18nRegionsList
i18nRegionsList pIrlPart_ =
  I18nRegionsList'
    { _irlXgafv = Nothing
    , _irlPart = _Coerce # pIrlPart_
    , _irlUploadProtocol = Nothing
    , _irlAccessToken = Nothing
    , _irlUploadType = Nothing
    , _irlHl = "en_US"
    , _irlCallback = Nothing
    }


-- | V1 error format.
irlXgafv :: Lens' I18nRegionsList (Maybe Xgafv)
irlXgafv = lens _irlXgafv (\ s a -> s{_irlXgafv = a})

-- | The *part* parameter specifies the i18nRegion resource properties that
-- the API response will include. Set the parameter value to snippet.
irlPart :: Lens' I18nRegionsList [Text]
irlPart
  = lens _irlPart (\ s a -> s{_irlPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
irlUploadProtocol :: Lens' I18nRegionsList (Maybe Text)
irlUploadProtocol
  = lens _irlUploadProtocol
      (\ s a -> s{_irlUploadProtocol = a})

-- | OAuth access token.
irlAccessToken :: Lens' I18nRegionsList (Maybe Text)
irlAccessToken
  = lens _irlAccessToken
      (\ s a -> s{_irlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
irlUploadType :: Lens' I18nRegionsList (Maybe Text)
irlUploadType
  = lens _irlUploadType
      (\ s a -> s{_irlUploadType = a})

irlHl :: Lens' I18nRegionsList Text
irlHl = lens _irlHl (\ s a -> s{_irlHl = a})

-- | JSONP
irlCallback :: Lens' I18nRegionsList (Maybe Text)
irlCallback
  = lens _irlCallback (\ s a -> s{_irlCallback = a})

instance GoogleRequest I18nRegionsList where
        type Rs I18nRegionsList = I18nRegionListResponse
        type Scopes I18nRegionsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient I18nRegionsList'{..}
          = go _irlPart _irlXgafv _irlUploadProtocol
              _irlAccessToken
              _irlUploadType
              (Just _irlHl)
              _irlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy I18nRegionsListResource)
                      mempty
