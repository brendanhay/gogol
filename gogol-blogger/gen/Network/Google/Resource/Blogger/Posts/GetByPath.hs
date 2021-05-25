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
-- Module      : Network.Google.Resource.Blogger.Posts.GetByPath
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a post by path.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.getByPath@.
module Network.Google.Resource.Blogger.Posts.GetByPath
    (
    -- * REST Resource
      PostsGetByPathResource

    -- * Creating a Request
    , postsGetByPath
    , PostsGetByPath

    -- * Request Lenses
    , pgbpXgafv
    , pgbpUploadProtocol
    , pgbpPath
    , pgbpAccessToken
    , pgbpUploadType
    , pgbpBlogId
    , pgbpMaxComments
    , pgbpView
    , pgbpCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.getByPath@ method which the
-- 'PostsGetByPath' request conforms to.
type PostsGetByPathResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             "bypath" :>
               QueryParam "path" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "maxComments" (Textual Word32) :>
                           QueryParam "view" PostsGetByPathView :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Gets a post by path.
--
-- /See:/ 'postsGetByPath' smart constructor.
data PostsGetByPath =
  PostsGetByPath'
    { _pgbpXgafv :: !(Maybe Xgafv)
    , _pgbpUploadProtocol :: !(Maybe Text)
    , _pgbpPath :: !Text
    , _pgbpAccessToken :: !(Maybe Text)
    , _pgbpUploadType :: !(Maybe Text)
    , _pgbpBlogId :: !Text
    , _pgbpMaxComments :: !(Maybe (Textual Word32))
    , _pgbpView :: !(Maybe PostsGetByPathView)
    , _pgbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsGetByPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbpXgafv'
--
-- * 'pgbpUploadProtocol'
--
-- * 'pgbpPath'
--
-- * 'pgbpAccessToken'
--
-- * 'pgbpUploadType'
--
-- * 'pgbpBlogId'
--
-- * 'pgbpMaxComments'
--
-- * 'pgbpView'
--
-- * 'pgbpCallback'
postsGetByPath
    :: Text -- ^ 'pgbpPath'
    -> Text -- ^ 'pgbpBlogId'
    -> PostsGetByPath
postsGetByPath pPgbpPath_ pPgbpBlogId_ =
  PostsGetByPath'
    { _pgbpXgafv = Nothing
    , _pgbpUploadProtocol = Nothing
    , _pgbpPath = pPgbpPath_
    , _pgbpAccessToken = Nothing
    , _pgbpUploadType = Nothing
    , _pgbpBlogId = pPgbpBlogId_
    , _pgbpMaxComments = Nothing
    , _pgbpView = Nothing
    , _pgbpCallback = Nothing
    }


-- | V1 error format.
pgbpXgafv :: Lens' PostsGetByPath (Maybe Xgafv)
pgbpXgafv
  = lens _pgbpXgafv (\ s a -> s{_pgbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgbpUploadProtocol :: Lens' PostsGetByPath (Maybe Text)
pgbpUploadProtocol
  = lens _pgbpUploadProtocol
      (\ s a -> s{_pgbpUploadProtocol = a})

pgbpPath :: Lens' PostsGetByPath Text
pgbpPath = lens _pgbpPath (\ s a -> s{_pgbpPath = a})

-- | OAuth access token.
pgbpAccessToken :: Lens' PostsGetByPath (Maybe Text)
pgbpAccessToken
  = lens _pgbpAccessToken
      (\ s a -> s{_pgbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgbpUploadType :: Lens' PostsGetByPath (Maybe Text)
pgbpUploadType
  = lens _pgbpUploadType
      (\ s a -> s{_pgbpUploadType = a})

pgbpBlogId :: Lens' PostsGetByPath Text
pgbpBlogId
  = lens _pgbpBlogId (\ s a -> s{_pgbpBlogId = a})

pgbpMaxComments :: Lens' PostsGetByPath (Maybe Word32)
pgbpMaxComments
  = lens _pgbpMaxComments
      (\ s a -> s{_pgbpMaxComments = a})
      . mapping _Coerce

pgbpView :: Lens' PostsGetByPath (Maybe PostsGetByPathView)
pgbpView = lens _pgbpView (\ s a -> s{_pgbpView = a})

-- | JSONP
pgbpCallback :: Lens' PostsGetByPath (Maybe Text)
pgbpCallback
  = lens _pgbpCallback (\ s a -> s{_pgbpCallback = a})

instance GoogleRequest PostsGetByPath where
        type Rs PostsGetByPath = Post'
        type Scopes PostsGetByPath =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsGetByPath'{..}
          = go _pgbpBlogId (Just _pgbpPath) _pgbpXgafv
              _pgbpUploadProtocol
              _pgbpAccessToken
              _pgbpUploadType
              _pgbpMaxComments
              _pgbpView
              _pgbpCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsGetByPathResource)
                      mempty
