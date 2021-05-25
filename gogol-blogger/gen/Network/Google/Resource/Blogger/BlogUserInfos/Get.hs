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
-- Module      : Network.Google.Resource.Blogger.BlogUserInfos.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one blog and user info pair by blog id and user id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.blogUserInfos.get@.
module Network.Google.Resource.Blogger.BlogUserInfos.Get
    (
    -- * REST Resource
      BlogUserInfosGetResource

    -- * Creating a Request
    , blogUserInfosGet
    , BlogUserInfosGet

    -- * Request Lenses
    , buigXgafv
    , buigUploadProtocol
    , buigAccessToken
    , buigUploadType
    , buigBlogId
    , buigUserId
    , buigMaxPosts
    , buigCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.blogUserInfos.get@ method which the
-- 'BlogUserInfosGet' request conforms to.
type BlogUserInfosGetResource =
     "v3" :>
       "users" :>
         Capture "userId" Text :>
           "blogs" :>
             Capture "blogId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "maxPosts" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] BlogUserInfo

-- | Gets one blog and user info pair by blog id and user id.
--
-- /See:/ 'blogUserInfosGet' smart constructor.
data BlogUserInfosGet =
  BlogUserInfosGet'
    { _buigXgafv :: !(Maybe Xgafv)
    , _buigUploadProtocol :: !(Maybe Text)
    , _buigAccessToken :: !(Maybe Text)
    , _buigUploadType :: !(Maybe Text)
    , _buigBlogId :: !Text
    , _buigUserId :: !Text
    , _buigMaxPosts :: !(Maybe (Textual Word32))
    , _buigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlogUserInfosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buigXgafv'
--
-- * 'buigUploadProtocol'
--
-- * 'buigAccessToken'
--
-- * 'buigUploadType'
--
-- * 'buigBlogId'
--
-- * 'buigUserId'
--
-- * 'buigMaxPosts'
--
-- * 'buigCallback'
blogUserInfosGet
    :: Text -- ^ 'buigBlogId'
    -> Text -- ^ 'buigUserId'
    -> BlogUserInfosGet
blogUserInfosGet pBuigBlogId_ pBuigUserId_ =
  BlogUserInfosGet'
    { _buigXgafv = Nothing
    , _buigUploadProtocol = Nothing
    , _buigAccessToken = Nothing
    , _buigUploadType = Nothing
    , _buigBlogId = pBuigBlogId_
    , _buigUserId = pBuigUserId_
    , _buigMaxPosts = Nothing
    , _buigCallback = Nothing
    }


-- | V1 error format.
buigXgafv :: Lens' BlogUserInfosGet (Maybe Xgafv)
buigXgafv
  = lens _buigXgafv (\ s a -> s{_buigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
buigUploadProtocol :: Lens' BlogUserInfosGet (Maybe Text)
buigUploadProtocol
  = lens _buigUploadProtocol
      (\ s a -> s{_buigUploadProtocol = a})

-- | OAuth access token.
buigAccessToken :: Lens' BlogUserInfosGet (Maybe Text)
buigAccessToken
  = lens _buigAccessToken
      (\ s a -> s{_buigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
buigUploadType :: Lens' BlogUserInfosGet (Maybe Text)
buigUploadType
  = lens _buigUploadType
      (\ s a -> s{_buigUploadType = a})

buigBlogId :: Lens' BlogUserInfosGet Text
buigBlogId
  = lens _buigBlogId (\ s a -> s{_buigBlogId = a})

buigUserId :: Lens' BlogUserInfosGet Text
buigUserId
  = lens _buigUserId (\ s a -> s{_buigUserId = a})

buigMaxPosts :: Lens' BlogUserInfosGet (Maybe Word32)
buigMaxPosts
  = lens _buigMaxPosts (\ s a -> s{_buigMaxPosts = a})
      . mapping _Coerce

-- | JSONP
buigCallback :: Lens' BlogUserInfosGet (Maybe Text)
buigCallback
  = lens _buigCallback (\ s a -> s{_buigCallback = a})

instance GoogleRequest BlogUserInfosGet where
        type Rs BlogUserInfosGet = BlogUserInfo
        type Scopes BlogUserInfosGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient BlogUserInfosGet'{..}
          = go _buigUserId _buigBlogId _buigXgafv
              _buigUploadProtocol
              _buigAccessToken
              _buigUploadType
              _buigMaxPosts
              _buigCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy BlogUserInfosGetResource)
                      mempty
