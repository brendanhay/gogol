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
-- Module      : Network.Google.Resource.AdSense.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseCustomChannelsList@.
module Network.Google.Resource.AdSense.CustomChannels.List
    (
    -- * REST Resource
      CustomChannelsListResource

    -- * Creating a Request
    , customChannelsList'
    , CustomChannelsList'

    -- * Request Lenses
    , cclQuotaUser
    , cclPrettyPrint
    , cclUserIP
    , cclAdClientId
    , cclKey
    , cclPageToken
    , cclOAuthToken
    , cclMaxResults
    , cclFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseCustomChannelsList@ method which the
-- 'CustomChannelsList'' request conforms to.
type CustomChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ 'customChannelsList'' smart constructor.
data CustomChannelsList' = CustomChannelsList'
    { _cclQuotaUser   :: !(Maybe Text)
    , _cclPrettyPrint :: !Bool
    , _cclUserIP      :: !(Maybe Text)
    , _cclAdClientId  :: !Text
    , _cclKey         :: !(Maybe AuthKey)
    , _cclPageToken   :: !(Maybe Text)
    , _cclOAuthToken  :: !(Maybe OAuthToken)
    , _cclMaxResults  :: !(Maybe Int32)
    , _cclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclQuotaUser'
--
-- * 'cclPrettyPrint'
--
-- * 'cclUserIP'
--
-- * 'cclAdClientId'
--
-- * 'cclKey'
--
-- * 'cclPageToken'
--
-- * 'cclOAuthToken'
--
-- * 'cclMaxResults'
--
-- * 'cclFields'
customChannelsList'
    :: Text -- ^ 'adClientId'
    -> CustomChannelsList'
customChannelsList' pCclAdClientId_ =
    CustomChannelsList'
    { _cclQuotaUser = Nothing
    , _cclPrettyPrint = True
    , _cclUserIP = Nothing
    , _cclAdClientId = pCclAdClientId_
    , _cclKey = Nothing
    , _cclPageToken = Nothing
    , _cclOAuthToken = Nothing
    , _cclMaxResults = Nothing
    , _cclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cclQuotaUser :: Lens' CustomChannelsList' (Maybe Text)
cclQuotaUser
  = lens _cclQuotaUser (\ s a -> s{_cclQuotaUser = a})

-- | Returns response with indentations and line breaks.
cclPrettyPrint :: Lens' CustomChannelsList' Bool
cclPrettyPrint
  = lens _cclPrettyPrint
      (\ s a -> s{_cclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cclUserIP :: Lens' CustomChannelsList' (Maybe Text)
cclUserIP
  = lens _cclUserIP (\ s a -> s{_cclUserIP = a})

-- | Ad client for which to list custom channels.
cclAdClientId :: Lens' CustomChannelsList' Text
cclAdClientId
  = lens _cclAdClientId
      (\ s a -> s{_cclAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cclKey :: Lens' CustomChannelsList' (Maybe AuthKey)
cclKey = lens _cclKey (\ s a -> s{_cclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
cclPageToken :: Lens' CustomChannelsList' (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | OAuth 2.0 token for the current user.
cclOAuthToken :: Lens' CustomChannelsList' (Maybe OAuthToken)
cclOAuthToken
  = lens _cclOAuthToken
      (\ s a -> s{_cclOAuthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
cclMaxResults :: Lens' CustomChannelsList' (Maybe Int32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cclFields :: Lens' CustomChannelsList' (Maybe Text)
cclFields
  = lens _cclFields (\ s a -> s{_cclFields = a})

instance GoogleAuth CustomChannelsList' where
        _AuthKey = cclKey . _Just
        _AuthToken = cclOAuthToken . _Just

instance GoogleRequest CustomChannelsList' where
        type Rs CustomChannelsList' = CustomChannels
        request = requestWith adSenseRequest
        requestWith rq CustomChannelsList'{..}
          = go _cclAdClientId _cclPageToken _cclMaxResults
              _cclQuotaUser
              (Just _cclPrettyPrint)
              _cclUserIP
              _cclFields
              _cclKey
              _cclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CustomChannelsListResource)
                      rq
