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
-- Module      : Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @CloudlatencytestStatscollectionUpdatestats@.
module Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats
    (
    -- * REST Resource
      StatscollectionUpdatestatsResource

    -- * Creating a Request
    , statscollectionUpdatestats'
    , StatscollectionUpdatestats'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIP
    , sPayload
    , sKey
    , sOAuthToken
    , sFields
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudlatencytestStatscollectionUpdatestats@ which the
-- 'StatscollectionUpdatestats'' request conforms to.
type StatscollectionUpdatestatsResource =
     "updatestats" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Stats :> Post '[JSON] StatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdatestats'' smart constructor.
data StatscollectionUpdatestats' = StatscollectionUpdatestats'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIP      :: !(Maybe Text)
    , _sPayload     :: !Stats
    , _sKey         :: !(Maybe Key)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdatestats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIP'
--
-- * 'sPayload'
--
-- * 'sKey'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
statscollectionUpdatestats'
    :: Stats -- ^ 'payload'
    -> StatscollectionUpdatestats'
statscollectionUpdatestats' pSPayload_ =
    StatscollectionUpdatestats'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIP = Nothing
    , _sPayload = pSPayload_
    , _sKey = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
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
sUserIP :: Lens' StatscollectionUpdatestats' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | Multipart request metadata.
sPayload :: Lens' StatscollectionUpdatestats' Stats
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' StatscollectionUpdatestats' (Maybe Key)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' StatscollectionUpdatestats' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' StatscollectionUpdatestats' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth StatscollectionUpdatestats' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest StatscollectionUpdatestats'
         where
        type Rs StatscollectionUpdatestats' = StatsReply
        request = requestWithRoute defReq latencyTestURL
        requestWithRoute r u StatscollectionUpdatestats'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
              _sPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StatscollectionUpdatestatsResource)
                      r
                      u
