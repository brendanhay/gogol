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
-- Module      : Network.Google.Resource.Blogger.Posts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of posts, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsList@.
module Network.Google.Resource.Blogger.Posts.List
    (
    -- * REST Resource
      PostsListResource

    -- * Creating a Request
    , postsList'
    , PostsList'

    -- * Request Lenses
    , pllStatus
    , pllQuotaUser
    , pllPrettyPrint
    , pllOrderBy
    , pllUserIp
    , pllFetchImages
    , pllEndDate
    , pllBlogId
    , pllStartDate
    , pllKey
    , pllFetchBodies
    , pllView
    , pllLabels
    , pllPageToken
    , pllOauthToken
    , pllMaxResults
    , pllFields
    , pllAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsList@ which the
-- 'PostsList'' request conforms to.
type PostsListResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           QueryParams "status" BloggerPostsListStatus :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy" BloggerPostsListOrderBy :>
                   QueryParam "userIp" Text :>
                     QueryParam "fetchImages" Bool :>
                       QueryParam "endDate" UTCTime :>
                         QueryParam "startDate" UTCTime :>
                           QueryParam "key" Text :>
                             QueryParam "fetchBodies" Bool :>
                               QueryParam "view" BloggerPostsListView :>
                                 QueryParam "labels" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "oauth_token" Text :>
                                       QueryParam "maxResults" Word32 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON] PostList

-- | Retrieves a list of posts, possibly filtered.
--
-- /See:/ 'postsList'' smart constructor.
data PostsList' = PostsList'
    { _pllStatus      :: !(Maybe BloggerPostsListStatus)
    , _pllQuotaUser   :: !(Maybe Text)
    , _pllPrettyPrint :: !Bool
    , _pllOrderBy     :: !BloggerPostsListOrderBy
    , _pllUserIp      :: !(Maybe Text)
    , _pllFetchImages :: !(Maybe Bool)
    , _pllEndDate     :: !(Maybe UTCTime)
    , _pllBlogId      :: !Text
    , _pllStartDate   :: !(Maybe UTCTime)
    , _pllKey         :: !(Maybe Text)
    , _pllFetchBodies :: !Bool
    , _pllView        :: !(Maybe BloggerPostsListView)
    , _pllLabels      :: !(Maybe Text)
    , _pllPageToken   :: !(Maybe Text)
    , _pllOauthToken  :: !(Maybe Text)
    , _pllMaxResults  :: !(Maybe Word32)
    , _pllFields      :: !(Maybe Text)
    , _pllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllStatus'
--
-- * 'pllQuotaUser'
--
-- * 'pllPrettyPrint'
--
-- * 'pllOrderBy'
--
-- * 'pllUserIp'
--
-- * 'pllFetchImages'
--
-- * 'pllEndDate'
--
-- * 'pllBlogId'
--
-- * 'pllStartDate'
--
-- * 'pllKey'
--
-- * 'pllFetchBodies'
--
-- * 'pllView'
--
-- * 'pllLabels'
--
-- * 'pllPageToken'
--
-- * 'pllOauthToken'
--
-- * 'pllMaxResults'
--
-- * 'pllFields'
--
-- * 'pllAlt'
postsList'
    :: Text -- ^ 'blogId'
    -> PostsList'
postsList' pPllBlogId_ =
    PostsList'
    { _pllStatus = Nothing
    , _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllOrderBy = Published
    , _pllUserIp = Nothing
    , _pllFetchImages = Nothing
    , _pllEndDate = Nothing
    , _pllBlogId = pPllBlogId_
    , _pllStartDate = Nothing
    , _pllKey = Nothing
    , _pllFetchBodies = True
    , _pllView = Nothing
    , _pllLabels = Nothing
    , _pllPageToken = Nothing
    , _pllOauthToken = Nothing
    , _pllMaxResults = Nothing
    , _pllFields = Nothing
    , _pllAlt = JSON
    }

-- | Statuses to include in the results.
pllStatus :: Lens' PostsList' (Maybe BloggerPostsListStatus)
pllStatus
  = lens _pllStatus (\ s a -> s{_pllStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pllQuotaUser :: Lens' PostsList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' PostsList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | Sort search results
pllOrderBy :: Lens' PostsList' BloggerPostsListOrderBy
pllOrderBy
  = lens _pllOrderBy (\ s a -> s{_pllOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIp :: Lens' PostsList' (Maybe Text)
pllUserIp
  = lens _pllUserIp (\ s a -> s{_pllUserIp = a})

-- | Whether image URL metadata for each post is included.
pllFetchImages :: Lens' PostsList' (Maybe Bool)
pllFetchImages
  = lens _pllFetchImages
      (\ s a -> s{_pllFetchImages = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
pllEndDate :: Lens' PostsList' (Maybe UTCTime)
pllEndDate
  = lens _pllEndDate (\ s a -> s{_pllEndDate = a})

-- | ID of the blog to fetch posts from.
pllBlogId :: Lens' PostsList' Text
pllBlogId
  = lens _pllBlogId (\ s a -> s{_pllBlogId = a})

-- | Earliest post date to fetch, a date-time with RFC 3339 formatting.
pllStartDate :: Lens' PostsList' (Maybe UTCTime)
pllStartDate
  = lens _pllStartDate (\ s a -> s{_pllStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PostsList' (Maybe Text)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | Whether the body content of posts is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pllFetchBodies :: Lens' PostsList' Bool
pllFetchBodies
  = lens _pllFetchBodies
      (\ s a -> s{_pllFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
pllView :: Lens' PostsList' (Maybe BloggerPostsListView)
pllView = lens _pllView (\ s a -> s{_pllView = a})

-- | Comma-separated list of labels to search for.
pllLabels :: Lens' PostsList' (Maybe Text)
pllLabels
  = lens _pllLabels (\ s a -> s{_pllLabels = a})

-- | Continuation token if the request is paged.
pllPageToken :: Lens' PostsList' (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | OAuth 2.0 token for the current user.
pllOauthToken :: Lens' PostsList' (Maybe Text)
pllOauthToken
  = lens _pllOauthToken
      (\ s a -> s{_pllOauthToken = a})

-- | Maximum number of posts to fetch.
pllMaxResults :: Lens' PostsList' (Maybe Word32)
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PostsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

-- | Data format for the response.
pllAlt :: Lens' PostsList' Alt
pllAlt = lens _pllAlt (\ s a -> s{_pllAlt = a})

instance GoogleRequest PostsList' where
        type Rs PostsList' = PostList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsList'{..}
          = go _pllStatus _pllQuotaUser (Just _pllPrettyPrint)
              (Just _pllOrderBy)
              _pllUserIp
              _pllFetchImages
              _pllEndDate
              _pllBlogId
              _pllStartDate
              _pllKey
              (Just _pllFetchBodies)
              _pllView
              _pllLabels
              _pllPageToken
              _pllOauthToken
              _pllMaxResults
              _pllFields
              (Just _pllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsListResource)
                      r
                      u
