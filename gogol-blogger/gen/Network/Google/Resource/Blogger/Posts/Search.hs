{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search for a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsSearch@.
module Network.Google.Resource.Blogger.Posts.Search
    (
    -- * REST Resource
      PostsSearchResource

    -- * Creating a Request
    , postsSearch'
    , PostsSearch'

    -- * Request Lenses
    , psQuotaUser
    , psPrettyPrint
    , psOrderBy
    , psUserIp
    , psBlogId
    , psQ
    , psKey
    , psFetchBodies
    , psOauthToken
    , psFields
    , psAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsSearch@ which the
-- 'PostsSearch'' request conforms to.
type PostsSearchResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           "search" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy" BloggerPostsSearchOrderBy :>
                   QueryParam "userIp" Text :>
                     QueryParam "q" Text :>
                       QueryParam "key" Text :>
                         QueryParam "fetchBodies" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] PostList

-- | Search for a post.
--
-- /See:/ 'postsSearch'' smart constructor.
data PostsSearch' = PostsSearch'
    { _psQuotaUser   :: !(Maybe Text)
    , _psPrettyPrint :: !Bool
    , _psOrderBy     :: !BloggerPostsSearchOrderBy
    , _psUserIp      :: !(Maybe Text)
    , _psBlogId      :: !Text
    , _psQ           :: !Text
    , _psKey         :: !(Maybe Text)
    , _psFetchBodies :: !Bool
    , _psOauthToken  :: !(Maybe Text)
    , _psFields      :: !(Maybe Text)
    , _psAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psQuotaUser'
--
-- * 'psPrettyPrint'
--
-- * 'psOrderBy'
--
-- * 'psUserIp'
--
-- * 'psBlogId'
--
-- * 'psQ'
--
-- * 'psKey'
--
-- * 'psFetchBodies'
--
-- * 'psOauthToken'
--
-- * 'psFields'
--
-- * 'psAlt'
postsSearch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'q'
    -> PostsSearch'
postsSearch' pPsBlogId_ pPsQ_ =
    PostsSearch'
    { _psQuotaUser = Nothing
    , _psPrettyPrint = True
    , _psOrderBy = BPSOBPublished
    , _psUserIp = Nothing
    , _psBlogId = pPsBlogId_
    , _psQ = pPsQ_
    , _psKey = Nothing
    , _psFetchBodies = True
    , _psOauthToken = Nothing
    , _psFields = Nothing
    , _psAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psQuotaUser :: Lens' PostsSearch' (Maybe Text)
psQuotaUser
  = lens _psQuotaUser (\ s a -> s{_psQuotaUser = a})

-- | Returns response with indentations and line breaks.
psPrettyPrint :: Lens' PostsSearch' Bool
psPrettyPrint
  = lens _psPrettyPrint
      (\ s a -> s{_psPrettyPrint = a})

-- | Sort search results
psOrderBy :: Lens' PostsSearch' BloggerPostsSearchOrderBy
psOrderBy
  = lens _psOrderBy (\ s a -> s{_psOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psUserIp :: Lens' PostsSearch' (Maybe Text)
psUserIp = lens _psUserIp (\ s a -> s{_psUserIp = a})

-- | ID of the blog to fetch the post from.
psBlogId :: Lens' PostsSearch' Text
psBlogId = lens _psBlogId (\ s a -> s{_psBlogId = a})

-- | Query terms to search this blog for matching posts.
psQ :: Lens' PostsSearch' Text
psQ = lens _psQ (\ s a -> s{_psQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psKey :: Lens' PostsSearch' (Maybe Text)
psKey = lens _psKey (\ s a -> s{_psKey = a})

-- | Whether the body content of posts is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
psFetchBodies :: Lens' PostsSearch' Bool
psFetchBodies
  = lens _psFetchBodies
      (\ s a -> s{_psFetchBodies = a})

-- | OAuth 2.0 token for the current user.
psOauthToken :: Lens' PostsSearch' (Maybe Text)
psOauthToken
  = lens _psOauthToken (\ s a -> s{_psOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psFields :: Lens' PostsSearch' (Maybe Text)
psFields = lens _psFields (\ s a -> s{_psFields = a})

-- | Data format for the response.
psAlt :: Lens' PostsSearch' Alt
psAlt = lens _psAlt (\ s a -> s{_psAlt = a})

instance GoogleRequest PostsSearch' where
        type Rs PostsSearch' = PostList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsSearch'{..}
          = go _psQuotaUser (Just _psPrettyPrint)
              (Just _psOrderBy)
              _psUserIp
              _psBlogId
              (Just _psQ)
              _psKey
              (Just _psFetchBodies)
              _psOauthToken
              _psFields
              (Just _psAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostsSearchResource)
                      r
                      u
