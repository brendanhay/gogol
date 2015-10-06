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
-- Module      : Network.Google.Resource.AdSense.AdUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdUnitsGet@.
module Network.Google.Resource.AdSense.AdUnits.Get
    (
    -- * REST Resource
      AdUnitsGetResource

    -- * Creating a Request
    , adUnitsGet'
    , AdUnitsGet'

    -- * Request Lenses
    , augQuotaUser
    , augPrettyPrint
    , augUserIP
    , augAdUnitId
    , augAdClientId
    , augKey
    , augOAuthToken
    , augFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdUnitsGet@ which the
-- 'AdUnitsGet'' request conforms to.
type AdUnitsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ 'adUnitsGet'' smart constructor.
data AdUnitsGet' = AdUnitsGet'
    { _augQuotaUser   :: !(Maybe Text)
    , _augPrettyPrint :: !Bool
    , _augUserIP      :: !(Maybe Text)
    , _augAdUnitId    :: !Text
    , _augAdClientId  :: !Text
    , _augKey         :: !(Maybe AuthKey)
    , _augOAuthToken  :: !(Maybe OAuthToken)
    , _augFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'augQuotaUser'
--
-- * 'augPrettyPrint'
--
-- * 'augUserIP'
--
-- * 'augAdUnitId'
--
-- * 'augAdClientId'
--
-- * 'augKey'
--
-- * 'augOAuthToken'
--
-- * 'augFields'
adUnitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdUnitsGet'
adUnitsGet' pAugAdUnitId_ pAugAdClientId_ =
    AdUnitsGet'
    { _augQuotaUser = Nothing
    , _augPrettyPrint = True
    , _augUserIP = Nothing
    , _augAdUnitId = pAugAdUnitId_
    , _augAdClientId = pAugAdClientId_
    , _augKey = Nothing
    , _augOAuthToken = Nothing
    , _augFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
augQuotaUser :: Lens' AdUnitsGet' (Maybe Text)
augQuotaUser
  = lens _augQuotaUser (\ s a -> s{_augQuotaUser = a})

-- | Returns response with indentations and line breaks.
augPrettyPrint :: Lens' AdUnitsGet' Bool
augPrettyPrint
  = lens _augPrettyPrint
      (\ s a -> s{_augPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
augUserIP :: Lens' AdUnitsGet' (Maybe Text)
augUserIP
  = lens _augUserIP (\ s a -> s{_augUserIP = a})

-- | Ad unit to retrieve.
augAdUnitId :: Lens' AdUnitsGet' Text
augAdUnitId
  = lens _augAdUnitId (\ s a -> s{_augAdUnitId = a})

-- | Ad client for which to get the ad unit.
augAdClientId :: Lens' AdUnitsGet' Text
augAdClientId
  = lens _augAdClientId
      (\ s a -> s{_augAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
augKey :: Lens' AdUnitsGet' (Maybe AuthKey)
augKey = lens _augKey (\ s a -> s{_augKey = a})

-- | OAuth 2.0 token for the current user.
augOAuthToken :: Lens' AdUnitsGet' (Maybe OAuthToken)
augOAuthToken
  = lens _augOAuthToken
      (\ s a -> s{_augOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
augFields :: Lens' AdUnitsGet' (Maybe Text)
augFields
  = lens _augFields (\ s a -> s{_augFields = a})

instance GoogleAuth AdUnitsGet' where
        authKey = augKey . _Just
        authToken = augOAuthToken . _Just

instance GoogleRequest AdUnitsGet' where
        type Rs AdUnitsGet' = AdUnit
        request = requestWith adSenseRequest
        requestWith rq AdUnitsGet'{..}
          = go _augAdClientId _augAdUnitId _augQuotaUser
              (Just _augPrettyPrint)
              _augUserIP
              _augFields
              _augKey
              _augOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AdUnitsGetResource) rq
