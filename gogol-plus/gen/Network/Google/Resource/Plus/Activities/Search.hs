{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Plus.Activities.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search public activities.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusActivitiesSearch@.
module Plus.Activities.Search
    (
    -- * REST Resource
      ActivitiesSearchAPI

    -- * Creating a Request
    , activitiesSearch
    , ActivitiesSearch

    -- * Request Lenses
    , asQuotaUser
    , asPrettyPrint
    , asOrderBy
    , asUserIp
    , asKey
    , asQuery
    , asLanguage
    , asPageToken
    , asOauthToken
    , asMaxResults
    , asFields
    , asAlt
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusActivitiesSearch@ which the
-- 'ActivitiesSearch' request conforms to.
type ActivitiesSearchAPI =
     "activities" :>
       QueryParam "orderBy" Text :>
         QueryParam "query" Text :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] ActivityFeed

-- | Search public activities.
--
-- /See:/ 'activitiesSearch' smart constructor.
data ActivitiesSearch = ActivitiesSearch
    { _asQuotaUser   :: !(Maybe Text)
    , _asPrettyPrint :: !Bool
    , _asOrderBy     :: !Text
    , _asUserIp      :: !(Maybe Text)
    , _asKey         :: !(Maybe Text)
    , _asQuery       :: !Text
    , _asLanguage    :: !Text
    , _asPageToken   :: !(Maybe Text)
    , _asOauthToken  :: !(Maybe Text)
    , _asMaxResults  :: !Word32
    , _asFields      :: !(Maybe Text)
    , _asAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asQuotaUser'
--
-- * 'asPrettyPrint'
--
-- * 'asOrderBy'
--
-- * 'asUserIp'
--
-- * 'asKey'
--
-- * 'asQuery'
--
-- * 'asLanguage'
--
-- * 'asPageToken'
--
-- * 'asOauthToken'
--
-- * 'asMaxResults'
--
-- * 'asFields'
--
-- * 'asAlt'
activitiesSearch
    :: Text -- ^ 'query'
    -> ActivitiesSearch
activitiesSearch pAsQuery_ =
    ActivitiesSearch
    { _asQuotaUser = Nothing
    , _asPrettyPrint = True
    , _asOrderBy = "recent"
    , _asUserIp = Nothing
    , _asKey = Nothing
    , _asQuery = pAsQuery_
    , _asLanguage = "en-US"
    , _asPageToken = Nothing
    , _asOauthToken = Nothing
    , _asMaxResults = 10
    , _asFields = Nothing
    , _asAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asQuotaUser :: Lens' ActivitiesSearch' (Maybe Text)
asQuotaUser
  = lens _asQuotaUser (\ s a -> s{_asQuotaUser = a})

-- | Returns response with indentations and line breaks.
asPrettyPrint :: Lens' ActivitiesSearch' Bool
asPrettyPrint
  = lens _asPrettyPrint
      (\ s a -> s{_asPrettyPrint = a})

-- | Specifies how to order search results.
asOrderBy :: Lens' ActivitiesSearch' Text
asOrderBy
  = lens _asOrderBy (\ s a -> s{_asOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asUserIp :: Lens' ActivitiesSearch' (Maybe Text)
asUserIp = lens _asUserIp (\ s a -> s{_asUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asKey :: Lens' ActivitiesSearch' (Maybe Text)
asKey = lens _asKey (\ s a -> s{_asKey = a})

-- | Full-text search query string.
asQuery :: Lens' ActivitiesSearch' Text
asQuery = lens _asQuery (\ s a -> s{_asQuery = a})

-- | Specify the preferred language to search with. See search language codes
-- for available values.
asLanguage :: Lens' ActivitiesSearch' Text
asLanguage
  = lens _asLanguage (\ s a -> s{_asLanguage = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response. This token can be of any
-- length.
asPageToken :: Lens' ActivitiesSearch' (Maybe Text)
asPageToken
  = lens _asPageToken (\ s a -> s{_asPageToken = a})

-- | OAuth 2.0 token for the current user.
asOauthToken :: Lens' ActivitiesSearch' (Maybe Text)
asOauthToken
  = lens _asOauthToken (\ s a -> s{_asOauthToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
asMaxResults :: Lens' ActivitiesSearch' Word32
asMaxResults
  = lens _asMaxResults (\ s a -> s{_asMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
asFields :: Lens' ActivitiesSearch' (Maybe Text)
asFields = lens _asFields (\ s a -> s{_asFields = a})

-- | Data format for the response.
asAlt :: Lens' ActivitiesSearch' Text
asAlt = lens _asAlt (\ s a -> s{_asAlt = a})

instance GoogleRequest ActivitiesSearch' where
        type Rs ActivitiesSearch' = ActivityFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u ActivitiesSearch{..}
          = go _asQuotaUser _asPrettyPrint (Just _asOrderBy)
              _asUserIp
              _asKey
              (Just _asQuery)
              (Just _asLanguage)
              _asPageToken
              _asOauthToken
              (Just _asMaxResults)
              _asFields
              _asAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesSearchAPI)
                      r
                      u
