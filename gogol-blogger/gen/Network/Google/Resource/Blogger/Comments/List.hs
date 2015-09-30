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
-- Module      : Network.Google.Resource.Blogger.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the comments for a post, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsList@.
module Network.Google.Resource.Blogger.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , clStatus
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clEndDate
    , clBlogId
    , clStartDate
    , clKey
    , clFetchBodies
    , clView
    , clPostId
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsList@ which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               QueryParams "status" BloggerCommentsListStatus :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "endDate" UTCTime :>
                         QueryParam "startDate" UTCTime :>
                           QueryParam "key" Text :>
                             QueryParam "fetchBodies" Bool :>
                               QueryParam "view" BloggerCommentsListView :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON] CommentList

-- | Retrieves the comments for a post, possibly filtered.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _clStatus      :: !(Maybe BloggerCommentsListStatus)
    , _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clEndDate     :: !(Maybe UTCTime)
    , _clBlogId      :: !Text
    , _clStartDate   :: !(Maybe UTCTime)
    , _clKey         :: !(Maybe Text)
    , _clFetchBodies :: !(Maybe Bool)
    , _clView        :: !(Maybe BloggerCommentsListView)
    , _clPostId      :: !Text
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clMaxResults  :: !(Maybe Word32)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clStatus'
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clEndDate'
--
-- * 'clBlogId'
--
-- * 'clStartDate'
--
-- * 'clKey'
--
-- * 'clFetchBodies'
--
-- * 'clView'
--
-- * 'clPostId'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
commentsList'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> CommentsList'
commentsList' pClBlogId_ pClPostId_ =
    CommentsList'
    { _clStatus = Nothing
    , _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clEndDate = Nothing
    , _clBlogId = pClBlogId_
    , _clStartDate = Nothing
    , _clKey = Nothing
    , _clFetchBodies = Nothing
    , _clView = Nothing
    , _clPostId = pClPostId_
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

clStatus :: Lens' CommentsList' (Maybe BloggerCommentsListStatus)
clStatus = lens _clStatus (\ s a -> s{_clStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CommentsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CommentsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CommentsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | Latest date of comment to fetch, a date-time with RFC 3339 formatting.
clEndDate :: Lens' CommentsList' (Maybe UTCTime)
clEndDate
  = lens _clEndDate (\ s a -> s{_clEndDate = a})

-- | ID of the blog to fetch comments from.
clBlogId :: Lens' CommentsList' Text
clBlogId = lens _clBlogId (\ s a -> s{_clBlogId = a})

-- | Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
clStartDate :: Lens' CommentsList' (Maybe UTCTime)
clStartDate
  = lens _clStartDate (\ s a -> s{_clStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CommentsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Whether the body content of the comments is included.
clFetchBodies :: Lens' CommentsList' (Maybe Bool)
clFetchBodies
  = lens _clFetchBodies
      (\ s a -> s{_clFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
clView :: Lens' CommentsList' (Maybe BloggerCommentsListView)
clView = lens _clView (\ s a -> s{_clView = a})

-- | ID of the post to fetch posts from.
clPostId :: Lens' CommentsList' Text
clPostId = lens _clPostId (\ s a -> s{_clPostId = a})

-- | Continuation token if request is paged.
clPageToken :: Lens' CommentsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CommentsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Maximum number of comments to include in the result.
clMaxResults :: Lens' CommentsList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CommentsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CommentsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsList'{..}
          = go _clStatus _clQuotaUser (Just _clPrettyPrint)
              _clUserIp
              _clEndDate
              _clBlogId
              _clStartDate
              _clKey
              _clFetchBodies
              _clView
              _clPostId
              _clPageToken
              _clOauthToken
              _clMaxResults
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsListResource)
                      r
                      u
