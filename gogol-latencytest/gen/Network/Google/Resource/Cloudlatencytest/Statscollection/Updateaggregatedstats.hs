{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @CloudlatencytestStatscollectionUpdateaggregatedstats@.
module Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
    (
    -- * REST Resource
      StatscollectionUpdateaggregatedstatsResource

    -- * Creating a Request
    , statscollectionUpdateaggregatedstats'
    , StatscollectionUpdateaggregatedstats'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIP
    , suPayload
    , suKey
    , suOAuthToken
    , suFields
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudlatencytestStatscollectionUpdateaggregatedstats@ which the
-- 'StatscollectionUpdateaggregatedstats'' request conforms to.
type StatscollectionUpdateaggregatedstatsResource =
     "updateaggregatedstats" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AggregatedStats :>
                       Post '[JSON] AggregatedStatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdateaggregatedstats'' smart constructor.
data StatscollectionUpdateaggregatedstats' = StatscollectionUpdateaggregatedstats'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIP      :: !(Maybe Text)
    , _suPayload     :: !AggregatedStats
    , _suKey         :: !(Maybe Key)
    , _suOAuthToken  :: !(Maybe OAuthToken)
    , _suFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdateaggregatedstats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIP'
--
-- * 'suPayload'
--
-- * 'suKey'
--
-- * 'suOAuthToken'
--
-- * 'suFields'
statscollectionUpdateaggregatedstats'
    :: AggregatedStats -- ^ 'payload'
    -> StatscollectionUpdateaggregatedstats'
statscollectionUpdateaggregatedstats' pSuPayload_ =
    StatscollectionUpdateaggregatedstats'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIP = Nothing
    , _suPayload = pSuPayload_
    , _suKey = Nothing
    , _suOAuthToken = Nothing
    , _suFields = Nothing
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
suUserIP :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | Multipart request metadata.
suPayload :: Lens' StatscollectionUpdateaggregatedstats' AggregatedStats
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Key)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' StatscollectionUpdateaggregatedstats' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth
         StatscollectionUpdateaggregatedstats' where
        authKey = suKey . _Just
        authToken = suOAuthToken . _Just

instance GoogleRequest
         StatscollectionUpdateaggregatedstats' where
        type Rs StatscollectionUpdateaggregatedstats' =
             AggregatedStatsReply
        request = requestWithRoute defReq latencyTestURL
        requestWithRoute r u
          StatscollectionUpdateaggregatedstats'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy StatscollectionUpdateaggregatedstatsResource)
                      r
                      u
