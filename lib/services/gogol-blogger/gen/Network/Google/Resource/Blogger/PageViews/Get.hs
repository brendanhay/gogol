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
-- Module      : Network.Google.Resource.Blogger.PageViews.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets page views by blog id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.pageViews.get@.
module Network.Google.Resource.Blogger.PageViews.Get
    (
    -- * REST Resource
      PageViewsGetResource

    -- * Creating a Request
    , pageViewsGet
    , PageViewsGet

    -- * Request Lenses
    , pvgXgafv
    , pvgUploadProtocol
    , pvgAccessToken
    , pvgUploadType
    , pvgBlogId
    , pvgRange
    , pvgCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.pageViews.get@ method which the
-- 'PageViewsGet' request conforms to.
type PageViewsGetResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "pageviews" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "range" PageViewsGetRange :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Pageviews

-- | Gets page views by blog id.
--
-- /See:/ 'pageViewsGet' smart constructor.
data PageViewsGet =
  PageViewsGet'
    { _pvgXgafv :: !(Maybe Xgafv)
    , _pvgUploadProtocol :: !(Maybe Text)
    , _pvgAccessToken :: !(Maybe Text)
    , _pvgUploadType :: !(Maybe Text)
    , _pvgBlogId :: !Text
    , _pvgRange :: !(Maybe [PageViewsGetRange])
    , _pvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PageViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvgXgafv'
--
-- * 'pvgUploadProtocol'
--
-- * 'pvgAccessToken'
--
-- * 'pvgUploadType'
--
-- * 'pvgBlogId'
--
-- * 'pvgRange'
--
-- * 'pvgCallback'
pageViewsGet
    :: Text -- ^ 'pvgBlogId'
    -> PageViewsGet
pageViewsGet pPvgBlogId_ =
  PageViewsGet'
    { _pvgXgafv = Nothing
    , _pvgUploadProtocol = Nothing
    , _pvgAccessToken = Nothing
    , _pvgUploadType = Nothing
    , _pvgBlogId = pPvgBlogId_
    , _pvgRange = Nothing
    , _pvgCallback = Nothing
    }


-- | V1 error format.
pvgXgafv :: Lens' PageViewsGet (Maybe Xgafv)
pvgXgafv = lens _pvgXgafv (\ s a -> s{_pvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvgUploadProtocol :: Lens' PageViewsGet (Maybe Text)
pvgUploadProtocol
  = lens _pvgUploadProtocol
      (\ s a -> s{_pvgUploadProtocol = a})

-- | OAuth access token.
pvgAccessToken :: Lens' PageViewsGet (Maybe Text)
pvgAccessToken
  = lens _pvgAccessToken
      (\ s a -> s{_pvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvgUploadType :: Lens' PageViewsGet (Maybe Text)
pvgUploadType
  = lens _pvgUploadType
      (\ s a -> s{_pvgUploadType = a})

pvgBlogId :: Lens' PageViewsGet Text
pvgBlogId
  = lens _pvgBlogId (\ s a -> s{_pvgBlogId = a})

pvgRange :: Lens' PageViewsGet [PageViewsGetRange]
pvgRange
  = lens _pvgRange (\ s a -> s{_pvgRange = a}) .
      _Default
      . _Coerce

-- | JSONP
pvgCallback :: Lens' PageViewsGet (Maybe Text)
pvgCallback
  = lens _pvgCallback (\ s a -> s{_pvgCallback = a})

instance GoogleRequest PageViewsGet where
        type Rs PageViewsGet = Pageviews
        type Scopes PageViewsGet =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PageViewsGet'{..}
          = go _pvgBlogId _pvgXgafv _pvgUploadProtocol
              _pvgAccessToken
              _pvgUploadType
              (_pvgRange ^. _Default)
              _pvgCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PageViewsGetResource)
                      mempty
