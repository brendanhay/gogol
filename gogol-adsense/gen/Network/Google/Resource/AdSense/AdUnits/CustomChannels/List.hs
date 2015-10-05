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
-- Module      : Network.Google.Resource.AdSense.AdUnits.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdUnitsCustomChannelsList@.
module Network.Google.Resource.AdSense.AdUnits.CustomChannels.List
    (
    -- * REST Resource
      AdUnitsCustomChannelsListResource

    -- * Creating a Request
    , adUnitsCustomChannelsList'
    , AdUnitsCustomChannelsList'

    -- * Request Lenses
    , aucclQuotaUser
    , aucclPrettyPrint
    , aucclUserIP
    , aucclAdUnitId
    , aucclAdClientId
    , aucclKey
    , aucclPageToken
    , aucclOAuthToken
    , aucclMaxResults
    , aucclFields
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @AdsenseAdUnitsCustomChannelsList@ which the
-- 'AdUnitsCustomChannelsList'' request conforms to.
type AdUnitsCustomChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             "customchannels" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'adUnitsCustomChannelsList'' smart constructor.
data AdUnitsCustomChannelsList' = AdUnitsCustomChannelsList'
    { _aucclQuotaUser :: !(Maybe Text)
    , _aucclPrettyPrint :: !Bool
    , _aucclUserIP :: !(Maybe Text)
    , _aucclAdUnitId :: !Text
    , _aucclAdClientId :: !Text
    , _aucclKey :: !(Maybe Key)
    , _aucclPageToken :: !(Maybe Text)
    , _aucclOAuthToken :: !(Maybe OAuthToken)
    , _aucclMaxResults :: !(Maybe Int32)
    , _aucclFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsCustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aucclQuotaUser'
--
-- * 'aucclPrettyPrint'
--
-- * 'aucclUserIP'
--
-- * 'aucclAdUnitId'
--
-- * 'aucclAdClientId'
--
-- * 'aucclKey'
--
-- * 'aucclPageToken'
--
-- * 'aucclOAuthToken'
--
-- * 'aucclMaxResults'
--
-- * 'aucclFields'
adUnitsCustomChannelsList'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdUnitsCustomChannelsList'
adUnitsCustomChannelsList' pAucclAdUnitId_ pAucclAdClientId_ = 
    AdUnitsCustomChannelsList'
    { _aucclQuotaUser = Nothing
    , _aucclPrettyPrint = True
    , _aucclUserIP = Nothing
    , _aucclAdUnitId = pAucclAdUnitId_
    , _aucclAdClientId = pAucclAdClientId_
    , _aucclKey = Nothing
    , _aucclPageToken = Nothing
    , _aucclOAuthToken = Nothing
    , _aucclMaxResults = Nothing
    , _aucclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aucclQuotaUser :: Lens' AdUnitsCustomChannelsList' (Maybe Text)
aucclQuotaUser
  = lens _aucclQuotaUser
      (\ s a -> s{_aucclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aucclPrettyPrint :: Lens' AdUnitsCustomChannelsList' Bool
aucclPrettyPrint
  = lens _aucclPrettyPrint
      (\ s a -> s{_aucclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aucclUserIP :: Lens' AdUnitsCustomChannelsList' (Maybe Text)
aucclUserIP
  = lens _aucclUserIP (\ s a -> s{_aucclUserIP = a})

-- | Ad unit for which to list custom channels.
aucclAdUnitId :: Lens' AdUnitsCustomChannelsList' Text
aucclAdUnitId
  = lens _aucclAdUnitId
      (\ s a -> s{_aucclAdUnitId = a})

-- | Ad client which contains the ad unit.
aucclAdClientId :: Lens' AdUnitsCustomChannelsList' Text
aucclAdClientId
  = lens _aucclAdClientId
      (\ s a -> s{_aucclAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aucclKey :: Lens' AdUnitsCustomChannelsList' (Maybe Key)
aucclKey = lens _aucclKey (\ s a -> s{_aucclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aucclPageToken :: Lens' AdUnitsCustomChannelsList' (Maybe Text)
aucclPageToken
  = lens _aucclPageToken
      (\ s a -> s{_aucclPageToken = a})

-- | OAuth 2.0 token for the current user.
aucclOAuthToken :: Lens' AdUnitsCustomChannelsList' (Maybe OAuthToken)
aucclOAuthToken
  = lens _aucclOAuthToken
      (\ s a -> s{_aucclOAuthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aucclMaxResults :: Lens' AdUnitsCustomChannelsList' (Maybe Int32)
aucclMaxResults
  = lens _aucclMaxResults
      (\ s a -> s{_aucclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aucclFields :: Lens' AdUnitsCustomChannelsList' (Maybe Text)
aucclFields
  = lens _aucclFields (\ s a -> s{_aucclFields = a})

instance GoogleAuth AdUnitsCustomChannelsList' where
        authKey = aucclKey . _Just
        authToken = aucclOAuthToken . _Just

instance GoogleRequest AdUnitsCustomChannelsList'
         where
        type Rs AdUnitsCustomChannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdUnitsCustomChannelsList'{..}
          = go _aucclAdClientId _aucclAdUnitId _aucclPageToken
              _aucclMaxResults
              _aucclQuotaUser
              (Just _aucclPrettyPrint)
              _aucclUserIP
              _aucclFields
              _aucclKey
              _aucclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdUnitsCustomChannelsListResource)
                      r
                      u
