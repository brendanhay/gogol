{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Customchannels.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.patch@.
module Network.Google.API.AdSenseHost.Customchannels.Patch
    (
    -- * REST Resource
      CustomchannelsPatchAPI

    -- * Creating a Request
    , customchannelsPatch'
    , CustomchannelsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpCustomChannelId
    , cpUserIp
    , cpAdClientId
    , cpKey
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.customchannels.patch which the
-- 'CustomchannelsPatch'' request conforms to.
type CustomchannelsPatchAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "customChannelId" Text :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ 'customchannelsPatch'' smart constructor.
data CustomchannelsPatch' = CustomchannelsPatch'
    { _cpQuotaUser       :: !(Maybe Text)
    , _cpPrettyPrint     :: !Bool
    , _cpCustomChannelId :: !Text
    , _cpUserIp          :: !(Maybe Text)
    , _cpAdClientId      :: !Text
    , _cpKey             :: !(Maybe Text)
    , _cpOauthToken      :: !(Maybe Text)
    , _cpFields          :: !(Maybe Text)
    , _cpAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpCustomChannelId'
--
-- * 'cpUserIp'
--
-- * 'cpAdClientId'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
customchannelsPatch'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomchannelsPatch'
customchannelsPatch' pCpCustomChannelId_ pCpAdClientId_ =
    CustomchannelsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpCustomChannelId = pCpCustomChannelId_
    , _cpUserIp = Nothing
    , _cpAdClientId = pCpAdClientId_
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CustomchannelsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CustomchannelsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | Custom channel to get.
cpCustomChannelId :: Lens' CustomchannelsPatch' Text
cpCustomChannelId
  = lens _cpCustomChannelId
      (\ s a -> s{_cpCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' CustomchannelsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | Ad client in which the custom channel will be updated.
cpAdClientId :: Lens' CustomchannelsPatch' Text
cpAdClientId
  = lens _cpAdClientId (\ s a -> s{_cpAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CustomchannelsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CustomchannelsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CustomchannelsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CustomchannelsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CustomchannelsPatch' where
        type Rs CustomchannelsPatch' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomchannelsPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint)
              (Just _cpCustomChannelId)
              _cpUserIp
              _cpAdClientId
              _cpKey
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsPatchAPI)
                      r
                      u
