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
-- Module      : Network.Google.Resource.AdSense.AdUnits.GetAdCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdUnitsGetAdCode@.
module Network.Google.Resource.AdSense.AdUnits.GetAdCode
    (
    -- * REST Resource
      AdUnitsGetAdCodeResource

    -- * Creating a Request
    , adUnitsGetAdCode'
    , AdUnitsGetAdCode'

    -- * Request Lenses
    , augacQuotaUser
    , augacPrettyPrint
    , augacUserIP
    , augacAdUnitId
    , augacAdClientId
    , augacKey
    , augacOAuthToken
    , augacFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdUnitsGetAdCode@ which the
-- 'AdUnitsGetAdCode'' request conforms to.
type AdUnitsGetAdCodeResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :>
             "adcode" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'adUnitsGetAdCode'' smart constructor.
data AdUnitsGetAdCode' = AdUnitsGetAdCode'
    { _augacQuotaUser   :: !(Maybe Text)
    , _augacPrettyPrint :: !Bool
    , _augacUserIP      :: !(Maybe Text)
    , _augacAdUnitId    :: !Text
    , _augacAdClientId  :: !Text
    , _augacKey         :: !(Maybe AuthKey)
    , _augacOAuthToken  :: !(Maybe OAuthToken)
    , _augacFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsGetAdCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'augacQuotaUser'
--
-- * 'augacPrettyPrint'
--
-- * 'augacUserIP'
--
-- * 'augacAdUnitId'
--
-- * 'augacAdClientId'
--
-- * 'augacKey'
--
-- * 'augacOAuthToken'
--
-- * 'augacFields'
adUnitsGetAdCode'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdUnitsGetAdCode'
adUnitsGetAdCode' pAugacAdUnitId_ pAugacAdClientId_ =
    AdUnitsGetAdCode'
    { _augacQuotaUser = Nothing
    , _augacPrettyPrint = True
    , _augacUserIP = Nothing
    , _augacAdUnitId = pAugacAdUnitId_
    , _augacAdClientId = pAugacAdClientId_
    , _augacKey = Nothing
    , _augacOAuthToken = Nothing
    , _augacFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
augacQuotaUser :: Lens' AdUnitsGetAdCode' (Maybe Text)
augacQuotaUser
  = lens _augacQuotaUser
      (\ s a -> s{_augacQuotaUser = a})

-- | Returns response with indentations and line breaks.
augacPrettyPrint :: Lens' AdUnitsGetAdCode' Bool
augacPrettyPrint
  = lens _augacPrettyPrint
      (\ s a -> s{_augacPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
augacUserIP :: Lens' AdUnitsGetAdCode' (Maybe Text)
augacUserIP
  = lens _augacUserIP (\ s a -> s{_augacUserIP = a})

-- | Ad unit to get the code for.
augacAdUnitId :: Lens' AdUnitsGetAdCode' Text
augacAdUnitId
  = lens _augacAdUnitId
      (\ s a -> s{_augacAdUnitId = a})

-- | Ad client with contains the ad unit.
augacAdClientId :: Lens' AdUnitsGetAdCode' Text
augacAdClientId
  = lens _augacAdClientId
      (\ s a -> s{_augacAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
augacKey :: Lens' AdUnitsGetAdCode' (Maybe AuthKey)
augacKey = lens _augacKey (\ s a -> s{_augacKey = a})

-- | OAuth 2.0 token for the current user.
augacOAuthToken :: Lens' AdUnitsGetAdCode' (Maybe OAuthToken)
augacOAuthToken
  = lens _augacOAuthToken
      (\ s a -> s{_augacOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
augacFields :: Lens' AdUnitsGetAdCode' (Maybe Text)
augacFields
  = lens _augacFields (\ s a -> s{_augacFields = a})

instance GoogleAuth AdUnitsGetAdCode' where
        _AuthKey = augacKey . _Just
        _AuthToken = augacOAuthToken . _Just

instance GoogleRequest AdUnitsGetAdCode' where
        type Rs AdUnitsGetAdCode' = AdCode
        request = requestWith adSenseRequest
        requestWith rq AdUnitsGetAdCode'{..}
          = go _augacAdClientId _augacAdUnitId _augacQuotaUser
              (Just _augacPrettyPrint)
              _augacUserIP
              _augacFields
              _augacKey
              _augacOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AdUnitsGetAdCodeResource)
                      rq
