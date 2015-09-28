{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.list@.
module Network.Google.API.PlusDomains.Activities.List
    (
    -- * REST Resource
      ActivitiesListAPI

    -- * Creating a Request
    , activitiesList'
    , ActivitiesList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aCollection
    , aUserId
    , aKey
    , aPageToken
    , aOauthToken
    , aMaxResults
    , aFields
    , aAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.activities.list which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListAPI =
     "people" :>
       Capture "userId" Text :>
         "activities" :>
           Capture "collection" ActivitiesList'Collection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ActivityFeed

-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aCollection  :: !ActivitiesList'Collection
    , _aUserId      :: !Text
    , _aKey         :: !(Maybe Text)
    , _aPageToken   :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aMaxResults  :: !Nat
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aCollection'
--
-- * 'aUserId'
--
-- * 'aKey'
--
-- * 'aPageToken'
--
-- * 'aOauthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
--
-- * 'aAlt'
activitiesList'
    :: ActivitiesList'Collection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> ActivitiesList'
activitiesList' pACollection_ pAUserId_ =
    ActivitiesList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aCollection = pACollection_
    , _aUserId = pAUserId_
    , _aKey = Nothing
    , _aPageToken = Nothing
    , _aOauthToken = Nothing
    , _aMaxResults = 20
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' ActivitiesList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' ActivitiesList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' ActivitiesList' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | The collection of activities to list.
aCollection :: Lens' ActivitiesList' ActivitiesList'Collection
aCollection
  = lens _aCollection (\ s a -> s{_aCollection = a})

-- | The ID of the user to get activities for. The special value \"me\" can
-- be used to indicate the authenticated user.
aUserId :: Lens' ActivitiesList' Text
aUserId = lens _aUserId (\ s a -> s{_aUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' ActivitiesList' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
aPageToken :: Lens' ActivitiesList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' ActivitiesList' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
aMaxResults :: Lens' ActivitiesList' Natural
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a}) .
      _Nat

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' ActivitiesList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' ActivitiesList' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ActivityFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u ActivitiesList'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aCollection
              _aUserId
              _aKey
              _aPageToken
              _aOauthToken
              (Just _aMaxResults)
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ActivitiesListAPI)
                      r
                      u
