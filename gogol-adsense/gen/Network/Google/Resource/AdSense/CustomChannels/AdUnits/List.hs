{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.CustomChannels.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseCustomChannelsAdUnitsList@.
module Network.Google.Resource.AdSense.CustomChannels.AdUnits.List
    (
    -- * REST Resource
      CustomChannelsAdUnitsListResource

    -- * Creating a Request
    , customChannelsAdUnitsList'
    , CustomChannelsAdUnitsList'

    -- * Request Lenses
    , ccaulQuotaUser
    , ccaulPrettyPrint
    , ccaulIncludeInactive
    , ccaulCustomChannelId
    , ccaulUserIP
    , ccaulAdClientId
    , ccaulKey
    , ccaulPageToken
    , ccaulOAuthToken
    , ccaulMaxResults
    , ccaulFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseCustomChannelsAdUnitsList@ which the
-- 'CustomChannelsAdUnitsList'' request conforms to.
type CustomChannelsAdUnitsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             "adunits" :>
               QueryParam "includeInactive" Bool :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified custom channel.
--
-- /See:/ 'customChannelsAdUnitsList'' smart constructor.
data CustomChannelsAdUnitsList' = CustomChannelsAdUnitsList'
    { _ccaulQuotaUser       :: !(Maybe Text)
    , _ccaulPrettyPrint     :: !Bool
    , _ccaulIncludeInactive :: !(Maybe Bool)
    , _ccaulCustomChannelId :: !Text
    , _ccaulUserIP          :: !(Maybe Text)
    , _ccaulAdClientId      :: !Text
    , _ccaulKey             :: !(Maybe Key)
    , _ccaulPageToken       :: !(Maybe Text)
    , _ccaulOAuthToken      :: !(Maybe OAuthToken)
    , _ccaulMaxResults      :: !(Maybe Int32)
    , _ccaulFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsAdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaulQuotaUser'
--
-- * 'ccaulPrettyPrint'
--
-- * 'ccaulIncludeInactive'
--
-- * 'ccaulCustomChannelId'
--
-- * 'ccaulUserIP'
--
-- * 'ccaulAdClientId'
--
-- * 'ccaulKey'
--
-- * 'ccaulPageToken'
--
-- * 'ccaulOAuthToken'
--
-- * 'ccaulMaxResults'
--
-- * 'ccaulFields'
customChannelsAdUnitsList'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsAdUnitsList'
customChannelsAdUnitsList' pCcaulCustomChannelId_ pCcaulAdClientId_ =
    CustomChannelsAdUnitsList'
    { _ccaulQuotaUser = Nothing
    , _ccaulPrettyPrint = True
    , _ccaulIncludeInactive = Nothing
    , _ccaulCustomChannelId = pCcaulCustomChannelId_
    , _ccaulUserIP = Nothing
    , _ccaulAdClientId = pCcaulAdClientId_
    , _ccaulKey = Nothing
    , _ccaulPageToken = Nothing
    , _ccaulOAuthToken = Nothing
    , _ccaulMaxResults = Nothing
    , _ccaulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccaulQuotaUser :: Lens' CustomChannelsAdUnitsList' (Maybe Text)
ccaulQuotaUser
  = lens _ccaulQuotaUser
      (\ s a -> s{_ccaulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccaulPrettyPrint :: Lens' CustomChannelsAdUnitsList' Bool
ccaulPrettyPrint
  = lens _ccaulPrettyPrint
      (\ s a -> s{_ccaulPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
ccaulIncludeInactive :: Lens' CustomChannelsAdUnitsList' (Maybe Bool)
ccaulIncludeInactive
  = lens _ccaulIncludeInactive
      (\ s a -> s{_ccaulIncludeInactive = a})

-- | Custom channel for which to list ad units.
ccaulCustomChannelId :: Lens' CustomChannelsAdUnitsList' Text
ccaulCustomChannelId
  = lens _ccaulCustomChannelId
      (\ s a -> s{_ccaulCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccaulUserIP :: Lens' CustomChannelsAdUnitsList' (Maybe Text)
ccaulUserIP
  = lens _ccaulUserIP (\ s a -> s{_ccaulUserIP = a})

-- | Ad client which contains the custom channel.
ccaulAdClientId :: Lens' CustomChannelsAdUnitsList' Text
ccaulAdClientId
  = lens _ccaulAdClientId
      (\ s a -> s{_ccaulAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccaulKey :: Lens' CustomChannelsAdUnitsList' (Maybe Key)
ccaulKey = lens _ccaulKey (\ s a -> s{_ccaulKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
ccaulPageToken :: Lens' CustomChannelsAdUnitsList' (Maybe Text)
ccaulPageToken
  = lens _ccaulPageToken
      (\ s a -> s{_ccaulPageToken = a})

-- | OAuth 2.0 token for the current user.
ccaulOAuthToken :: Lens' CustomChannelsAdUnitsList' (Maybe OAuthToken)
ccaulOAuthToken
  = lens _ccaulOAuthToken
      (\ s a -> s{_ccaulOAuthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
ccaulMaxResults :: Lens' CustomChannelsAdUnitsList' (Maybe Int32)
ccaulMaxResults
  = lens _ccaulMaxResults
      (\ s a -> s{_ccaulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ccaulFields :: Lens' CustomChannelsAdUnitsList' (Maybe Text)
ccaulFields
  = lens _ccaulFields (\ s a -> s{_ccaulFields = a})

instance GoogleAuth CustomChannelsAdUnitsList' where
        authKey = ccaulKey . _Just
        authToken = ccaulOAuthToken . _Just

instance GoogleRequest CustomChannelsAdUnitsList'
         where
        type Rs CustomChannelsAdUnitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u CustomChannelsAdUnitsList'{..}
          = go _ccaulAdClientId _ccaulCustomChannelId
              _ccaulIncludeInactive
              _ccaulPageToken
              _ccaulMaxResults
              _ccaulQuotaUser
              (Just _ccaulPrettyPrint)
              _ccaulUserIP
              _ccaulFields
              _ccaulKey
              _ccaulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomChannelsAdUnitsListResource)
                      r
                      u
