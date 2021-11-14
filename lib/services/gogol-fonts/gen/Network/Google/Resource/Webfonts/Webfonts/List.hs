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
-- Module      : Network.Google.Resource.Webfonts.Webfonts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of fonts currently served by the Google Fonts
-- Developer API.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Web Fonts Developer API Reference> for @webfonts.webfonts.list@.
module Network.Google.Resource.Webfonts.Webfonts.List
    (
    -- * REST Resource
      WebfontsListResource

    -- * Creating a Request
    , webfontsList
    , WebfontsList

    -- * Request Lenses
    , wlXgafv
    , wlUploadProtocol
    , wlAccessToken
    , wlUploadType
    , wlSort
    , wlCallback
    ) where

import Network.Google.Fonts.Types
import Network.Google.Prelude

-- | A resource alias for @webfonts.webfonts.list@ method which the
-- 'WebfontsList' request conforms to.
type WebfontsListResource =
     "v1" :>
       "webfonts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "sort" WebfontsListSort :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API.
--
-- /See:/ 'webfontsList' smart constructor.
data WebfontsList =
  WebfontsList'
    { _wlXgafv :: !(Maybe Xgafv)
    , _wlUploadProtocol :: !(Maybe Text)
    , _wlAccessToken :: !(Maybe Text)
    , _wlUploadType :: !(Maybe Text)
    , _wlSort :: !(Maybe WebfontsListSort)
    , _wlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebfontsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlXgafv'
--
-- * 'wlUploadProtocol'
--
-- * 'wlAccessToken'
--
-- * 'wlUploadType'
--
-- * 'wlSort'
--
-- * 'wlCallback'
webfontsList
    :: WebfontsList
webfontsList =
  WebfontsList'
    { _wlXgafv = Nothing
    , _wlUploadProtocol = Nothing
    , _wlAccessToken = Nothing
    , _wlUploadType = Nothing
    , _wlSort = Nothing
    , _wlCallback = Nothing
    }


-- | V1 error format.
wlXgafv :: Lens' WebfontsList (Maybe Xgafv)
wlXgafv = lens _wlXgafv (\ s a -> s{_wlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wlUploadProtocol :: Lens' WebfontsList (Maybe Text)
wlUploadProtocol
  = lens _wlUploadProtocol
      (\ s a -> s{_wlUploadProtocol = a})

-- | OAuth access token.
wlAccessToken :: Lens' WebfontsList (Maybe Text)
wlAccessToken
  = lens _wlAccessToken
      (\ s a -> s{_wlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wlUploadType :: Lens' WebfontsList (Maybe Text)
wlUploadType
  = lens _wlUploadType (\ s a -> s{_wlUploadType = a})

-- | Enables sorting of the list.
wlSort :: Lens' WebfontsList (Maybe WebfontsListSort)
wlSort = lens _wlSort (\ s a -> s{_wlSort = a})

-- | JSONP
wlCallback :: Lens' WebfontsList (Maybe Text)
wlCallback
  = lens _wlCallback (\ s a -> s{_wlCallback = a})

instance GoogleRequest WebfontsList where
        type Rs WebfontsList = WebfontList
        type Scopes WebfontsList = '[]
        requestClient WebfontsList'{..}
          = go _wlXgafv _wlUploadProtocol _wlAccessToken
              _wlUploadType
              _wlSort
              _wlCallback
              (Just AltJSON)
              fontsService
          where go
                  = buildClient (Proxy :: Proxy WebfontsListResource)
                      mempty
