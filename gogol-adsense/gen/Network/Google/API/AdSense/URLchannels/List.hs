{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.URLchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all URL channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.urlchannels.list@.
module Network.Google.API.AdSense.URLchannels.List
    (
    -- * REST Resource
      URLchannelsListAPI

    -- * Creating a Request
    , uRLchannelsList'
    , URLchannelsList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulUserIp
    , ulAdClientId
    , ulKey
    , ulPageToken
    , ulOauthToken
    , ulMaxResults
    , ulFields
    , ulAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.urlchannels.list which the
-- 'URLchannelsList'' request conforms to.
type URLchannelsListAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] UrlChannels

-- | List all URL channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ 'uRLchannelsList'' smart constructor.
data URLchannelsList' = URLchannelsList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulUserIp      :: !(Maybe Text)
    , _ulAdClientId  :: !Text
    , _ulKey         :: !(Maybe Text)
    , _ulPageToken   :: !(Maybe Text)
    , _ulOauthToken  :: !(Maybe Text)
    , _ulMaxResults  :: !(Maybe Int32)
    , _ulFields      :: !(Maybe Text)
    , _ulAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulUserIp'
--
-- * 'ulAdClientId'
--
-- * 'ulKey'
--
-- * 'ulPageToken'
--
-- * 'ulOauthToken'
--
-- * 'ulMaxResults'
--
-- * 'ulFields'
--
-- * 'ulAlt'
uRLchannelsList'
    :: Text -- ^ 'adClientId'
    -> URLchannelsList'
uRLchannelsList' pUlAdClientId_ =
    URLchannelsList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulUserIp = Nothing
    , _ulAdClientId = pUlAdClientId_
    , _ulKey = Nothing
    , _ulPageToken = Nothing
    , _ulOauthToken = Nothing
    , _ulMaxResults = Nothing
    , _ulFields = Nothing
    , _ulAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' URLchannelsList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' URLchannelsList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIp :: Lens' URLchannelsList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | Ad client for which to list URL channels.
ulAdClientId :: Lens' URLchannelsList' Text
ulAdClientId
  = lens _ulAdClientId (\ s a -> s{_ulAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' URLchannelsList' (Maybe Text)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | A continuation token, used to page through URL channels. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
ulPageToken :: Lens' URLchannelsList' (Maybe Text)
ulPageToken
  = lens _ulPageToken (\ s a -> s{_ulPageToken = a})

-- | OAuth 2.0 token for the current user.
ulOauthToken :: Lens' URLchannelsList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | The maximum number of URL channels to include in the response, used for
-- paging.
ulMaxResults :: Lens' URLchannelsList' (Maybe Int32)
ulMaxResults
  = lens _ulMaxResults (\ s a -> s{_ulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' URLchannelsList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' URLchannelsList' Alt
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

instance GoogleRequest URLchannelsList' where
        type Rs URLchannelsList' = UrlChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u URLchannelsList'{..}
          = go _ulQuotaUser (Just _ulPrettyPrint) _ulUserIp
              _ulAdClientId
              _ulKey
              _ulPageToken
              _ulOauthToken
              _ulMaxResults
              _ulFields
              (Just _ulAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy URLchannelsListAPI)
                      r
                      u
