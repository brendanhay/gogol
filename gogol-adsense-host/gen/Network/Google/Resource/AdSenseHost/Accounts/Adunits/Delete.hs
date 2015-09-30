{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adunits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdunitsDelete@.
module AdSenseHost.Accounts.Adunits.Delete
    (
    -- * REST Resource
      AccountsAdunitsDeleteAPI

    -- * Creating a Request
    , accountsAdunitsDelete
    , AccountsAdunitsDelete

    -- * Request Lenses
    , aadQuotaUser
    , aadPrettyPrint
    , aadUserIp
    , aadAdUnitId
    , aadAdClientId
    , aadAccountId
    , aadKey
    , aadOauthToken
    , aadFields
    , aadAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdunitsDelete@ which the
-- 'AccountsAdunitsDelete' request conforms to.
type AccountsAdunitsDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :> Delete '[JSON] AdUnit

-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdunitsDelete' smart constructor.
data AccountsAdunitsDelete = AccountsAdunitsDelete
    { _aadQuotaUser   :: !(Maybe Text)
    , _aadPrettyPrint :: !Bool
    , _aadUserIp      :: !(Maybe Text)
    , _aadAdUnitId    :: !Text
    , _aadAdClientId  :: !Text
    , _aadAccountId   :: !Text
    , _aadKey         :: !(Maybe Text)
    , _aadOauthToken  :: !(Maybe Text)
    , _aadFields      :: !(Maybe Text)
    , _aadAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aadQuotaUser'
--
-- * 'aadPrettyPrint'
--
-- * 'aadUserIp'
--
-- * 'aadAdUnitId'
--
-- * 'aadAdClientId'
--
-- * 'aadAccountId'
--
-- * 'aadKey'
--
-- * 'aadOauthToken'
--
-- * 'aadFields'
--
-- * 'aadAlt'
accountsAdunitsDelete
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsDelete
accountsAdunitsDelete pAadAdUnitId_ pAadAdClientId_ pAadAccountId_ =
    AccountsAdunitsDelete
    { _aadQuotaUser = Nothing
    , _aadPrettyPrint = True
    , _aadUserIp = Nothing
    , _aadAdUnitId = pAadAdUnitId_
    , _aadAdClientId = pAadAdClientId_
    , _aadAccountId = pAadAccountId_
    , _aadKey = Nothing
    , _aadOauthToken = Nothing
    , _aadFields = Nothing
    , _aadAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aadQuotaUser :: Lens' AccountsAdunitsDelete' (Maybe Text)
aadQuotaUser
  = lens _aadQuotaUser (\ s a -> s{_aadQuotaUser = a})

-- | Returns response with indentations and line breaks.
aadPrettyPrint :: Lens' AccountsAdunitsDelete' Bool
aadPrettyPrint
  = lens _aadPrettyPrint
      (\ s a -> s{_aadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aadUserIp :: Lens' AccountsAdunitsDelete' (Maybe Text)
aadUserIp
  = lens _aadUserIp (\ s a -> s{_aadUserIp = a})

-- | Ad unit to delete.
aadAdUnitId :: Lens' AccountsAdunitsDelete' Text
aadAdUnitId
  = lens _aadAdUnitId (\ s a -> s{_aadAdUnitId = a})

-- | Ad client for which to get ad unit.
aadAdClientId :: Lens' AccountsAdunitsDelete' Text
aadAdClientId
  = lens _aadAdClientId
      (\ s a -> s{_aadAdClientId = a})

-- | Account which contains the ad unit.
aadAccountId :: Lens' AccountsAdunitsDelete' Text
aadAccountId
  = lens _aadAccountId (\ s a -> s{_aadAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aadKey :: Lens' AccountsAdunitsDelete' (Maybe Text)
aadKey = lens _aadKey (\ s a -> s{_aadKey = a})

-- | OAuth 2.0 token for the current user.
aadOauthToken :: Lens' AccountsAdunitsDelete' (Maybe Text)
aadOauthToken
  = lens _aadOauthToken
      (\ s a -> s{_aadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aadFields :: Lens' AccountsAdunitsDelete' (Maybe Text)
aadFields
  = lens _aadFields (\ s a -> s{_aadFields = a})

-- | Data format for the response.
aadAlt :: Lens' AccountsAdunitsDelete' Text
aadAlt = lens _aadAlt (\ s a -> s{_aadAlt = a})

instance GoogleRequest AccountsAdunitsDelete' where
        type Rs AccountsAdunitsDelete' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsDelete{..}
          = go _aadQuotaUser _aadPrettyPrint _aadUserIp
              _aadAdUnitId
              _aadAdClientId
              _aadAccountId
              _aadKey
              _aadOauthToken
              _aadFields
              _aadAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsDeleteAPI)
                      r
                      u
