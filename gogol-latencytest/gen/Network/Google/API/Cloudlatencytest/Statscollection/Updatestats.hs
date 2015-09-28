{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudlatencytest.Statscollection.Updatestats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @cloudlatencytest.statscollection.updatestats@.
module Network.Google.API.Cloudlatencytest.Statscollection.Updatestats
    (
    -- * REST Resource
      StatscollectionUpdatestatsAPI

    -- * Creating a Request
    , statscollectionUpdatestats'
    , StatscollectionUpdatestats'

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

-- | A resource alias for cloudlatencytest.statscollection.updatestats which the
-- 'StatscollectionUpdatestats'' request conforms to.
type StatscollectionUpdatestatsAPI =
     "updatestats" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] StatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdatestats'' smart constructor.
data StatscollectionUpdatestats' = StatscollectionUpdatestats'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sKey         :: !(Maybe Text)
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdatestats'' with the minimum fields required to make a request.
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
statscollectionUpdatestats'
    :: StatscollectionUpdatestats'
statscollectionUpdatestats' =
    StatscollectionUpdatestats'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' StatscollectionUpdatestats' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' StatscollectionUpdatestats' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' StatscollectionUpdatestats' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' StatscollectionUpdatestats' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' StatscollectionUpdatestats' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' StatscollectionUpdatestats' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' StatscollectionUpdatestats' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest StatscollectionUpdatestats'
         where
        type Rs StatscollectionUpdatestats' = StatsReply
        request = requestWithRoute defReq latencyTestURL
        requestWithRoute r u StatscollectionUpdatestats'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp _sKey
              _sOauthToken
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StatscollectionUpdatestatsAPI)
                      r
                      u
