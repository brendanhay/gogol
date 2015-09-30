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
-- Module      : Network.Google.Resource.AdSense.Customchannels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified custom channel from the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseCustomchannelsGet@.
module Network.Google.Resource.AdSense.Customchannels.Get
    (
    -- * REST Resource
      CustomchannelsGetResource

    -- * Creating a Request
    , customchannelsGet'
    , CustomchannelsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgCustomChannelId
    , cgUserIp
    , cgAdClientId
    , cgKey
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseCustomchannelsGet@ which the
-- 'CustomchannelsGet'' request conforms to.
type CustomchannelsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] CustomChannel

-- | Get the specified custom channel from the specified ad client.
--
-- /See:/ 'customchannelsGet'' smart constructor.
data CustomchannelsGet' = CustomchannelsGet'
    { _cgQuotaUser       :: !(Maybe Text)
    , _cgPrettyPrint     :: !Bool
    , _cgCustomChannelId :: !Text
    , _cgUserIp          :: !(Maybe Text)
    , _cgAdClientId      :: !Text
    , _cgKey             :: !(Maybe Text)
    , _cgOauthToken      :: !(Maybe Text)
    , _cgFields          :: !(Maybe Text)
    , _cgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgCustomChannelId'
--
-- * 'cgUserIp'
--
-- * 'cgAdClientId'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
customchannelsGet'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomchannelsGet'
customchannelsGet' pCgCustomChannelId_ pCgAdClientId_ =
    CustomchannelsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgCustomChannelId = pCgCustomChannelId_
    , _cgUserIp = Nothing
    , _cgAdClientId = pCgAdClientId_
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CustomchannelsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CustomchannelsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | Custom channel to retrieve.
cgCustomChannelId :: Lens' CustomchannelsGet' Text
cgCustomChannelId
  = lens _cgCustomChannelId
      (\ s a -> s{_cgCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CustomchannelsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | Ad client which contains the custom channel.
cgAdClientId :: Lens' CustomchannelsGet' Text
cgAdClientId
  = lens _cgAdClientId (\ s a -> s{_cgAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CustomchannelsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CustomchannelsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CustomchannelsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CustomchannelsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CustomchannelsGet' where
        type Rs CustomchannelsGet' = CustomChannel
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u CustomchannelsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint)
              _cgCustomChannelId
              _cgUserIp
              _cgAdClientId
              _cgKey
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsGetResource)
                      r
                      u
