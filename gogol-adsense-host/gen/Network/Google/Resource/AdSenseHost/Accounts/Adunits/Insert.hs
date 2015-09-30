{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adunits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdunitsInsert@.
module AdSenseHost.Accounts.Adunits.Insert
    (
    -- * REST Resource
      AccountsAdunitsInsertAPI

    -- * Creating a Request
    , accountsAdunitsInsert
    , AccountsAdunitsInsert

    -- * Request Lenses
    , aaiQuotaUser
    , aaiPrettyPrint
    , aaiUserIp
    , aaiAdClientId
    , aaiAccountId
    , aaiKey
    , aaiOauthToken
    , aaiFields
    , aaiAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdunitsInsert@ which the
-- 'AccountsAdunitsInsert' request conforms to.
type AccountsAdunitsInsertAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :> Post '[JSON] AdUnit

-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdunitsInsert' smart constructor.
data AccountsAdunitsInsert = AccountsAdunitsInsert
    { _aaiQuotaUser   :: !(Maybe Text)
    , _aaiPrettyPrint :: !Bool
    , _aaiUserIp      :: !(Maybe Text)
    , _aaiAdClientId  :: !Text
    , _aaiAccountId   :: !Text
    , _aaiKey         :: !(Maybe Text)
    , _aaiOauthToken  :: !(Maybe Text)
    , _aaiFields      :: !(Maybe Text)
    , _aaiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiQuotaUser'
--
-- * 'aaiPrettyPrint'
--
-- * 'aaiUserIp'
--
-- * 'aaiAdClientId'
--
-- * 'aaiAccountId'
--
-- * 'aaiKey'
--
-- * 'aaiOauthToken'
--
-- * 'aaiFields'
--
-- * 'aaiAlt'
accountsAdunitsInsert
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsInsert
accountsAdunitsInsert pAaiAdClientId_ pAaiAccountId_ =
    AccountsAdunitsInsert
    { _aaiQuotaUser = Nothing
    , _aaiPrettyPrint = True
    , _aaiUserIp = Nothing
    , _aaiAdClientId = pAaiAdClientId_
    , _aaiAccountId = pAaiAccountId_
    , _aaiKey = Nothing
    , _aaiOauthToken = Nothing
    , _aaiFields = Nothing
    , _aaiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaiQuotaUser :: Lens' AccountsAdunitsInsert' (Maybe Text)
aaiQuotaUser
  = lens _aaiQuotaUser (\ s a -> s{_aaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaiPrettyPrint :: Lens' AccountsAdunitsInsert' Bool
aaiPrettyPrint
  = lens _aaiPrettyPrint
      (\ s a -> s{_aaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaiUserIp :: Lens' AccountsAdunitsInsert' (Maybe Text)
aaiUserIp
  = lens _aaiUserIp (\ s a -> s{_aaiUserIp = a})

-- | Ad client into which to insert the ad unit.
aaiAdClientId :: Lens' AccountsAdunitsInsert' Text
aaiAdClientId
  = lens _aaiAdClientId
      (\ s a -> s{_aaiAdClientId = a})

-- | Account which will contain the ad unit.
aaiAccountId :: Lens' AccountsAdunitsInsert' Text
aaiAccountId
  = lens _aaiAccountId (\ s a -> s{_aaiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaiKey :: Lens' AccountsAdunitsInsert' (Maybe Text)
aaiKey = lens _aaiKey (\ s a -> s{_aaiKey = a})

-- | OAuth 2.0 token for the current user.
aaiOauthToken :: Lens' AccountsAdunitsInsert' (Maybe Text)
aaiOauthToken
  = lens _aaiOauthToken
      (\ s a -> s{_aaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaiFields :: Lens' AccountsAdunitsInsert' (Maybe Text)
aaiFields
  = lens _aaiFields (\ s a -> s{_aaiFields = a})

-- | Data format for the response.
aaiAlt :: Lens' AccountsAdunitsInsert' Text
aaiAlt = lens _aaiAlt (\ s a -> s{_aaiAlt = a})

instance GoogleRequest AccountsAdunitsInsert' where
        type Rs AccountsAdunitsInsert' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsInsert{..}
          = go _aaiQuotaUser _aaiPrettyPrint _aaiUserIp
              _aaiAdClientId
              _aaiAccountId
              _aaiKey
              _aaiOauthToken
              _aaiFields
              _aaiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsInsertAPI)
                      r
                      u
