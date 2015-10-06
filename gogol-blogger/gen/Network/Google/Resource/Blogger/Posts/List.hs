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
    , pllUserIP
    , pllFetchImages
    , pllEndDate
    , pllBlogId
    , pllStartDate
    , pllKey
    , pllFetchBodies
    , pllView
    , pllLabels
    , pllPageToken
    , pllOAuthToken
    , pllMaxResults
    , pllFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsList@ which the
-- 'PostsList'' request conforms to.
type PostsListResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           QueryParams "status" PostsListStatus :>
             QueryParam "orderBy" PostsListOrderBy :>
               QueryParam "fetchImages" Bool :>
                 QueryParam "endDate" DateTime' :>
                   QueryParam "startDate" DateTime' :>
                     QueryParam "fetchBodies" Bool :>
                       QueryParam "view" PostsListView :>
                         QueryParam "labels" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] PostList

-- | Retrieves a list of posts, possibly filtered.
--
-- /See:/ 'postsList'' smart constructor.
data PostsList' = PostsList'
    { _pllStatus      :: !(Maybe [PostsListStatus])
    , _pllQuotaUser   :: !(Maybe Text)
    , _pllPrettyPrint :: !Bool
    , _pllOrderBy     :: !PostsListOrderBy
    , _pllUserIP      :: !(Maybe Text)
    , _pllFetchImages :: !(Maybe Bool)
    , _pllEndDate     :: !(Maybe DateTime')
    , _pllBlogId      :: !Text
    , _pllStartDate   :: !(Maybe DateTime')
    , _pllKey         :: !(Maybe AuthKey)
    , _pllFetchBodies :: !Bool
    , _pllView        :: !(Maybe PostsListView)
    , _pllLabels      :: !(Maybe Text)
    , _pllPageToken   :: !(Maybe Text)
    , _pllOAuthToken  :: !(Maybe OAuthToken)
    , _pllMaxResults  :: !(Maybe Word32)
    , _pllFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pllUserIP'
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
-- * 'pllOAuthToken'
--
-- * 'pllMaxResults'
--
-- * 'pllFields'
postsList'
    :: Text -- ^ 'blogId'
    -> PostsList'
postsList' pPllBlogId_ =
    PostsList'
    { _pllStatus = Nothing
    , _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllOrderBy = Published
    , _pllUserIP = Nothing
    , _pllFetchImages = Nothing
    , _pllEndDate = Nothing
    , _pllBlogId = pPllBlogId_
    , _pllStartDate = Nothing
    , _pllKey = Nothing
    , _pllFetchBodies = True
    , _pllView = Nothing
    , _pllLabels = Nothing
    , _pllPageToken = Nothing
    , _pllOAuthToken = Nothing
    , _pllMaxResults = Nothing
    , _pllFields = Nothing
    }

-- | Statuses to include in the results.
pllStatus :: Lens' PostsList' [PostsListStatus]
pllStatus
  = lens _pllStatus (\ s a -> s{_pllStatus = a}) .
      _Default
      . _Coerce

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
pllOrderBy :: Lens' PostsList' PostsListOrderBy
pllOrderBy
  = lens _pllOrderBy (\ s a -> s{_pllOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIP :: Lens' PostsList' (Maybe Text)
pllUserIP
  = lens _pllUserIP (\ s a -> s{_pllUserIP = a})

-- | Whether image URL metadata for each post is included.
pllFetchImages :: Lens' PostsList' (Maybe Bool)
pllFetchImages
  = lens _pllFetchImages
      (\ s a -> s{_pllFetchImages = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
pllEndDate :: Lens' PostsList' (Maybe UTCTime)
pllEndDate
  = lens _pllEndDate (\ s a -> s{_pllEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch posts from.
pllBlogId :: Lens' PostsList' Text
pllBlogId
  = lens _pllBlogId (\ s a -> s{_pllBlogId = a})

-- | Earliest post date to fetch, a date-time with RFC 3339 formatting.
pllStartDate :: Lens' PostsList' (Maybe UTCTime)
pllStartDate
  = lens _pllStartDate (\ s a -> s{_pllStartDate = a})
      . mapping _DateTime

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PostsList' (Maybe AuthKey)
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
pllView :: Lens' PostsList' (Maybe PostsListView)
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
pllOAuthToken :: Lens' PostsList' (Maybe OAuthToken)
pllOAuthToken
  = lens _pllOAuthToken
      (\ s a -> s{_pllOAuthToken = a})

-- | Maximum number of posts to fetch.
pllMaxResults :: Lens' PostsList' (Maybe Word32)
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PostsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

instance GoogleAuth PostsList' where
        _AuthKey = pllKey . _Just
        _AuthToken = pllOAuthToken . _Just

instance GoogleRequest PostsList' where
        type Rs PostsList' = PostList
        request = requestWith bloggerRequest
        requestWith rq PostsList'{..}
          = go _pllBlogId (_pllStatus ^. _Default)
              (Just _pllOrderBy)
              _pllFetchImages
              _pllEndDate
              _pllStartDate
              (Just _pllFetchBodies)
              _pllView
              _pllLabels
              _pllPageToken
              _pllMaxResults
              _pllQuotaUser
              (Just _pllPrettyPrint)
              _pllUserIP
              _pllFields
              _pllKey
              _pllOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PostsListResource) rq
