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
module Network.Google.Resource.Blogger.PostUserInfos.List
    (
    -- * REST Resource
      PostUserInfosListResource

    -- * Creating a Request
    , postUserInfosList'
    , PostUserInfosList'

    -- * Request Lenses
    , puilStatus
    , puilQuotaUser
    , puilPrettyPrint
    , puilOrderBy
    , puilUserIP
    , puilEndDate
    , puilBlogId
    , puilUserId
    , puilStartDate
    , puilKey
    , puilFetchBodies
    , puilView
    , puilLabels
    , puilPageToken
    , puilOAuthToken
    , puilMaxResults
    , puilFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostUserInfosList@ method which the
-- 'PostUserInfosList'' request conforms to.
type PostUserInfosListResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               QueryParams "status" PostUserInfosListStatus :>
                 QueryParam "orderBy" PostUserInfosListOrderBy :>
                   QueryParam "endDate" DateTime' :>
                     QueryParam "startDate" DateTime' :>
                       QueryParam "fetchBodies" Bool :>
                         QueryParam "view" PostUserInfosListView :>
                           QueryParam "labels" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" AuthKey :>
                                           Header "Authorization" OAuthToken :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] PostUserInfosList

-- | Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
--
-- /See:/ 'postUserInfosList'' smart constructor.
data PostUserInfosList' = PostUserInfosList'
    { _puilStatus      :: !(Maybe [PostUserInfosListStatus])
    , _puilQuotaUser   :: !(Maybe Text)
    , _puilPrettyPrint :: !Bool
    , _puilOrderBy     :: !PostUserInfosListOrderBy
    , _puilUserIP      :: !(Maybe Text)
    , _puilEndDate     :: !(Maybe DateTime')
    , _puilBlogId      :: !Text
    , _puilUserId      :: !Text
    , _puilStartDate   :: !(Maybe DateTime')
    , _puilKey         :: !(Maybe AuthKey)
    , _puilFetchBodies :: !Bool
    , _puilView        :: !(Maybe PostUserInfosListView)
    , _puilLabels      :: !(Maybe Text)
    , _puilPageToken   :: !(Maybe Text)
    , _puilOAuthToken  :: !(Maybe OAuthToken)
    , _puilMaxResults  :: !(Maybe Word32)
    , _puilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'puilUserIP'
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
-- * 'puilOAuthToken'
--
-- * 'puilMaxResults'
--
-- * 'puilFields'
postUserInfosList'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> PostUserInfosList'
postUserInfosList' pPuilBlogId_ pPuilUserId_ =
    PostUserInfosList'
    { _puilStatus = Nothing
    , _puilQuotaUser = Nothing
    , _puilPrettyPrint = True
    , _puilOrderBy = PUILOBPublished
    , _puilUserIP = Nothing
    , _puilEndDate = Nothing
    , _puilBlogId = pPuilBlogId_
    , _puilUserId = pPuilUserId_
    , _puilStartDate = Nothing
    , _puilKey = Nothing
    , _puilFetchBodies = False
    , _puilView = Nothing
    , _puilLabels = Nothing
    , _puilPageToken = Nothing
    , _puilOAuthToken = Nothing
    , _puilMaxResults = Nothing
    , _puilFields = Nothing
    }

puilStatus :: Lens' PostUserInfosList' [PostUserInfosListStatus]
puilStatus
  = lens _puilStatus (\ s a -> s{_puilStatus = a}) .
      _Default
      . _Coerce

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
puilOrderBy :: Lens' PostUserInfosList' PostUserInfosListOrderBy
puilOrderBy
  = lens _puilOrderBy (\ s a -> s{_puilOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puilUserIP :: Lens' PostUserInfosList' (Maybe Text)
puilUserIP
  = lens _puilUserIP (\ s a -> s{_puilUserIP = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
puilEndDate :: Lens' PostUserInfosList' (Maybe UTCTime)
puilEndDate
  = lens _puilEndDate (\ s a -> s{_puilEndDate = a}) .
      mapping _DateTime

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
      . mapping _DateTime

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puilKey :: Lens' PostUserInfosList' (Maybe AuthKey)
puilKey = lens _puilKey (\ s a -> s{_puilKey = a})

-- | Whether the body content of posts is included. Default is false.
puilFetchBodies :: Lens' PostUserInfosList' Bool
puilFetchBodies
  = lens _puilFetchBodies
      (\ s a -> s{_puilFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
puilView :: Lens' PostUserInfosList' (Maybe PostUserInfosListView)
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
puilOAuthToken :: Lens' PostUserInfosList' (Maybe OAuthToken)
puilOAuthToken
  = lens _puilOAuthToken
      (\ s a -> s{_puilOAuthToken = a})

-- | Maximum number of posts to fetch.
puilMaxResults :: Lens' PostUserInfosList' (Maybe Word32)
puilMaxResults
  = lens _puilMaxResults
      (\ s a -> s{_puilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
puilFields :: Lens' PostUserInfosList' (Maybe Text)
puilFields
  = lens _puilFields (\ s a -> s{_puilFields = a})

instance GoogleAuth PostUserInfosList' where
        _AuthKey = puilKey . _Just
        _AuthToken = puilOAuthToken . _Just

instance GoogleRequest PostUserInfosList' where
        type Rs PostUserInfosList' = PostUserInfosList
        request = requestWith bloggerRequest
        requestWith rq PostUserInfosList'{..}
          = go _puilUserId _puilBlogId
              (_puilStatus ^. _Default)
              (Just _puilOrderBy)
              _puilEndDate
              _puilStartDate
              (Just _puilFetchBodies)
              _puilView
              _puilLabels
              _puilPageToken
              _puilMaxResults
              _puilQuotaUser
              (Just _puilPrettyPrint)
              _puilUserIP
              _puilFields
              _puilKey
              _puilOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PostUserInfosListResource)
                      rq
