{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Adunits.GetAdCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdunitsGetAdCode@.
module AdSense.Accounts.Adunits.GetAdCode
    (
    -- * REST Resource
      AccountsAdunitsGetAdCodeAPI

    -- * Creating a Request
    , accountsAdunitsGetAdCode
    , AccountsAdunitsGetAdCode

    -- * Request Lenses
    , aagacQuotaUser
    , aagacPrettyPrint
    , aagacUserIp
    , aagacAdUnitId
    , aagacAdClientId
    , aagacAccountId
    , aagacKey
    , aagacOauthToken
    , aagacFields
    , aagacAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdunitsGetAdCode@ which the
-- 'AccountsAdunitsGetAdCode' request conforms to.
type AccountsAdunitsGetAdCodeAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "adcode" :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'accountsAdunitsGetAdCode' smart constructor.
data AccountsAdunitsGetAdCode = AccountsAdunitsGetAdCode
    { _aagacQuotaUser   :: !(Maybe Text)
    , _aagacPrettyPrint :: !Bool
    , _aagacUserIp      :: !(Maybe Text)
    , _aagacAdUnitId    :: !Text
    , _aagacAdClientId  :: !Text
    , _aagacAccountId   :: !Text
    , _aagacKey         :: !(Maybe Text)
    , _aagacOauthToken  :: !(Maybe Text)
    , _aagacFields      :: !(Maybe Text)
    , _aagacAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsGetAdCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aagacQuotaUser'
--
-- * 'aagacPrettyPrint'
--
-- * 'aagacUserIp'
--
-- * 'aagacAdUnitId'
--
-- * 'aagacAdClientId'
--
-- * 'aagacAccountId'
--
-- * 'aagacKey'
--
-- * 'aagacOauthToken'
--
-- * 'aagacFields'
--
-- * 'aagacAlt'
accountsAdunitsGetAdCode
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsGetAdCode
accountsAdunitsGetAdCode pAagacAdUnitId_ pAagacAdClientId_ pAagacAccountId_ =
    AccountsAdunitsGetAdCode
    { _aagacQuotaUser = Nothing
    , _aagacPrettyPrint = True
    , _aagacUserIp = Nothing
    , _aagacAdUnitId = pAagacAdUnitId_
    , _aagacAdClientId = pAagacAdClientId_
    , _aagacAccountId = pAagacAccountId_
    , _aagacKey = Nothing
    , _aagacOauthToken = Nothing
    , _aagacFields = Nothing
    , _aagacAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aagacQuotaUser :: Lens' AccountsAdunitsGetAdCode' (Maybe Text)
aagacQuotaUser
  = lens _aagacQuotaUser
      (\ s a -> s{_aagacQuotaUser = a})

-- | Returns response with indentations and line breaks.
aagacPrettyPrint :: Lens' AccountsAdunitsGetAdCode' Bool
aagacPrettyPrint
  = lens _aagacPrettyPrint
      (\ s a -> s{_aagacPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aagacUserIp :: Lens' AccountsAdunitsGetAdCode' (Maybe Text)
aagacUserIp
  = lens _aagacUserIp (\ s a -> s{_aagacUserIp = a})

-- | Ad unit to get the code for.
aagacAdUnitId :: Lens' AccountsAdunitsGetAdCode' Text
aagacAdUnitId
  = lens _aagacAdUnitId
      (\ s a -> s{_aagacAdUnitId = a})

-- | Ad client with contains the ad unit.
aagacAdClientId :: Lens' AccountsAdunitsGetAdCode' Text
aagacAdClientId
  = lens _aagacAdClientId
      (\ s a -> s{_aagacAdClientId = a})

-- | Account which contains the ad client.
aagacAccountId :: Lens' AccountsAdunitsGetAdCode' Text
aagacAccountId
  = lens _aagacAccountId
      (\ s a -> s{_aagacAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aagacKey :: Lens' AccountsAdunitsGetAdCode' (Maybe Text)
aagacKey = lens _aagacKey (\ s a -> s{_aagacKey = a})

-- | OAuth 2.0 token for the current user.
aagacOauthToken :: Lens' AccountsAdunitsGetAdCode' (Maybe Text)
aagacOauthToken
  = lens _aagacOauthToken
      (\ s a -> s{_aagacOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aagacFields :: Lens' AccountsAdunitsGetAdCode' (Maybe Text)
aagacFields
  = lens _aagacFields (\ s a -> s{_aagacFields = a})

-- | Data format for the response.
aagacAlt :: Lens' AccountsAdunitsGetAdCode' Text
aagacAlt = lens _aagacAlt (\ s a -> s{_aagacAlt = a})

instance GoogleRequest AccountsAdunitsGetAdCode'
         where
        type Rs AccountsAdunitsGetAdCode' = AdCode
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdunitsGetAdCode{..}
          = go _aagacQuotaUser _aagacPrettyPrint _aagacUserIp
              _aagacAdUnitId
              _aagacAdClientId
              _aagacAccountId
              _aagacKey
              _aagacOauthToken
              _aagacFields
              _aagacAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsGetAdCodeAPI)
                      r
                      u
