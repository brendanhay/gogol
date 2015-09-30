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
-- Module      : Network.Google.Resource.AdSenseHost.Adclients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all host ad clients in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAdclientsList@.
module Network.Google.Resource.AdSenseHost.Adclients.List
    (
    -- * REST Resource
      AdclientsListResource

    -- * Creating a Request
    , adclientsList'
    , AdclientsList'

    -- * Request Lenses
    , adcQuotaUser
    , adcPrettyPrint
    , adcUserIp
    , adcKey
    , adcPageToken
    , adcOauthToken
    , adcMaxResults
    , adcFields
    , adcAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAdclientsList@ which the
-- 'AdclientsList'' request conforms to.
type AdclientsListResource =
     "adclients" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] AdClients

-- | List all host ad clients in this AdSense account.
--
-- /See:/ 'adclientsList'' smart constructor.
data AdclientsList' = AdclientsList'
    { _adcQuotaUser   :: !(Maybe Text)
    , _adcPrettyPrint :: !Bool
    , _adcUserIp      :: !(Maybe Text)
    , _adcKey         :: !(Maybe Text)
    , _adcPageToken   :: !(Maybe Text)
    , _adcOauthToken  :: !(Maybe Text)
    , _adcMaxResults  :: !(Maybe Word32)
    , _adcFields      :: !(Maybe Text)
    , _adcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adcQuotaUser'
--
-- * 'adcPrettyPrint'
--
-- * 'adcUserIp'
--
-- * 'adcKey'
--
-- * 'adcPageToken'
--
-- * 'adcOauthToken'
--
-- * 'adcMaxResults'
--
-- * 'adcFields'
--
-- * 'adcAlt'
adclientsList'
    :: AdclientsList'
adclientsList' =
    AdclientsList'
    { _adcQuotaUser = Nothing
    , _adcPrettyPrint = True
    , _adcUserIp = Nothing
    , _adcKey = Nothing
    , _adcPageToken = Nothing
    , _adcOauthToken = Nothing
    , _adcMaxResults = Nothing
    , _adcFields = Nothing
    , _adcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adcQuotaUser :: Lens' AdclientsList' (Maybe Text)
adcQuotaUser
  = lens _adcQuotaUser (\ s a -> s{_adcQuotaUser = a})

-- | Returns response with indentations and line breaks.
adcPrettyPrint :: Lens' AdclientsList' Bool
adcPrettyPrint
  = lens _adcPrettyPrint
      (\ s a -> s{_adcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adcUserIp :: Lens' AdclientsList' (Maybe Text)
adcUserIp
  = lens _adcUserIp (\ s a -> s{_adcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adcKey :: Lens' AdclientsList' (Maybe Text)
adcKey = lens _adcKey (\ s a -> s{_adcKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
adcPageToken :: Lens' AdclientsList' (Maybe Text)
adcPageToken
  = lens _adcPageToken (\ s a -> s{_adcPageToken = a})

-- | OAuth 2.0 token for the current user.
adcOauthToken :: Lens' AdclientsList' (Maybe Text)
adcOauthToken
  = lens _adcOauthToken
      (\ s a -> s{_adcOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
adcMaxResults :: Lens' AdclientsList' (Maybe Word32)
adcMaxResults
  = lens _adcMaxResults
      (\ s a -> s{_adcMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
adcFields :: Lens' AdclientsList' (Maybe Text)
adcFields
  = lens _adcFields (\ s a -> s{_adcFields = a})

-- | Data format for the response.
adcAlt :: Lens' AdclientsList' Alt
adcAlt = lens _adcAlt (\ s a -> s{_adcAlt = a})

instance GoogleRequest AdclientsList' where
        type Rs AdclientsList' = AdClients
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AdclientsList'{..}
          = go _adcQuotaUser (Just _adcPrettyPrint) _adcUserIp
              _adcKey
              _adcPageToken
              _adcOauthToken
              _adcMaxResults
              _adcFields
              (Just _adcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdclientsListResource)
                      r
                      u
