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
-- Module      : Network.Google.Resource.Blogger.Blogs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a blog by id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.blogs.get@.
module Network.Google.Resource.Blogger.Blogs.Get
    (
    -- * REST Resource
      BlogsGetResource

    -- * Creating a Request
    , blogsGet
    , BlogsGet

    -- * Request Lenses
    , bgXgafv
    , bgUploadProtocol
    , bgAccessToken
    , bgUploadType
    , bgBlogId
    , bgMaxPosts
    , bgView
    , bgCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.blogs.get@ method which the
-- 'BlogsGet' request conforms to.
type BlogsGetResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "maxPosts" (Textual Word32) :>
                     QueryParam "view" BlogsGetView :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Gets a blog by id.
--
-- /See:/ 'blogsGet' smart constructor.
data BlogsGet =
  BlogsGet'
    { _bgXgafv :: !(Maybe Xgafv)
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgAccessToken :: !(Maybe Text)
    , _bgUploadType :: !(Maybe Text)
    , _bgBlogId :: !Text
    , _bgMaxPosts :: !(Maybe (Textual Word32))
    , _bgView :: !(Maybe BlogsGetView)
    , _bgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlogsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgUploadProtocol'
--
-- * 'bgAccessToken'
--
-- * 'bgUploadType'
--
-- * 'bgBlogId'
--
-- * 'bgMaxPosts'
--
-- * 'bgView'
--
-- * 'bgCallback'
blogsGet
    :: Text -- ^ 'bgBlogId'
    -> BlogsGet
blogsGet pBgBlogId_ =
  BlogsGet'
    { _bgXgafv = Nothing
    , _bgUploadProtocol = Nothing
    , _bgAccessToken = Nothing
    , _bgUploadType = Nothing
    , _bgBlogId = pBgBlogId_
    , _bgMaxPosts = Nothing
    , _bgView = Nothing
    , _bgCallback = Nothing
    }


-- | V1 error format.
bgXgafv :: Lens' BlogsGet (Maybe Xgafv)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BlogsGet (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | OAuth access token.
bgAccessToken :: Lens' BlogsGet (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BlogsGet (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

bgBlogId :: Lens' BlogsGet Text
bgBlogId = lens _bgBlogId (\ s a -> s{_bgBlogId = a})

bgMaxPosts :: Lens' BlogsGet (Maybe Word32)
bgMaxPosts
  = lens _bgMaxPosts (\ s a -> s{_bgMaxPosts = a}) .
      mapping _Coerce

bgView :: Lens' BlogsGet (Maybe BlogsGetView)
bgView = lens _bgView (\ s a -> s{_bgView = a})

-- | JSONP
bgCallback :: Lens' BlogsGet (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleRequest BlogsGet where
        type Rs BlogsGet = Blog
        type Scopes BlogsGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient BlogsGet'{..}
          = go _bgBlogId _bgXgafv _bgUploadProtocol
              _bgAccessToken
              _bgUploadType
              _bgMaxPosts
              _bgView
              _bgCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy BlogsGetResource)
                      mempty
