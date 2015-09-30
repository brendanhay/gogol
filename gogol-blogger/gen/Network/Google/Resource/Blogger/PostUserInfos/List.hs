{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.PostUserInfos.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostUserInfosList@.
module Blogger.PostUserInfos.List
    (
    -- * REST Resource
      PostUserInfosListAPI

    -- * Creating a Request
    , postUserInfosList
    , PostUserInfosList

    -- * Request Lenses
    , puilStatus
    , puilQuotaUser
    , puilPrettyPrint
    , puilOrderBy
    , puilUserIp
    , puilEndDate
    , puilBlogId
    , puilUserId
    , puilStartDate
    , puilKey
    , puilFetchBodies
    , puilView
    , puilLabels
    , puilPageToken
    , puilOauthToken
    , puilMaxResults
    , puilFields
    , puilAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostUserInfosList@ which the
-- 'PostUserInfosList' request conforms to.
type PostUserInfosListAPI =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               QueryParams "status" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "endDate" UTCTime :>
                     QueryParam "startDate" UTCTime :>
                       QueryParam "fetchBodies" Bool :>
                         QueryParam "view" Text :>
                           QueryParam "labels" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" Word32 :>
                                 Get '[JSON] PostUserInfosList

-- | Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
--
-- /See:/ 'postUserInfosList' smart constructor.
data PostUserInfosList = PostUserInfosList
    { _puilStatus      :: !(Maybe Text)
    , _puilQuotaUser   :: !(Maybe Text)
    , _puilPrettyPrint :: !Bool
    , _puilOrderBy     :: !Text
    , _puilUserIp      :: !(Maybe Text)
    , _puilEndDate     :: !(Maybe UTCTime)
    , _puilBlogId      :: !Text
    , _puilUserId      :: !Text
    , _puilStartDate   :: !(Maybe UTCTime)
    , _puilKey         :: !(Maybe Text)
    , _puilFetchBodies :: !Bool
    , _puilView        :: !(Maybe Text)
    , _puilLabels      :: !(Maybe Text)
    , _puilPageToken   :: !(Maybe Text)
    , _puilOauthToken  :: !(Maybe Text)
    , _puilMaxResults  :: !(Maybe Word32)
    , _puilFields      :: !(Maybe Text)
    , _puilAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puilStatus'
--
-- * 'puilQuotaUser'
--
-- * 'puilPrettyPrint'
--
-- * 'puilOrderBy'
--
-- * 'puilUserIp'
--
-- * 'puilEndDate'
--
-- * 'puilBlogId'
--
-- * 'puilUserId'
--
-- * 'puilStartDate'
--
-- * 'puilKey'
--
-- * 'puilFetchBodies'
--
-- * 'puilView'
--
-- * 'puilLabels'
--
-- * 'puilPageToken'
--
-- * 'puilOauthToken'
--
-- * 'puilMaxResults'
--
-- * 'puilFields'
--
-- * 'puilAlt'
postUserInfosList
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> PostUserInfosList
postUserInfosList pPuilBlogId_ pPuilUserId_ =
    PostUserInfosList
    { _puilStatus = Nothing
    , _puilQuotaUser = Nothing
    , _puilPrettyPrint = True
    , _puilOrderBy = "PUBLISHED"
    , _puilUserIp = Nothing
    , _puilEndDate = Nothing
    , _puilBlogId = pPuilBlogId_
    , _puilUserId = pPuilUserId_
    , _puilStartDate = Nothing
    , _puilKey = Nothing
    , _puilFetchBodies = False
    , _puilView = Nothing
    , _puilLabels = Nothing
    , _puilPageToken = Nothing
    , _puilOauthToken = Nothing
    , _puilMaxResults = Nothing
    , _puilFields = Nothing
    , _puilAlt = "json"
    }

puilStatus :: Lens' PostUserInfosList' (Maybe Text)
puilStatus
  = lens _puilStatus (\ s a -> s{_puilStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puilQuotaUser :: Lens' PostUserInfosList' (Maybe Text)
puilQuotaUser
  = lens _puilQuotaUser
      (\ s a -> s{_puilQuotaUser = a})

-- | Returns response with indentations and line breaks.
puilPrettyPrint :: Lens' PostUserInfosList' Bool
puilPrettyPrint
  = lens _puilPrettyPrint
      (\ s a -> s{_puilPrettyPrint = a})

-- | Sort order applied to search results. Default is published.
puilOrderBy :: Lens' PostUserInfosList' Text
puilOrderBy
  = lens _puilOrderBy (\ s a -> s{_puilOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puilUserIp :: Lens' PostUserInfosList' (Maybe Text)
puilUserIp
  = lens _puilUserIp (\ s a -> s{_puilUserIp = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
puilEndDate :: Lens' PostUserInfosList' (Maybe UTCTime)
puilEndDate
  = lens _puilEndDate (\ s a -> s{_puilEndDate = a})

-- | ID of the blog to fetch posts from.
puilBlogId :: Lens' PostUserInfosList' Text
puilBlogId
  = lens _puilBlogId (\ s a -> s{_puilBlogId = a})

-- | ID of the user for the per-user information to be fetched. Either the
-- word \'self\' (sans quote marks) or the user\'s profile identifier.
puilUserId :: Lens' PostUserInfosList' Text
puilUserId
  = lens _puilUserId (\ s a -> s{_puilUserId = a})

-- | Earliest post date to fetch, a date-time with RFC 3339 formatting.
puilStartDate :: Lens' PostUserInfosList' (Maybe UTCTime)
puilStartDate
  = lens _puilStartDate
      (\ s a -> s{_puilStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puilKey :: Lens' PostUserInfosList' (Maybe Text)
puilKey = lens _puilKey (\ s a -> s{_puilKey = a})

-- | Whether the body content of posts is included. Default is false.
puilFetchBodies :: Lens' PostUserInfosList' Bool
puilFetchBodies
  = lens _puilFetchBodies
      (\ s a -> s{_puilFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
puilView :: Lens' PostUserInfosList' (Maybe Text)
puilView = lens _puilView (\ s a -> s{_puilView = a})

-- | Comma-separated list of labels to search for.
puilLabels :: Lens' PostUserInfosList' (Maybe Text)
puilLabels
  = lens _puilLabels (\ s a -> s{_puilLabels = a})

-- | Continuation token if the request is paged.
puilPageToken :: Lens' PostUserInfosList' (Maybe Text)
puilPageToken
  = lens _puilPageToken
      (\ s a -> s{_puilPageToken = a})

-- | OAuth 2.0 token for the current user.
puilOauthToken :: Lens' PostUserInfosList' (Maybe Text)
puilOauthToken
  = lens _puilOauthToken
      (\ s a -> s{_puilOauthToken = a})

-- | Maximum number of posts to fetch.
puilMaxResults :: Lens' PostUserInfosList' (Maybe Word32)
puilMaxResults
  = lens _puilMaxResults
      (\ s a -> s{_puilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
puilFields :: Lens' PostUserInfosList' (Maybe Text)
puilFields
  = lens _puilFields (\ s a -> s{_puilFields = a})

-- | Data format for the response.
puilAlt :: Lens' PostUserInfosList' Text
puilAlt = lens _puilAlt (\ s a -> s{_puilAlt = a})

instance GoogleRequest PostUserInfosList' where
        type Rs PostUserInfosList' = PostUserInfosList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostUserInfosList{..}
          = go _puilStatus _puilQuotaUser _puilPrettyPrint
              (Just _puilOrderBy)
              _puilUserIp
              _puilEndDate
              _puilBlogId
              _puilUserId
              _puilStartDate
              _puilKey
              (Just _puilFetchBodies)
              _puilView
              _puilLabels
              _puilPageToken
              _puilOauthToken
              _puilMaxResults
              _puilFields
              _puilAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostUserInfosListAPI)
                      r
                      u
