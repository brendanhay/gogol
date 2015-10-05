{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Plus.Activities.Search
    (
    -- * REST Resource
      ActivitiesSearchResource

    -- * Creating a Request
    , activitiesSearch'
    , ActivitiesSearch'

    -- * Request Lenses
    , asQuotaUser
    , asPrettyPrint
    , asOrderBy
    , asUserIP
    , asKey
    , asQuery
    , asLanguage
    , asPageToken
    , asOAuthToken
    , asMaxResults
    , asFields
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusActivitiesSearch@ which the
-- 'ActivitiesSearch'' request conforms to.
type ActivitiesSearchResource =
     "activities" :>
       QueryParam "query" Text :>
         QueryParam "orderBy" ActivitiesSearchOrderBy :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ActivityFeed

-- | Search public activities.
--
-- /See:/ 'activitiesSearch'' smart constructor.
data ActivitiesSearch' = ActivitiesSearch'
    { _asQuotaUser   :: !(Maybe Text)
    , _asPrettyPrint :: !Bool
    , _asOrderBy     :: !ActivitiesSearchOrderBy
    , _asUserIP      :: !(Maybe Text)
    , _asKey         :: !(Maybe Key)
    , _asQuery       :: !Text
    , _asLanguage    :: !Text
    , _asPageToken   :: !(Maybe Text)
    , _asOAuthToken  :: !(Maybe OAuthToken)
    , _asMaxResults  :: !Word32
    , _asFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'asUserIP'
--
-- * 'asKey'
--
-- * 'asQuery'
--
-- * 'asLanguage'
--
-- * 'asPageToken'
--
-- * 'asOAuthToken'
--
-- * 'asMaxResults'
--
-- * 'asFields'
activitiesSearch'
    :: Text -- ^ 'query'
    -> ActivitiesSearch'
activitiesSearch' pAsQuery_ =
    ActivitiesSearch'
    { _asQuotaUser = Nothing
    , _asPrettyPrint = True
    , _asOrderBy = ASOBRecent
    , _asUserIP = Nothing
    , _asKey = Nothing
    , _asQuery = pAsQuery_
    , _asLanguage = "en-US"
    , _asPageToken = Nothing
    , _asOAuthToken = Nothing
    , _asMaxResults = 10
    , _asFields = Nothing
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
asOrderBy :: Lens' ActivitiesSearch' ActivitiesSearchOrderBy
asOrderBy
  = lens _asOrderBy (\ s a -> s{_asOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asUserIP :: Lens' ActivitiesSearch' (Maybe Text)
asUserIP = lens _asUserIP (\ s a -> s{_asUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asKey :: Lens' ActivitiesSearch' (Maybe Key)
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
asOAuthToken :: Lens' ActivitiesSearch' (Maybe OAuthToken)
asOAuthToken
  = lens _asOAuthToken (\ s a -> s{_asOAuthToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
asMaxResults :: Lens' ActivitiesSearch' Word32
asMaxResults
  = lens _asMaxResults (\ s a -> s{_asMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
asFields :: Lens' ActivitiesSearch' (Maybe Text)
asFields = lens _asFields (\ s a -> s{_asFields = a})

instance GoogleAuth ActivitiesSearch' where
        authKey = asKey . _Just
        authToken = asOAuthToken . _Just

instance GoogleRequest ActivitiesSearch' where
        type Rs ActivitiesSearch' = ActivityFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u ActivitiesSearch'{..}
          = go (Just _asQuery) (Just _asOrderBy)
              (Just _asLanguage)
              _asPageToken
              (Just _asMaxResults)
              _asQuotaUser
              (Just _asPrettyPrint)
              _asUserIP
              _asFields
              _asKey
              _asOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesSearchResource)
                      r
                      u
