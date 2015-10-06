{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsDelete@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Delete
    (
    -- * REST Resource
      CustomChannelsDeleteResource

    -- * Creating a Request
    , customChannelsDelete'
    , CustomChannelsDelete'

    -- * Request Lenses
    , ccdQuotaUser
    , ccdPrettyPrint
    , ccdCustomChannelId
    , ccdUserIP
    , ccdAdClientId
    , ccdKey
    , ccdOAuthToken
    , ccdFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsDelete@ which the
-- 'CustomChannelsDelete'' request conforms to.
type CustomChannelsDeleteResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Delete '[JSON] CustomChannel

-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ 'customChannelsDelete'' smart constructor.
data CustomChannelsDelete' = CustomChannelsDelete'
    { _ccdQuotaUser       :: !(Maybe Text)
    , _ccdPrettyPrint     :: !Bool
    , _ccdCustomChannelId :: !Text
    , _ccdUserIP          :: !(Maybe Text)
    , _ccdAdClientId      :: !Text
    , _ccdKey             :: !(Maybe AuthKey)
    , _ccdOAuthToken      :: !(Maybe OAuthToken)
    , _ccdFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdQuotaUser'
--
-- * 'ccdPrettyPrint'
--
-- * 'ccdCustomChannelId'
--
-- * 'ccdUserIP'
--
-- * 'ccdAdClientId'
--
-- * 'ccdKey'
--
-- * 'ccdOAuthToken'
--
-- * 'ccdFields'
customChannelsDelete'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsDelete'
customChannelsDelete' pCcdCustomChannelId_ pCcdAdClientId_ =
    CustomChannelsDelete'
    { _ccdQuotaUser = Nothing
    , _ccdPrettyPrint = True
    , _ccdCustomChannelId = pCcdCustomChannelId_
    , _ccdUserIP = Nothing
    , _ccdAdClientId = pCcdAdClientId_
    , _ccdKey = Nothing
    , _ccdOAuthToken = Nothing
    , _ccdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccdQuotaUser :: Lens' CustomChannelsDelete' (Maybe Text)
ccdQuotaUser
  = lens _ccdQuotaUser (\ s a -> s{_ccdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccdPrettyPrint :: Lens' CustomChannelsDelete' Bool
ccdPrettyPrint
  = lens _ccdPrettyPrint
      (\ s a -> s{_ccdPrettyPrint = a})

-- | Custom channel to delete.
ccdCustomChannelId :: Lens' CustomChannelsDelete' Text
ccdCustomChannelId
  = lens _ccdCustomChannelId
      (\ s a -> s{_ccdCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccdUserIP :: Lens' CustomChannelsDelete' (Maybe Text)
ccdUserIP
  = lens _ccdUserIP (\ s a -> s{_ccdUserIP = a})

-- | Ad client from which to delete the custom channel.
ccdAdClientId :: Lens' CustomChannelsDelete' Text
ccdAdClientId
  = lens _ccdAdClientId
      (\ s a -> s{_ccdAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccdKey :: Lens' CustomChannelsDelete' (Maybe AuthKey)
ccdKey = lens _ccdKey (\ s a -> s{_ccdKey = a})

-- | OAuth 2.0 token for the current user.
ccdOAuthToken :: Lens' CustomChannelsDelete' (Maybe OAuthToken)
ccdOAuthToken
  = lens _ccdOAuthToken
      (\ s a -> s{_ccdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccdFields :: Lens' CustomChannelsDelete' (Maybe Text)
ccdFields
  = lens _ccdFields (\ s a -> s{_ccdFields = a})

instance GoogleAuth CustomChannelsDelete' where
        _AuthKey = ccdKey . _Just
        _AuthToken = ccdOAuthToken . _Just

instance GoogleRequest CustomChannelsDelete' where
        type Rs CustomChannelsDelete' = CustomChannel
        request = requestWith adSenseHostRequest
        requestWith rq CustomChannelsDelete'{..}
          = go _ccdAdClientId _ccdCustomChannelId _ccdQuotaUser
              (Just _ccdPrettyPrint)
              _ccdUserIP
              _ccdFields
              _ccdKey
              _ccdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CustomChannelsDeleteResource)
                      rq
