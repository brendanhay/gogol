{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudlatencytest.Statscollection.Updateaggregatedstats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @cloudlatencytest.statscollection.updateaggregatedstats@.
module Network.Google.API.Cloudlatencytest.Statscollection.Updateaggregatedstats
    (
    -- * REST Resource
      StatscollectionUpdateaggregatedstatsAPI

    -- * Creating a Request
    , statscollectionUpdateaggregatedstats'
    , StatscollectionUpdateaggregatedstats'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suKey
    , suOauthToken
    , suFields
    , suAlt
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for cloudlatencytest.statscollection.updateaggregatedstats which the
-- 'StatscollectionUpdateaggregatedstats'' request conforms to.
type StatscollectionUpdateaggregatedstatsAPI =
     "updateaggregatedstats" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] AggregatedStatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdateaggregatedstats'' smart constructor.
data StatscollectionUpdateaggregatedstats' = StatscollectionUpdateaggregatedstats'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIp      :: !(Maybe Text)
    , _suKey         :: !(Maybe Text)
    , _suOauthToken  :: !(Maybe Text)
    , _suFields      :: !(Maybe Text)
    , _suAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdateaggregatedstats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suKey'
--
-- * 'suOauthToken'
--
-- * 'suFields'
--
-- * 'suAlt'
statscollectionUpdateaggregatedstats'
    :: StatscollectionUpdateaggregatedstats'
statscollectionUpdateaggregatedstats' =
    StatscollectionUpdateaggregatedstats'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suKey = Nothing
    , _suOauthToken = Nothing
    , _suFields = Nothing
    , _suAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' StatscollectionUpdateaggregatedstats' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIp :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' StatscollectionUpdateaggregatedstats' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest
         StatscollectionUpdateaggregatedstats' where
        type Rs StatscollectionUpdateaggregatedstats' =
             AggregatedStatsReply
        request = requestWithRoute defReq latencyTestURL
        requestWithRoute r u
          StatscollectionUpdateaggregatedstats'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIp
              _suKey
              _suOauthToken
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy StatscollectionUpdateaggregatedstatsAPI)
                      r
                      u
