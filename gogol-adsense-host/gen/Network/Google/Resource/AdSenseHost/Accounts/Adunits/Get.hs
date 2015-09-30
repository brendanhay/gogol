{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdunitsGet@.
module AdSenseHost.Accounts.Adunits.Get
    (
    -- * REST Resource
      AccountsAdunitsGetAPI

    -- * Creating a Request
    , accountsAdunitsGet
    , AccountsAdunitsGet

    -- * Request Lenses
    , aagaQuotaUser
    , aagaPrettyPrint
    , aagaUserIp
    , aagaAdUnitId
    , aagaAdClientId
    , aagaAccountId
    , aagaKey
    , aagaOauthToken
    , aagaFields
    , aagaAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdunitsGet@ which the
-- 'AccountsAdunitsGet' request conforms to.
type AccountsAdunitsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :> Get '[JSON] AdUnit

-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ 'accountsAdunitsGet' smart constructor.
data AccountsAdunitsGet = AccountsAdunitsGet
    { _aagaQuotaUser   :: !(Maybe Text)
    , _aagaPrettyPrint :: !Bool
    , _aagaUserIp      :: !(Maybe Text)
    , _aagaAdUnitId    :: !Text
    , _aagaAdClientId  :: !Text
    , _aagaAccountId   :: !Text
    , _aagaKey         :: !(Maybe Text)
    , _aagaOauthToken  :: !(Maybe Text)
    , _aagaFields      :: !(Maybe Text)
    , _aagaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aagaQuotaUser'
--
-- * 'aagaPrettyPrint'
--
-- * 'aagaUserIp'
--
-- * 'aagaAdUnitId'
--
-- * 'aagaAdClientId'
--
-- * 'aagaAccountId'
--
-- * 'aagaKey'
--
-- * 'aagaOauthToken'
--
-- * 'aagaFields'
--
-- * 'aagaAlt'
accountsAdunitsGet
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsGet
accountsAdunitsGet pAagaAdUnitId_ pAagaAdClientId_ pAagaAccountId_ =
    AccountsAdunitsGet
    { _aagaQuotaUser = Nothing
    , _aagaPrettyPrint = True
    , _aagaUserIp = Nothing
    , _aagaAdUnitId = pAagaAdUnitId_
    , _aagaAdClientId = pAagaAdClientId_
    , _aagaAccountId = pAagaAccountId_
    , _aagaKey = Nothing
    , _aagaOauthToken = Nothing
    , _aagaFields = Nothing
    , _aagaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aagaQuotaUser :: Lens' AccountsAdunitsGet' (Maybe Text)
aagaQuotaUser
  = lens _aagaQuotaUser
      (\ s a -> s{_aagaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aagaPrettyPrint :: Lens' AccountsAdunitsGet' Bool
aagaPrettyPrint
  = lens _aagaPrettyPrint
      (\ s a -> s{_aagaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aagaUserIp :: Lens' AccountsAdunitsGet' (Maybe Text)
aagaUserIp
  = lens _aagaUserIp (\ s a -> s{_aagaUserIp = a})

-- | Ad unit to get.
aagaAdUnitId :: Lens' AccountsAdunitsGet' Text
aagaAdUnitId
  = lens _aagaAdUnitId (\ s a -> s{_aagaAdUnitId = a})

-- | Ad client for which to get ad unit.
aagaAdClientId :: Lens' AccountsAdunitsGet' Text
aagaAdClientId
  = lens _aagaAdClientId
      (\ s a -> s{_aagaAdClientId = a})

-- | Account which contains the ad unit.
aagaAccountId :: Lens' AccountsAdunitsGet' Text
aagaAccountId
  = lens _aagaAccountId
      (\ s a -> s{_aagaAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aagaKey :: Lens' AccountsAdunitsGet' (Maybe Text)
aagaKey = lens _aagaKey (\ s a -> s{_aagaKey = a})

-- | OAuth 2.0 token for the current user.
aagaOauthToken :: Lens' AccountsAdunitsGet' (Maybe Text)
aagaOauthToken
  = lens _aagaOauthToken
      (\ s a -> s{_aagaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aagaFields :: Lens' AccountsAdunitsGet' (Maybe Text)
aagaFields
  = lens _aagaFields (\ s a -> s{_aagaFields = a})

-- | Data format for the response.
aagaAlt :: Lens' AccountsAdunitsGet' Text
aagaAlt = lens _aagaAlt (\ s a -> s{_aagaAlt = a})

instance GoogleRequest AccountsAdunitsGet' where
        type Rs AccountsAdunitsGet' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsGet{..}
          = go _aagaQuotaUser _aagaPrettyPrint _aagaUserIp
              _aagaAdUnitId
              _aagaAdClientId
              _aagaAccountId
              _aagaKey
              _aagaOauthToken
              _aagaFields
              _aagaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsGetAPI)
                      r
                      u
