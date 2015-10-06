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
-- Module      : Network.Google.Resource.PlusDomains.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the comments for an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCommentsList@.
module Network.Google.Resource.PlusDomains.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , comQuotaUser
    , comPrettyPrint
    , comUserIP
    , comActivityId
    , comSortOrder
    , comKey
    , comPageToken
    , comOAuthToken
    , comMaxResults
    , comFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsList@ which the
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
    { _comQuotaUser   :: !(Maybe Text)
    , _comPrettyPrint :: !Bool
    , _comUserIP      :: !(Maybe Text)
    , _comActivityId  :: !Text
    , _comSortOrder   :: !CommentsListSortOrder
    , _comKey         :: !(Maybe AuthKey)
    , _comPageToken   :: !(Maybe Text)
    , _comOAuthToken  :: !(Maybe OAuthToken)
    , _comMaxResults  :: !Word32
    , _comFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIP'
--
-- * 'comActivityId'
--
-- * 'comSortOrder'
--
-- * 'comKey'
--
-- * 'comPageToken'
--
-- * 'comOAuthToken'
--
-- * 'comMaxResults'
--
-- * 'comFields'
commentsList'
    :: Text -- ^ 'activityId'
    -> CommentsList'
commentsList' pComActivityId_ =
    CommentsList'
    { _comQuotaUser = Nothing
    , _comPrettyPrint = True
    , _comUserIP = Nothing
    , _comActivityId = pComActivityId_
    , _comSortOrder = Ascending
    , _comKey = Nothing
    , _comPageToken = Nothing
    , _comOAuthToken = Nothing
    , _comMaxResults = 20
    , _comFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsList' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsList' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIP :: Lens' CommentsList' (Maybe Text)
comUserIP
  = lens _comUserIP (\ s a -> s{_comUserIP = a})

-- | The ID of the activity to get comments for.
comActivityId :: Lens' CommentsList' Text
comActivityId
  = lens _comActivityId
      (\ s a -> s{_comActivityId = a})

-- | The order in which to sort the list of comments.
comSortOrder :: Lens' CommentsList' CommentsListSortOrder
comSortOrder
  = lens _comSortOrder (\ s a -> s{_comSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsList' (Maybe AuthKey)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
comPageToken :: Lens' CommentsList' (Maybe Text)
comPageToken
  = lens _comPageToken (\ s a -> s{_comPageToken = a})

-- | OAuth 2.0 token for the current user.
comOAuthToken :: Lens' CommentsList' (Maybe OAuthToken)
comOAuthToken
  = lens _comOAuthToken
      (\ s a -> s{_comOAuthToken = a})

-- | The maximum number of comments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
comMaxResults :: Lens' CommentsList' Word32
comMaxResults
  = lens _comMaxResults
      (\ s a -> s{_comMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsList' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

instance GoogleAuth CommentsList' where
        authKey = comKey . _Just
        authToken = comOAuthToken . _Just

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentFeed
        request = requestWith plusDomainsRequest
        requestWith rq CommentsList'{..}
          = go _comActivityId (Just _comSortOrder)
              _comPageToken
              (Just _comMaxResults)
              _comQuotaUser
              (Just _comPrettyPrint)
              _comUserIP
              _comFields
              _comKey
              _comOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CommentsListResource)
                      rq
