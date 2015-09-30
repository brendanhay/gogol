{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module PlusDomains.Comments.List
    (
    -- * REST Resource
      CommentsListAPI

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clActivityId
    , clSortOrder
    , clKey
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsList@ which the
-- 'CommentsList' request conforms to.
type CommentsListAPI =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "sortOrder" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] CommentFeed

-- | List all of the comments for an activity.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clActivityId  :: !Text
    , _clSortOrder   :: !Text
    , _clKey         :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clMaxResults  :: !Word32
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clActivityId'
--
-- * 'clSortOrder'
--
-- * 'clKey'
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
commentsList
    :: Text -- ^ 'activityId'
    -> CommentsList
commentsList pClActivityId_ =
    CommentsList
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clActivityId = pClActivityId_
    , _clSortOrder = "ascending"
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = 20
    , _clFields = Nothing
    , _clAlt = "json"
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
clUserIp :: Lens' CommentsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | The ID of the activity to get comments for.
clActivityId :: Lens' CommentsList' Text
clActivityId
  = lens _clActivityId (\ s a -> s{_clActivityId = a})

-- | The order in which to sort the list of comments.
clSortOrder :: Lens' CommentsList' Text
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CommentsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CommentsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CommentsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | The maximum number of comments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
clMaxResults :: Lens' CommentsList' Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CommentsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CommentsList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CommentsList{..}
          = go _clQuotaUser _clPrettyPrint _clUserIp
              _clActivityId
              (Just _clSortOrder)
              _clKey
              _clPageToken
              _clOauthToken
              (Just _clMaxResults)
              _clFields
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsListAPI) r
                      u
