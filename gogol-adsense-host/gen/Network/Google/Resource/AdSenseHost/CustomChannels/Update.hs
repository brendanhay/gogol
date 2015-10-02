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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a custom channel in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsUpdate@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Update
    (
    -- * REST Resource
      CustomChannelsUpdateResource

    -- * Creating a Request
    , customChannelsUpdate'
    , CustomChannelsUpdate'

    -- * Request Lenses
    , ccuQuotaUser
    , ccuPrettyPrint
    , ccuUserIP
    , ccuAdClientId
    , ccuKey
    , ccuCustomChannel
    , ccuOAuthToken
    , ccuFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsUpdate@ which the
-- 'CustomChannelsUpdate'' request conforms to.
type CustomChannelsUpdateResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CustomChannel :>
                           Put '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account.
--
-- /See:/ 'customChannelsUpdate'' smart constructor.
data CustomChannelsUpdate' = CustomChannelsUpdate'
    { _ccuQuotaUser     :: !(Maybe Text)
    , _ccuPrettyPrint   :: !Bool
    , _ccuUserIP        :: !(Maybe Text)
    , _ccuAdClientId    :: !Text
    , _ccuKey           :: !(Maybe Key)
    , _ccuCustomChannel :: !CustomChannel
    , _ccuOAuthToken    :: !(Maybe OAuthToken)
    , _ccuFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuQuotaUser'
--
-- * 'ccuPrettyPrint'
--
-- * 'ccuUserIP'
--
-- * 'ccuAdClientId'
--
-- * 'ccuKey'
--
-- * 'ccuCustomChannel'
--
-- * 'ccuOAuthToken'
--
-- * 'ccuFields'
customChannelsUpdate'
    :: Text -- ^ 'adClientId'
    -> CustomChannel -- ^ 'CustomChannel'
    -> CustomChannelsUpdate'
customChannelsUpdate' pCcuAdClientId_ pCcuCustomChannel_ =
    CustomChannelsUpdate'
    { _ccuQuotaUser = Nothing
    , _ccuPrettyPrint = True
    , _ccuUserIP = Nothing
    , _ccuAdClientId = pCcuAdClientId_
    , _ccuKey = Nothing
    , _ccuCustomChannel = pCcuCustomChannel_
    , _ccuOAuthToken = Nothing
    , _ccuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccuQuotaUser :: Lens' CustomChannelsUpdate' (Maybe Text)
ccuQuotaUser
  = lens _ccuQuotaUser (\ s a -> s{_ccuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccuPrettyPrint :: Lens' CustomChannelsUpdate' Bool
ccuPrettyPrint
  = lens _ccuPrettyPrint
      (\ s a -> s{_ccuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccuUserIP :: Lens' CustomChannelsUpdate' (Maybe Text)
ccuUserIP
  = lens _ccuUserIP (\ s a -> s{_ccuUserIP = a})

-- | Ad client in which the custom channel will be updated.
ccuAdClientId :: Lens' CustomChannelsUpdate' Text
ccuAdClientId
  = lens _ccuAdClientId
      (\ s a -> s{_ccuAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccuKey :: Lens' CustomChannelsUpdate' (Maybe Key)
ccuKey = lens _ccuKey (\ s a -> s{_ccuKey = a})

-- | Multipart request metadata.
ccuCustomChannel :: Lens' CustomChannelsUpdate' CustomChannel
ccuCustomChannel
  = lens _ccuCustomChannel
      (\ s a -> s{_ccuCustomChannel = a})

-- | OAuth 2.0 token for the current user.
ccuOAuthToken :: Lens' CustomChannelsUpdate' (Maybe OAuthToken)
ccuOAuthToken
  = lens _ccuOAuthToken
      (\ s a -> s{_ccuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccuFields :: Lens' CustomChannelsUpdate' (Maybe Text)
ccuFields
  = lens _ccuFields (\ s a -> s{_ccuFields = a})

instance GoogleAuth CustomChannelsUpdate' where
        authKey = ccuKey . _Just
        authToken = ccuOAuthToken . _Just

instance GoogleRequest CustomChannelsUpdate' where
        type Rs CustomChannelsUpdate' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomChannelsUpdate'{..}
          = go _ccuAdClientId _ccuQuotaUser
              (Just _ccuPrettyPrint)
              _ccuUserIP
              _ccuFields
              _ccuKey
              _ccuOAuthToken
              (Just AltJSON)
              _ccuCustomChannel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomChannelsUpdateResource)
                      r
                      u
