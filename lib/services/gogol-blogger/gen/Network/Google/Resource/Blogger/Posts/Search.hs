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
-- Module      : Network.Google.Resource.Blogger.Posts.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for posts matching given query terms in the specified blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.search@.
module Network.Google.Resource.Blogger.Posts.Search
    (
    -- * REST Resource
      PostsSearchResource

    -- * Creating a Request
    , postsSearch
    , PostsSearch

    -- * Request Lenses
    , psXgafv
    , psUploadProtocol
    , psOrderBy
    , psAccessToken
    , psUploadType
    , psBlogId
    , psQ
    , psFetchBodies
    , psCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.search@ method which the
-- 'PostsSearch' request conforms to.
type PostsSearchResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             "search" :>
               QueryParam "q" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "orderBy" PostsSearchOrderBy :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "fetchBodies" Bool :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] PostList

-- | Searches for posts matching given query terms in the specified blog.
--
-- /See:/ 'postsSearch' smart constructor.
data PostsSearch =
  PostsSearch'
    { _psXgafv :: !(Maybe Xgafv)
    , _psUploadProtocol :: !(Maybe Text)
    , _psOrderBy :: !PostsSearchOrderBy
    , _psAccessToken :: !(Maybe Text)
    , _psUploadType :: !(Maybe Text)
    , _psBlogId :: !Text
    , _psQ :: !Text
    , _psFetchBodies :: !Bool
    , _psCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psXgafv'
--
-- * 'psUploadProtocol'
--
-- * 'psOrderBy'
--
-- * 'psAccessToken'
--
-- * 'psUploadType'
--
-- * 'psBlogId'
--
-- * 'psQ'
--
-- * 'psFetchBodies'
--
-- * 'psCallback'
postsSearch
    :: Text -- ^ 'psBlogId'
    -> Text -- ^ 'psQ'
    -> PostsSearch
postsSearch pPsBlogId_ pPsQ_ =
  PostsSearch'
    { _psXgafv = Nothing
    , _psUploadProtocol = Nothing
    , _psOrderBy = PSOBPublished
    , _psAccessToken = Nothing
    , _psUploadType = Nothing
    , _psBlogId = pPsBlogId_
    , _psQ = pPsQ_
    , _psFetchBodies = True
    , _psCallback = Nothing
    }


-- | V1 error format.
psXgafv :: Lens' PostsSearch (Maybe Xgafv)
psXgafv = lens _psXgafv (\ s a -> s{_psXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psUploadProtocol :: Lens' PostsSearch (Maybe Text)
psUploadProtocol
  = lens _psUploadProtocol
      (\ s a -> s{_psUploadProtocol = a})

psOrderBy :: Lens' PostsSearch PostsSearchOrderBy
psOrderBy
  = lens _psOrderBy (\ s a -> s{_psOrderBy = a})

-- | OAuth access token.
psAccessToken :: Lens' PostsSearch (Maybe Text)
psAccessToken
  = lens _psAccessToken
      (\ s a -> s{_psAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psUploadType :: Lens' PostsSearch (Maybe Text)
psUploadType
  = lens _psUploadType (\ s a -> s{_psUploadType = a})

psBlogId :: Lens' PostsSearch Text
psBlogId = lens _psBlogId (\ s a -> s{_psBlogId = a})

psQ :: Lens' PostsSearch Text
psQ = lens _psQ (\ s a -> s{_psQ = a})

psFetchBodies :: Lens' PostsSearch Bool
psFetchBodies
  = lens _psFetchBodies
      (\ s a -> s{_psFetchBodies = a})

-- | JSONP
psCallback :: Lens' PostsSearch (Maybe Text)
psCallback
  = lens _psCallback (\ s a -> s{_psCallback = a})

instance GoogleRequest PostsSearch where
        type Rs PostsSearch = PostList
        type Scopes PostsSearch =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsSearch'{..}
          = go _psBlogId (Just _psQ) _psXgafv _psUploadProtocol
              (Just _psOrderBy)
              _psAccessToken
              _psUploadType
              (Just _psFetchBodies)
              _psCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsSearchResource)
                      mempty
