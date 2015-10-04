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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the supplied ad unit in the specified publisher AdSense account.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsPatch@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Patch
    (
    -- * REST Resource
      AccountsAdUnitsPatchResource

    -- * Creating a Request
    , accountsAdUnitsPatch'
    , AccountsAdUnitsPatch'

    -- * Request Lenses
    , aaupQuotaUser
    , aaupPrettyPrint
    , aaupUserIP
    , aaupAdUnitId
    , aaupPayload
    , aaupAdClientId
    , aaupAccountId
    , aaupKey
    , aaupOAuthToken
    , aaupFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsPatch@ which the
-- 'AccountsAdUnitsPatch'' request conforms to.
type AccountsAdUnitsPatchResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "adUnitId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[OctetStream] AdUnit :>
                                 Patch '[JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
-- This method supports patch semantics.
--
-- /See:/ 'accountsAdUnitsPatch'' smart constructor.
data AccountsAdUnitsPatch' = AccountsAdUnitsPatch'
    { _aaupQuotaUser   :: !(Maybe Text)
    , _aaupPrettyPrint :: !Bool
    , _aaupUserIP      :: !(Maybe Text)
    , _aaupAdUnitId    :: !Text
    , _aaupPayload     :: !AdUnit
    , _aaupAdClientId  :: !Text
    , _aaupAccountId   :: !Text
    , _aaupKey         :: !(Maybe Key)
    , _aaupOAuthToken  :: !(Maybe OAuthToken)
    , _aaupFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaupQuotaUser'
--
-- * 'aaupPrettyPrint'
--
-- * 'aaupUserIP'
--
-- * 'aaupAdUnitId'
--
-- * 'aaupPayload'
--
-- * 'aaupAdClientId'
--
-- * 'aaupAccountId'
--
-- * 'aaupKey'
--
-- * 'aaupOAuthToken'
--
-- * 'aaupFields'
accountsAdUnitsPatch'
    :: Text -- ^ 'adUnitId'
    -> AdUnit -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsPatch'
accountsAdUnitsPatch' pAaupAdUnitId_ pAaupPayload_ pAaupAdClientId_ pAaupAccountId_ =
    AccountsAdUnitsPatch'
    { _aaupQuotaUser = Nothing
    , _aaupPrettyPrint = True
    , _aaupUserIP = Nothing
    , _aaupAdUnitId = pAaupAdUnitId_
    , _aaupPayload = pAaupPayload_
    , _aaupAdClientId = pAaupAdClientId_
    , _aaupAccountId = pAaupAccountId_
    , _aaupKey = Nothing
    , _aaupOAuthToken = Nothing
    , _aaupFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaupQuotaUser :: Lens' AccountsAdUnitsPatch' (Maybe Text)
aaupQuotaUser
  = lens _aaupQuotaUser
      (\ s a -> s{_aaupQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaupPrettyPrint :: Lens' AccountsAdUnitsPatch' Bool
aaupPrettyPrint
  = lens _aaupPrettyPrint
      (\ s a -> s{_aaupPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaupUserIP :: Lens' AccountsAdUnitsPatch' (Maybe Text)
aaupUserIP
  = lens _aaupUserIP (\ s a -> s{_aaupUserIP = a})

-- | Ad unit to get.
aaupAdUnitId :: Lens' AccountsAdUnitsPatch' Text
aaupAdUnitId
  = lens _aaupAdUnitId (\ s a -> s{_aaupAdUnitId = a})

-- | Multipart request metadata.
aaupPayload :: Lens' AccountsAdUnitsPatch' AdUnit
aaupPayload
  = lens _aaupPayload (\ s a -> s{_aaupPayload = a})

-- | Ad client which contains the ad unit.
aaupAdClientId :: Lens' AccountsAdUnitsPatch' Text
aaupAdClientId
  = lens _aaupAdClientId
      (\ s a -> s{_aaupAdClientId = a})

-- | Account which contains the ad client.
aaupAccountId :: Lens' AccountsAdUnitsPatch' Text
aaupAccountId
  = lens _aaupAccountId
      (\ s a -> s{_aaupAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaupKey :: Lens' AccountsAdUnitsPatch' (Maybe Key)
aaupKey = lens _aaupKey (\ s a -> s{_aaupKey = a})

-- | OAuth 2.0 token for the current user.
aaupOAuthToken :: Lens' AccountsAdUnitsPatch' (Maybe OAuthToken)
aaupOAuthToken
  = lens _aaupOAuthToken
      (\ s a -> s{_aaupOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaupFields :: Lens' AccountsAdUnitsPatch' (Maybe Text)
aaupFields
  = lens _aaupFields (\ s a -> s{_aaupFields = a})

instance GoogleAuth AccountsAdUnitsPatch' where
        authKey = aaupKey . _Just
        authToken = aaupOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsPatch' where
        type Rs AccountsAdUnitsPatch' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdUnitsPatch'{..}
          = go _aaupAccountId _aaupAdClientId
              (Just _aaupAdUnitId)
              _aaupQuotaUser
              (Just _aaupPrettyPrint)
              _aaupUserIP
              _aaupFields
              _aaupKey
              _aaupOAuthToken
              (Just AltJSON)
              _aaupPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdUnitsPatchResource)
                      r
                      u
