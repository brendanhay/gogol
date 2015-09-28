{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all host custom channels in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.list@.
module Network.Google.API.AdSenseHost.Customchannels.List
    (
    -- * REST Resource
      CustomchannelsListAPI

    -- * Creating a Request
    , customchannelsList'
    , CustomchannelsList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clAdClientId
    , clKey
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.customchannels.list which the
-- 'CustomchannelsList'' request conforms to.
type CustomchannelsListAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] CustomChannels

-- | List all host custom channels in this AdSense account.
--
-- /See:/ 'customchannelsList'' smart constructor.
data CustomchannelsList' = CustomchannelsList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clAdClientId  :: !Text
    , _clKey         :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clMaxResults  :: !(Maybe Word32)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clAdClientId'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
customchannelsList'
    :: Text -- ^ 'adClientId'
    -> CustomchannelsList'
customchannelsList' pClAdClientId_ =
    CustomchannelsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clAdClientId = pClAdClientId_
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CustomchannelsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CustomchannelsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CustomchannelsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | Ad client for which to list custom channels.
clAdClientId :: Lens' CustomchannelsList' Text
clAdClientId
  = lens _clAdClientId (\ s a -> s{_clAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CustomchannelsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
clPageToken :: Lens' CustomchannelsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CustomchannelsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
clMaxResults :: Lens' CustomchannelsList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CustomchannelsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CustomchannelsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CustomchannelsList' where
        type Rs CustomchannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomchannelsList'{..}
          = go _clQuotaUser (Just _clPrettyPrint) _clUserIp
              _clAdClientId
              _clKey
              _clPageToken
              _clOauthToken
              _clMaxResults
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomchannelsListAPI)
                      r
                      u
