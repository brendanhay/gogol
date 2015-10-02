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
-- Module      : Network.Google.Resource.AdSenseHost.URLChannels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostURLChannelsDelete@.
module Network.Google.Resource.AdSenseHost.URLChannels.Delete
    (
    -- * REST Resource
      URLChannelsDeleteResource

    -- * Creating a Request
    , uRLChannelsDelete'
    , URLChannelsDelete'

    -- * Request Lenses
    , ucdQuotaUser
    , ucdPrettyPrint
    , ucdURLChannelId
    , ucdUserIP
    , ucdAdClientId
    , ucdKey
    , ucdOAuthToken
    , ucdFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostURLChannelsDelete@ which the
-- 'URLChannelsDelete'' request conforms to.
type URLChannelsDeleteResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           Capture "urlChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] URLChannel

-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ 'uRLChannelsDelete'' smart constructor.
data URLChannelsDelete' = URLChannelsDelete'
    { _ucdQuotaUser    :: !(Maybe Text)
    , _ucdPrettyPrint  :: !Bool
    , _ucdURLChannelId :: !Text
    , _ucdUserIP       :: !(Maybe Text)
    , _ucdAdClientId   :: !Text
    , _ucdKey          :: !(Maybe Key)
    , _ucdOAuthToken   :: !(Maybe OAuthToken)
    , _ucdFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucdQuotaUser'
--
-- * 'ucdPrettyPrint'
--
-- * 'ucdURLChannelId'
--
-- * 'ucdUserIP'
--
-- * 'ucdAdClientId'
--
-- * 'ucdKey'
--
-- * 'ucdOAuthToken'
--
-- * 'ucdFields'
uRLChannelsDelete'
    :: Text -- ^ 'urlChannelId'
    -> Text -- ^ 'adClientId'
    -> URLChannelsDelete'
uRLChannelsDelete' pUcdURLChannelId_ pUcdAdClientId_ =
    URLChannelsDelete'
    { _ucdQuotaUser = Nothing
    , _ucdPrettyPrint = True
    , _ucdURLChannelId = pUcdURLChannelId_
    , _ucdUserIP = Nothing
    , _ucdAdClientId = pUcdAdClientId_
    , _ucdKey = Nothing
    , _ucdOAuthToken = Nothing
    , _ucdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ucdQuotaUser :: Lens' URLChannelsDelete' (Maybe Text)
ucdQuotaUser
  = lens _ucdQuotaUser (\ s a -> s{_ucdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ucdPrettyPrint :: Lens' URLChannelsDelete' Bool
ucdPrettyPrint
  = lens _ucdPrettyPrint
      (\ s a -> s{_ucdPrettyPrint = a})

-- | URL channel to delete.
ucdURLChannelId :: Lens' URLChannelsDelete' Text
ucdURLChannelId
  = lens _ucdURLChannelId
      (\ s a -> s{_ucdURLChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ucdUserIP :: Lens' URLChannelsDelete' (Maybe Text)
ucdUserIP
  = lens _ucdUserIP (\ s a -> s{_ucdUserIP = a})

-- | Ad client from which to delete the URL channel.
ucdAdClientId :: Lens' URLChannelsDelete' Text
ucdAdClientId
  = lens _ucdAdClientId
      (\ s a -> s{_ucdAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ucdKey :: Lens' URLChannelsDelete' (Maybe Key)
ucdKey = lens _ucdKey (\ s a -> s{_ucdKey = a})

-- | OAuth 2.0 token for the current user.
ucdOAuthToken :: Lens' URLChannelsDelete' (Maybe OAuthToken)
ucdOAuthToken
  = lens _ucdOAuthToken
      (\ s a -> s{_ucdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ucdFields :: Lens' URLChannelsDelete' (Maybe Text)
ucdFields
  = lens _ucdFields (\ s a -> s{_ucdFields = a})

instance GoogleAuth URLChannelsDelete' where
        authKey = ucdKey . _Just
        authToken = ucdOAuthToken . _Just

instance GoogleRequest URLChannelsDelete' where
        type Rs URLChannelsDelete' = URLChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u URLChannelsDelete'{..}
          = go _ucdQuotaUser (Just _ucdPrettyPrint)
              _ucdURLChannelId
              _ucdUserIP
              _ucdAdClientId
              _ucdKey
              _ucdOAuthToken
              _ucdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLChannelsDeleteResource)
                      r
                      u
