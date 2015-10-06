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
    , psUserIP
    , psBlogId
    , psQ
    , psKey
    , psFetchBodies
    , psOAuthToken
    , psFields
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
             QueryParam "q" Text :>
               QueryParam "orderBy" PostsSearchOrderBy :>
                 QueryParam "fetchBodies" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] PostList

-- | Search for a post.
--
-- /See:/ 'postsSearch'' smart constructor.
data PostsSearch' = PostsSearch'
    { _psQuotaUser   :: !(Maybe Text)
    , _psPrettyPrint :: !Bool
    , _psOrderBy     :: !PostsSearchOrderBy
    , _psUserIP      :: !(Maybe Text)
    , _psBlogId      :: !Text
    , _psQ           :: !Text
    , _psKey         :: !(Maybe AuthKey)
    , _psFetchBodies :: !Bool
    , _psOAuthToken  :: !(Maybe OAuthToken)
    , _psFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'psUserIP'
--
-- * 'psBlogId'
--
-- * 'psQ'
--
-- * 'psKey'
--
-- * 'psFetchBodies'
--
-- * 'psOAuthToken'
--
-- * 'psFields'
postsSearch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'q'
    -> PostsSearch'
postsSearch' pPsBlogId_ pPsQ_ =
    PostsSearch'
    { _psQuotaUser = Nothing
    , _psPrettyPrint = True
    , _psOrderBy = PSOBPublished
    , _psUserIP = Nothing
    , _psBlogId = pPsBlogId_
    , _psQ = pPsQ_
    , _psKey = Nothing
    , _psFetchBodies = True
    , _psOAuthToken = Nothing
    , _psFields = Nothing
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
psOrderBy :: Lens' PostsSearch' PostsSearchOrderBy
psOrderBy
  = lens _psOrderBy (\ s a -> s{_psOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psUserIP :: Lens' PostsSearch' (Maybe Text)
psUserIP = lens _psUserIP (\ s a -> s{_psUserIP = a})

-- | ID of the blog to fetch the post from.
psBlogId :: Lens' PostsSearch' Text
psBlogId = lens _psBlogId (\ s a -> s{_psBlogId = a})

-- | Query terms to search this blog for matching posts.
psQ :: Lens' PostsSearch' Text
psQ = lens _psQ (\ s a -> s{_psQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psKey :: Lens' PostsSearch' (Maybe AuthKey)
psKey = lens _psKey (\ s a -> s{_psKey = a})

-- | Whether the body content of posts is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
psFetchBodies :: Lens' PostsSearch' Bool
psFetchBodies
  = lens _psFetchBodies
      (\ s a -> s{_psFetchBodies = a})

-- | OAuth 2.0 token for the current user.
psOAuthToken :: Lens' PostsSearch' (Maybe OAuthToken)
psOAuthToken
  = lens _psOAuthToken (\ s a -> s{_psOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psFields :: Lens' PostsSearch' (Maybe Text)
psFields = lens _psFields (\ s a -> s{_psFields = a})

instance GoogleAuth PostsSearch' where
        _AuthKey = psKey . _Just
        _AuthToken = psOAuthToken . _Just

instance GoogleRequest PostsSearch' where
        type Rs PostsSearch' = PostList
        request = requestWith bloggerRequest
        requestWith rq PostsSearch'{..}
          = go _psBlogId (Just _psQ) (Just _psOrderBy)
              (Just _psFetchBodies)
              _psQuotaUser
              (Just _psPrettyPrint)
              _psUserIP
              _psFields
              _psKey
              _psOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PostsSearchResource) rq
