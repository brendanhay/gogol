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
-- Module      : Network.Google.Resource.AdSense.Adunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdunitsGet@.
module Network.Google.Resource.AdSense.Adunits.Get
    (
    -- * REST Resource
      AdunitsGetResource

    -- * Creating a Request
    , adunitsGet'
    , AdunitsGet'

    -- * Request Lenses
    , aduQuotaUser
    , aduPrettyPrint
    , aduUserIp
    , aduAdUnitId
    , aduAdClientId
    , aduKey
    , aduOauthToken
    , aduFields
    , aduAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsGet@ which the
-- 'AdunitsGet'' request conforms to.
type AdunitsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AdUnit

-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ 'adunitsGet'' smart constructor.
data AdunitsGet' = AdunitsGet'
    { _aduQuotaUser   :: !(Maybe Text)
    , _aduPrettyPrint :: !Bool
    , _aduUserIp      :: !(Maybe Text)
    , _aduAdUnitId    :: !Text
    , _aduAdClientId  :: !Text
    , _aduKey         :: !(Maybe Text)
    , _aduOauthToken  :: !(Maybe Text)
    , _aduFields      :: !(Maybe Text)
    , _aduAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aduQuotaUser'
--
-- * 'aduPrettyPrint'
--
-- * 'aduUserIp'
--
-- * 'aduAdUnitId'
--
-- * 'aduAdClientId'
--
-- * 'aduKey'
--
-- * 'aduOauthToken'
--
-- * 'aduFields'
--
-- * 'aduAlt'
adunitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdunitsGet'
adunitsGet' pAduAdUnitId_ pAduAdClientId_ =
    AdunitsGet'
    { _aduQuotaUser = Nothing
    , _aduPrettyPrint = True
    , _aduUserIp = Nothing
    , _aduAdUnitId = pAduAdUnitId_
    , _aduAdClientId = pAduAdClientId_
    , _aduKey = Nothing
    , _aduOauthToken = Nothing
    , _aduFields = Nothing
    , _aduAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aduQuotaUser :: Lens' AdunitsGet' (Maybe Text)
aduQuotaUser
  = lens _aduQuotaUser (\ s a -> s{_aduQuotaUser = a})

-- | Returns response with indentations and line breaks.
aduPrettyPrint :: Lens' AdunitsGet' Bool
aduPrettyPrint
  = lens _aduPrettyPrint
      (\ s a -> s{_aduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aduUserIp :: Lens' AdunitsGet' (Maybe Text)
aduUserIp
  = lens _aduUserIp (\ s a -> s{_aduUserIp = a})

-- | Ad unit to retrieve.
aduAdUnitId :: Lens' AdunitsGet' Text
aduAdUnitId
  = lens _aduAdUnitId (\ s a -> s{_aduAdUnitId = a})

-- | Ad client for which to get the ad unit.
aduAdClientId :: Lens' AdunitsGet' Text
aduAdClientId
  = lens _aduAdClientId
      (\ s a -> s{_aduAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aduKey :: Lens' AdunitsGet' (Maybe Text)
aduKey = lens _aduKey (\ s a -> s{_aduKey = a})

-- | OAuth 2.0 token for the current user.
aduOauthToken :: Lens' AdunitsGet' (Maybe Text)
aduOauthToken
  = lens _aduOauthToken
      (\ s a -> s{_aduOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aduFields :: Lens' AdunitsGet' (Maybe Text)
aduFields
  = lens _aduFields (\ s a -> s{_aduFields = a})

-- | Data format for the response.
aduAlt :: Lens' AdunitsGet' Alt
aduAlt = lens _aduAlt (\ s a -> s{_aduAlt = a})

instance GoogleRequest AdunitsGet' where
        type Rs AdunitsGet' = AdUnit
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsGet'{..}
          = go _aduQuotaUser (Just _aduPrettyPrint) _aduUserIp
              _aduAdUnitId
              _aduAdClientId
              _aduKey
              _aduOauthToken
              _aduFields
              (Just _aduAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdunitsGetResource)
                      r
                      u
