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
-- Module      : Network.Google.Resource.Plus.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the comments for an activity.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusCommentsList@.
module Network.Google.Resource.Plus.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIP
    , clActivityId
    , clSortOrder
    , clKey
    , clPageToken
    , clOAuthToken
    , clMaxResults
    , clFields
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusCommentsList@ which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "sortOrder" CommentsListSortOrder :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] CommentFeed

-- | List all of the comments for an activity.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIP      :: !(Maybe Text)
    , _clActivityId  :: !Text
    , _clSortOrder   :: !CommentsListSortOrder
    , _clKey         :: !(Maybe AuthKey)
    , _clPageToken   :: !(Maybe Text)
    , _clOAuthToken  :: !(Maybe OAuthToken)
    , _clMaxResults  :: !Word32
    , _clFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIP'
--
-- * 'clActivityId'
--
-- * 'clSortOrder'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOAuthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
commentsList'
    :: Text -- ^ 'activityId'
    -> CommentsList'
commentsList' pClActivityId_ =
    CommentsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIP = Nothing
    , _clActivityId = pClActivityId_
    , _clSortOrder = Ascending
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOAuthToken = Nothing
    , _clMaxResults = 20
    , _clFields = Nothing
    }

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
clUserIP :: Lens' CommentsList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | The ID of the activity to get comments for.
clActivityId :: Lens' CommentsList' Text
clActivityId
  = lens _clActivityId (\ s a -> s{_clActivityId = a})

-- | The order in which to sort the list of comments.
clSortOrder :: Lens' CommentsList' CommentsListSortOrder
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CommentsList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CommentsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' CommentsList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | The maximum number of comments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
clMaxResults :: Lens' CommentsList' Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CommentsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth CommentsList' where
        authKey = clKey . _Just
        authToken = clOAuthToken . _Just

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u CommentsList'{..}
          = go _clActivityId (Just _clSortOrder) _clPageToken
              (Just _clMaxResults)
              _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsListResource)
                      r
                      u
