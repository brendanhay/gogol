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
-- Module      : Network.Google.Resource.Blogger.Blogs.GetByURL
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a blog by url.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.blogs.getByUrl@.
module Network.Google.Resource.Blogger.Blogs.GetByURL
    (
    -- * REST Resource
      BlogsGetByURLResource

    -- * Creating a Request
    , blogsGetByURL
    , BlogsGetByURL

    -- * Request Lenses
    , bgbuXgafv
    , bgbuUploadProtocol
    , bgbuAccessToken
    , bgbuURL
    , bgbuUploadType
    , bgbuView
    , bgbuCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.blogs.getByUrl@ method which the
-- 'BlogsGetByURL' request conforms to.
type BlogsGetByURLResource =
     "v3" :>
       "blogs" :>
         "byurl" :>
           QueryParam "url" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "view" BlogsGetByURLView :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Gets a blog by url.
--
-- /See:/ 'blogsGetByURL' smart constructor.
data BlogsGetByURL =
  BlogsGetByURL'
    { _bgbuXgafv :: !(Maybe Xgafv)
    , _bgbuUploadProtocol :: !(Maybe Text)
    , _bgbuAccessToken :: !(Maybe Text)
    , _bgbuURL :: !Text
    , _bgbuUploadType :: !(Maybe Text)
    , _bgbuView :: !(Maybe BlogsGetByURLView)
    , _bgbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlogsGetByURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbuXgafv'
--
-- * 'bgbuUploadProtocol'
--
-- * 'bgbuAccessToken'
--
-- * 'bgbuURL'
--
-- * 'bgbuUploadType'
--
-- * 'bgbuView'
--
-- * 'bgbuCallback'
blogsGetByURL
    :: Text -- ^ 'bgbuURL'
    -> BlogsGetByURL
blogsGetByURL pBgbuURL_ =
  BlogsGetByURL'
    { _bgbuXgafv = Nothing
    , _bgbuUploadProtocol = Nothing
    , _bgbuAccessToken = Nothing
    , _bgbuURL = pBgbuURL_
    , _bgbuUploadType = Nothing
    , _bgbuView = Nothing
    , _bgbuCallback = Nothing
    }


-- | V1 error format.
bgbuXgafv :: Lens' BlogsGetByURL (Maybe Xgafv)
bgbuXgafv
  = lens _bgbuXgafv (\ s a -> s{_bgbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgbuUploadProtocol :: Lens' BlogsGetByURL (Maybe Text)
bgbuUploadProtocol
  = lens _bgbuUploadProtocol
      (\ s a -> s{_bgbuUploadProtocol = a})

-- | OAuth access token.
bgbuAccessToken :: Lens' BlogsGetByURL (Maybe Text)
bgbuAccessToken
  = lens _bgbuAccessToken
      (\ s a -> s{_bgbuAccessToken = a})

bgbuURL :: Lens' BlogsGetByURL Text
bgbuURL = lens _bgbuURL (\ s a -> s{_bgbuURL = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgbuUploadType :: Lens' BlogsGetByURL (Maybe Text)
bgbuUploadType
  = lens _bgbuUploadType
      (\ s a -> s{_bgbuUploadType = a})

bgbuView :: Lens' BlogsGetByURL (Maybe BlogsGetByURLView)
bgbuView = lens _bgbuView (\ s a -> s{_bgbuView = a})

-- | JSONP
bgbuCallback :: Lens' BlogsGetByURL (Maybe Text)
bgbuCallback
  = lens _bgbuCallback (\ s a -> s{_bgbuCallback = a})

instance GoogleRequest BlogsGetByURL where
        type Rs BlogsGetByURL = Blog
        type Scopes BlogsGetByURL =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient BlogsGetByURL'{..}
          = go (Just _bgbuURL) _bgbuXgafv _bgbuUploadProtocol
              _bgbuAccessToken
              _bgbuUploadType
              _bgbuView
              _bgbuCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy BlogsGetByURLResource)
                      mempty
