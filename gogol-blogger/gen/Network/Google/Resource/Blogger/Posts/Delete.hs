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
-- Module      : Network.Google.Resource.Blogger.Posts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a post by blog id and post id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.delete@.
module Network.Google.Resource.Blogger.Posts.Delete
    (
    -- * REST Resource
      PostsDeleteResource

    -- * Creating a Request
    , postsDelete
    , PostsDelete

    -- * Request Lenses
    , pdXgafv
    , pdUploadProtocol
    , pdAccessToken
    , pdUploadType
    , pdBlogId
    , pdPostId
    , pdCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.delete@ method which the
-- 'PostsDelete' request conforms to.
type PostsDeleteResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a post by blog id and post id.
--
-- /See:/ 'postsDelete' smart constructor.
data PostsDelete =
  PostsDelete'
    { _pdXgafv :: !(Maybe Xgafv)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdAccessToken :: !(Maybe Text)
    , _pdUploadType :: !(Maybe Text)
    , _pdBlogId :: !Text
    , _pdPostId :: !Text
    , _pdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdBlogId'
--
-- * 'pdPostId'
--
-- * 'pdCallback'
postsDelete
    :: Text -- ^ 'pdBlogId'
    -> Text -- ^ 'pdPostId'
    -> PostsDelete
postsDelete pPdBlogId_ pPdPostId_ =
  PostsDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdBlogId = pPdBlogId_
    , _pdPostId = pPdPostId_
    , _pdCallback = Nothing
    }


-- | V1 error format.
pdXgafv :: Lens' PostsDelete (Maybe Xgafv)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' PostsDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | OAuth access token.
pdAccessToken :: Lens' PostsDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' PostsDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

pdBlogId :: Lens' PostsDelete Text
pdBlogId = lens _pdBlogId (\ s a -> s{_pdBlogId = a})

pdPostId :: Lens' PostsDelete Text
pdPostId = lens _pdPostId (\ s a -> s{_pdPostId = a})

-- | JSONP
pdCallback :: Lens' PostsDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest PostsDelete where
        type Rs PostsDelete = ()
        type Scopes PostsDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsDelete'{..}
          = go _pdBlogId _pdPostId _pdXgafv _pdUploadProtocol
              _pdAccessToken
              _pdUploadType
              _pdCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsDeleteResource)
                      mempty
