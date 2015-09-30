{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Cloudlatencytest.Statscollection.Updateaggregatedstats
    (
    -- * REST Resource
      StatscollectionUpdateaggregatedstatsAPI

    -- * Creating a Request
    , statscollectionUpdateaggregatedstats
    , StatscollectionUpdateaggregatedstats

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sKey
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudlatencytestStatscollectionUpdateaggregatedstats@ which the
-- 'StatscollectionUpdateaggregatedstats' request conforms to.
type StatscollectionUpdateaggregatedstatsAPI =
     "updateaggregatedstats" :>
       Post '[JSON] AggregatedStatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdateaggregatedstats' smart constructor.
data StatscollectionUpdateaggregatedstats = StatscollectionUpdateaggregatedstats
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sKey         :: !(Maybe Text)
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdateaggregatedstats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
statscollectionUpdateaggregatedstats
    :: StatscollectionUpdateaggregatedstats
statscollectionUpdateaggregatedstats =
    StatscollectionUpdateaggregatedstats
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' StatscollectionUpdateaggregatedstats' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' StatscollectionUpdateaggregatedstats' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' StatscollectionUpdateaggregatedstats' Text
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest
         StatscollectionUpdateaggregatedstats' where
        type Rs StatscollectionUpdateaggregatedstats' =
             AggregatedStatsReply
        request = requestWithRoute defReq latencyTestURL
        requestWithRoute r u
          StatscollectionUpdateaggregatedstats{..}
          = go _sQuotaUser _sPrettyPrint _sUserIp _sKey
              _sOauthToken
              _sFields
              _sAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy StatscollectionUpdateaggregatedstatsAPI)
                      r
                      u
