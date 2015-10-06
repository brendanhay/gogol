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
    , clbbUserIP
    , clbbEndDate
    , clbbBlogId
    , clbbStartDate
    , clbbKey
    , clbbFetchBodies
    , clbbPageToken
    , clbbOAuthToken
    , clbbMaxResults
    , clbbFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsListByBlog@ which the
-- 'CommentsListByBlog'' request conforms to.
type CommentsListByBlogResource =
     "blogs" :>
       Capture "blogId" Text :>
         "comments" :>
           QueryParams "status" CommentsListByBlogStatus :>
             QueryParam "endDate" DateTime' :>
               QueryParam "startDate" DateTime' :>
                 QueryParam "fetchBodies" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] CommentList

-- | Retrieves the comments for a blog, across all posts, possibly filtered.
--
-- /See:/ 'commentsListByBlog'' smart constructor.
data CommentsListByBlog' = CommentsListByBlog'
    { _clbbStatus      :: !(Maybe [CommentsListByBlogStatus])
    , _clbbQuotaUser   :: !(Maybe Text)
    , _clbbPrettyPrint :: !Bool
    , _clbbUserIP      :: !(Maybe Text)
    , _clbbEndDate     :: !(Maybe DateTime')
    , _clbbBlogId      :: !Text
    , _clbbStartDate   :: !(Maybe DateTime')
    , _clbbKey         :: !(Maybe AuthKey)
    , _clbbFetchBodies :: !(Maybe Bool)
    , _clbbPageToken   :: !(Maybe Text)
    , _clbbOAuthToken  :: !(Maybe OAuthToken)
    , _clbbMaxResults  :: !(Maybe Word32)
    , _clbbFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'clbbUserIP'
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
-- * 'clbbOAuthToken'
--
-- * 'clbbMaxResults'
--
-- * 'clbbFields'
commentsListByBlog'
    :: Text -- ^ 'blogId'
    -> CommentsListByBlog'
commentsListByBlog' pClbbBlogId_ =
    CommentsListByBlog'
    { _clbbStatus = Nothing
    , _clbbQuotaUser = Nothing
    , _clbbPrettyPrint = True
    , _clbbUserIP = Nothing
    , _clbbEndDate = Nothing
    , _clbbBlogId = pClbbBlogId_
    , _clbbStartDate = Nothing
    , _clbbKey = Nothing
    , _clbbFetchBodies = Nothing
    , _clbbPageToken = Nothing
    , _clbbOAuthToken = Nothing
    , _clbbMaxResults = Nothing
    , _clbbFields = Nothing
    }

clbbStatus :: Lens' CommentsListByBlog' [CommentsListByBlogStatus]
clbbStatus
  = lens _clbbStatus (\ s a -> s{_clbbStatus = a}) .
      _Default
      . _Coerce

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
clbbUserIP :: Lens' CommentsListByBlog' (Maybe Text)
clbbUserIP
  = lens _clbbUserIP (\ s a -> s{_clbbUserIP = a})

-- | Latest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbEndDate :: Lens' CommentsListByBlog' (Maybe UTCTime)
clbbEndDate
  = lens _clbbEndDate (\ s a -> s{_clbbEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch comments from.
clbbBlogId :: Lens' CommentsListByBlog' Text
clbbBlogId
  = lens _clbbBlogId (\ s a -> s{_clbbBlogId = a})

-- | Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbStartDate :: Lens' CommentsListByBlog' (Maybe UTCTime)
clbbStartDate
  = lens _clbbStartDate
      (\ s a -> s{_clbbStartDate = a})
      . mapping _DateTime

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clbbKey :: Lens' CommentsListByBlog' (Maybe AuthKey)
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
clbbOAuthToken :: Lens' CommentsListByBlog' (Maybe OAuthToken)
clbbOAuthToken
  = lens _clbbOAuthToken
      (\ s a -> s{_clbbOAuthToken = a})

-- | Maximum number of comments to include in the result.
clbbMaxResults :: Lens' CommentsListByBlog' (Maybe Word32)
clbbMaxResults
  = lens _clbbMaxResults
      (\ s a -> s{_clbbMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clbbFields :: Lens' CommentsListByBlog' (Maybe Text)
clbbFields
  = lens _clbbFields (\ s a -> s{_clbbFields = a})

instance GoogleAuth CommentsListByBlog' where
        _AuthKey = clbbKey . _Just
        _AuthToken = clbbOAuthToken . _Just

instance GoogleRequest CommentsListByBlog' where
        type Rs CommentsListByBlog' = CommentList
        request = requestWith bloggerRequest
        requestWith rq CommentsListByBlog'{..}
          = go _clbbBlogId (_clbbStatus ^. _Default)
              _clbbEndDate
              _clbbStartDate
              _clbbFetchBodies
              _clbbPageToken
              _clbbMaxResults
              _clbbQuotaUser
              (Just _clbbPrettyPrint)
              _clbbUserIP
              _clbbFields
              _clbbKey
              _clbbOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CommentsListByBlogResource)
                      rq
