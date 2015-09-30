{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adunits.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdunitsUpdate@.
module AdSenseHost.Accounts.Adunits.Update
    (
    -- * REST Resource
      AccountsAdunitsUpdateAPI

    -- * Creating a Request
    , accountsAdunitsUpdate
    , AccountsAdunitsUpdate

    -- * Request Lenses
    , aauQuotaUser
    , aauPrettyPrint
    , aauUserIp
    , aauAdClientId
    , aauAccountId
    , aauKey
    , aauOauthToken
    , aauFields
    , aauAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdunitsUpdate@ which the
-- 'AccountsAdunitsUpdate' request conforms to.
type AccountsAdunitsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :> Put '[JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ 'accountsAdunitsUpdate' smart constructor.
data AccountsAdunitsUpdate = AccountsAdunitsUpdate
    { _aauQuotaUser   :: !(Maybe Text)
    , _aauPrettyPrint :: !Bool
    , _aauUserIp      :: !(Maybe Text)
    , _aauAdClientId  :: !Text
    , _aauAccountId   :: !Text
    , _aauKey         :: !(Maybe Text)
    , _aauOauthToken  :: !(Maybe Text)
    , _aauFields      :: !(Maybe Text)
    , _aauAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aauQuotaUser'
--
-- * 'aauPrettyPrint'
--
-- * 'aauUserIp'
--
-- * 'aauAdClientId'
--
-- * 'aauAccountId'
--
-- * 'aauKey'
--
-- * 'aauOauthToken'
--
-- * 'aauFields'
--
-- * 'aauAlt'
accountsAdunitsUpdate
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsUpdate
accountsAdunitsUpdate pAauAdClientId_ pAauAccountId_ =
    AccountsAdunitsUpdate
    { _aauQuotaUser = Nothing
    , _aauPrettyPrint = True
    , _aauUserIp = Nothing
    , _aauAdClientId = pAauAdClientId_
    , _aauAccountId = pAauAccountId_
    , _aauKey = Nothing
    , _aauOauthToken = Nothing
    , _aauFields = Nothing
    , _aauAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aauQuotaUser :: Lens' AccountsAdunitsUpdate' (Maybe Text)
aauQuotaUser
  = lens _aauQuotaUser (\ s a -> s{_aauQuotaUser = a})

-- | Returns response with indentations and line breaks.
aauPrettyPrint :: Lens' AccountsAdunitsUpdate' Bool
aauPrettyPrint
  = lens _aauPrettyPrint
      (\ s a -> s{_aauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aauUserIp :: Lens' AccountsAdunitsUpdate' (Maybe Text)
aauUserIp
  = lens _aauUserIp (\ s a -> s{_aauUserIp = a})

-- | Ad client which contains the ad unit.
aauAdClientId :: Lens' AccountsAdunitsUpdate' Text
aauAdClientId
  = lens _aauAdClientId
      (\ s a -> s{_aauAdClientId = a})

-- | Account which contains the ad client.
aauAccountId :: Lens' AccountsAdunitsUpdate' Text
aauAccountId
  = lens _aauAccountId (\ s a -> s{_aauAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aauKey :: Lens' AccountsAdunitsUpdate' (Maybe Text)
aauKey = lens _aauKey (\ s a -> s{_aauKey = a})

-- | OAuth 2.0 token for the current user.
aauOauthToken :: Lens' AccountsAdunitsUpdate' (Maybe Text)
aauOauthToken
  = lens _aauOauthToken
      (\ s a -> s{_aauOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aauFields :: Lens' AccountsAdunitsUpdate' (Maybe Text)
aauFields
  = lens _aauFields (\ s a -> s{_aauFields = a})

-- | Data format for the response.
aauAlt :: Lens' AccountsAdunitsUpdate' Text
aauAlt = lens _aauAlt (\ s a -> s{_aauAlt = a})

instance GoogleRequest AccountsAdunitsUpdate' where
        type Rs AccountsAdunitsUpdate' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsUpdate{..}
          = go _aauQuotaUser _aauPrettyPrint _aauUserIp
              _aauAdClientId
              _aauAccountId
              _aauKey
              _aauOauthToken
              _aauFields
              _aauAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsUpdateAPI)
                      r
                      u
