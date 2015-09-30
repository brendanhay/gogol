{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Adunits.GetAdCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdunitsGetAdCode@.
module Network.Google.Resource.AdSense.Adunits.GetAdCode
    (
    -- * REST Resource
      AdunitsGetAdCodeResource

    -- * Creating a Request
    , adunitsGetAdCode'
    , AdunitsGetAdCode'

    -- * Request Lenses
    , agacQuotaUser
    , agacPrettyPrint
    , agacUserIp
    , agacAdUnitId
    , agacAdClientId
    , agacKey
    , agacOauthToken
    , agacFields
    , agacAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsGetAdCode@ which the
-- 'AdunitsGetAdCode'' request conforms to.
type AdunitsGetAdCodeResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             "adcode" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'adunitsGetAdCode'' smart constructor.
data AdunitsGetAdCode' = AdunitsGetAdCode'
    { _agacQuotaUser   :: !(Maybe Text)
    , _agacPrettyPrint :: !Bool
    , _agacUserIp      :: !(Maybe Text)
    , _agacAdUnitId    :: !Text
    , _agacAdClientId  :: !Text
    , _agacKey         :: !(Maybe Text)
    , _agacOauthToken  :: !(Maybe Text)
    , _agacFields      :: !(Maybe Text)
    , _agacAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsGetAdCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agacQuotaUser'
--
-- * 'agacPrettyPrint'
--
-- * 'agacUserIp'
--
-- * 'agacAdUnitId'
--
-- * 'agacAdClientId'
--
-- * 'agacKey'
--
-- * 'agacOauthToken'
--
-- * 'agacFields'
--
-- * 'agacAlt'
adunitsGetAdCode'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdunitsGetAdCode'
adunitsGetAdCode' pAgacAdUnitId_ pAgacAdClientId_ =
    AdunitsGetAdCode'
    { _agacQuotaUser = Nothing
    , _agacPrettyPrint = True
    , _agacUserIp = Nothing
    , _agacAdUnitId = pAgacAdUnitId_
    , _agacAdClientId = pAgacAdClientId_
    , _agacKey = Nothing
    , _agacOauthToken = Nothing
    , _agacFields = Nothing
    , _agacAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agacQuotaUser :: Lens' AdunitsGetAdCode' (Maybe Text)
agacQuotaUser
  = lens _agacQuotaUser
      (\ s a -> s{_agacQuotaUser = a})

-- | Returns response with indentations and line breaks.
agacPrettyPrint :: Lens' AdunitsGetAdCode' Bool
agacPrettyPrint
  = lens _agacPrettyPrint
      (\ s a -> s{_agacPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agacUserIp :: Lens' AdunitsGetAdCode' (Maybe Text)
agacUserIp
  = lens _agacUserIp (\ s a -> s{_agacUserIp = a})

-- | Ad unit to get the code for.
agacAdUnitId :: Lens' AdunitsGetAdCode' Text
agacAdUnitId
  = lens _agacAdUnitId (\ s a -> s{_agacAdUnitId = a})

-- | Ad client with contains the ad unit.
agacAdClientId :: Lens' AdunitsGetAdCode' Text
agacAdClientId
  = lens _agacAdClientId
      (\ s a -> s{_agacAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agacKey :: Lens' AdunitsGetAdCode' (Maybe Text)
agacKey = lens _agacKey (\ s a -> s{_agacKey = a})

-- | OAuth 2.0 token for the current user.
agacOauthToken :: Lens' AdunitsGetAdCode' (Maybe Text)
agacOauthToken
  = lens _agacOauthToken
      (\ s a -> s{_agacOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agacFields :: Lens' AdunitsGetAdCode' (Maybe Text)
agacFields
  = lens _agacFields (\ s a -> s{_agacFields = a})

-- | Data format for the response.
agacAlt :: Lens' AdunitsGetAdCode' Alt
agacAlt = lens _agacAlt (\ s a -> s{_agacAlt = a})

instance GoogleRequest AdunitsGetAdCode' where
        type Rs AdunitsGetAdCode' = AdCode
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsGetAdCode'{..}
          = go _agacQuotaUser (Just _agacPrettyPrint)
              _agacUserIp
              _agacAdUnitId
              _agacAdClientId
              _agacKey
              _agacOauthToken
              _agacFields
              (Just _agacAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdunitsGetAdCodeResource)
                      r
                      u
