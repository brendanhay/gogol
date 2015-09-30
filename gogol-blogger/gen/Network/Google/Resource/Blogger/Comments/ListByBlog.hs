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
-- Module      : Network.Google.Resource.Blogger.Comments.ListByBlog
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the comments for a blog, across all posts, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsListByBlog@.
module Network.Google.Resource.Blogger.Comments.ListByBlog
    (
    -- * REST Resource
      CommentsListByBlogResource

    -- * Creating a Request
    , commentsListByBlog'
    , CommentsListByBlog'

    -- * Request Lenses
    , clbbStatus
    , clbbQuotaUser
    , clbbPrettyPrint
    , clbbUserIp
    , clbbEndDate
    , clbbBlogId
    , clbbStartDate
    , clbbKey
    , clbbFetchBodies
    , clbbPageToken
    , clbbOauthToken
    , clbbMaxResults
    , clbbFields
    , clbbAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsListByBlog@ which the
-- 'CommentsListByBlog'' request conforms to.
type CommentsListByBlogResource =
     "blogs" :>
       Capture "blogId" Text :>
         "comments" :>
           QueryParams "status" BloggerCommentsListByBlogStatus
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "endDate" UTCTime :>
                     QueryParam "startDate" UTCTime :>
                       QueryParam "key" Text :>
                         QueryParam "fetchBodies" Bool :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] CommentList

-- | Retrieves the comments for a blog, across all posts, possibly filtered.
--
-- /See:/ 'commentsListByBlog'' smart constructor.
data CommentsListByBlog' = CommentsListByBlog'
    { _clbbStatus      :: !(Maybe BloggerCommentsListByBlogStatus)
    , _clbbQuotaUser   :: !(Maybe Text)
    , _clbbPrettyPrint :: !Bool
    , _clbbUserIp      :: !(Maybe Text)
    , _clbbEndDate     :: !(Maybe UTCTime)
    , _clbbBlogId      :: !Text
    , _clbbStartDate   :: !(Maybe UTCTime)
    , _clbbKey         :: !(Maybe Text)
    , _clbbFetchBodies :: !(Maybe Bool)
    , _clbbPageToken   :: !(Maybe Text)
    , _clbbOauthToken  :: !(Maybe Text)
    , _clbbMaxResults  :: !(Maybe Word32)
    , _clbbFields      :: !(Maybe Text)
    , _clbbAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsListByBlog'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clbbStatus'
--
-- * 'clbbQuotaUser'
--
-- * 'clbbPrettyPrint'
--
-- * 'clbbUserIp'
--
-- * 'clbbEndDate'
--
-- * 'clbbBlogId'
--
-- * 'clbbStartDate'
--
-- * 'clbbKey'
--
-- * 'clbbFetchBodies'
--
-- * 'clbbPageToken'
--
-- * 'clbbOauthToken'
--
-- * 'clbbMaxResults'
--
-- * 'clbbFields'
--
-- * 'clbbAlt'
commentsListByBlog'
    :: Text -- ^ 'blogId'
    -> CommentsListByBlog'
commentsListByBlog' pClbbBlogId_ =
    CommentsListByBlog'
    { _clbbStatus = Nothing
    , _clbbQuotaUser = Nothing
    , _clbbPrettyPrint = True
    , _clbbUserIp = Nothing
    , _clbbEndDate = Nothing
    , _clbbBlogId = pClbbBlogId_
    , _clbbStartDate = Nothing
    , _clbbKey = Nothing
    , _clbbFetchBodies = Nothing
    , _clbbPageToken = Nothing
    , _clbbOauthToken = Nothing
    , _clbbMaxResults = Nothing
    , _clbbFields = Nothing
    , _clbbAlt = JSON
    }

clbbStatus :: Lens' CommentsListByBlog' (Maybe BloggerCommentsListByBlogStatus)
clbbStatus
  = lens _clbbStatus (\ s a -> s{_clbbStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clbbQuotaUser :: Lens' CommentsListByBlog' (Maybe Text)
clbbQuotaUser
  = lens _clbbQuotaUser
      (\ s a -> s{_clbbQuotaUser = a})

-- | Returns response with indentations and line breaks.
clbbPrettyPrint :: Lens' CommentsListByBlog' Bool
clbbPrettyPrint
  = lens _clbbPrettyPrint
      (\ s a -> s{_clbbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clbbUserIp :: Lens' CommentsListByBlog' (Maybe Text)
clbbUserIp
  = lens _clbbUserIp (\ s a -> s{_clbbUserIp = a})

-- | Latest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbEndDate :: Lens' CommentsListByBlog' (Maybe UTCTime)
clbbEndDate
  = lens _clbbEndDate (\ s a -> s{_clbbEndDate = a})

-- | ID of the blog to fetch comments from.
clbbBlogId :: Lens' CommentsListByBlog' Text
clbbBlogId
  = lens _clbbBlogId (\ s a -> s{_clbbBlogId = a})

-- | Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbStartDate :: Lens' CommentsListByBlog' (Maybe UTCTime)
clbbStartDate
  = lens _clbbStartDate
      (\ s a -> s{_clbbStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clbbKey :: Lens' CommentsListByBlog' (Maybe Text)
clbbKey = lens _clbbKey (\ s a -> s{_clbbKey = a})

-- | Whether the body content of the comments is included.
clbbFetchBodies :: Lens' CommentsListByBlog' (Maybe Bool)
clbbFetchBodies
  = lens _clbbFetchBodies
      (\ s a -> s{_clbbFetchBodies = a})

-- | Continuation token if request is paged.
clbbPageToken :: Lens' CommentsListByBlog' (Maybe Text)
clbbPageToken
  = lens _clbbPageToken
      (\ s a -> s{_clbbPageToken = a})

-- | OAuth 2.0 token for the current user.
clbbOauthToken :: Lens' CommentsListByBlog' (Maybe Text)
clbbOauthToken
  = lens _clbbOauthToken
      (\ s a -> s{_clbbOauthToken = a})

-- | Maximum number of comments to include in the result.
clbbMaxResults :: Lens' CommentsListByBlog' (Maybe Word32)
clbbMaxResults
  = lens _clbbMaxResults
      (\ s a -> s{_clbbMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clbbFields :: Lens' CommentsListByBlog' (Maybe Text)
clbbFields
  = lens _clbbFields (\ s a -> s{_clbbFields = a})

-- | Data format for the response.
clbbAlt :: Lens' CommentsListByBlog' Alt
clbbAlt = lens _clbbAlt (\ s a -> s{_clbbAlt = a})

instance GoogleRequest CommentsListByBlog' where
        type Rs CommentsListByBlog' = CommentList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsListByBlog'{..}
          = go _clbbStatus _clbbQuotaUser
              (Just _clbbPrettyPrint)
              _clbbUserIp
              _clbbEndDate
              _clbbBlogId
              _clbbStartDate
              _clbbKey
              _clbbFetchBodies
              _clbbPageToken
              _clbbOauthToken
              _clbbMaxResults
              _clbbFields
              (Just _clbbAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsListByBlogResource)
                      r
                      u
