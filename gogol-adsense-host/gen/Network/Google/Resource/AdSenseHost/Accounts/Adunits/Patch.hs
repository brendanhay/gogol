{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adunits.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the supplied ad unit in the specified publisher AdSense account.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdunitsPatch@.
module AdSenseHost.Accounts.Adunits.Patch
    (
    -- * REST Resource
      AccountsAdunitsPatchAPI

    -- * Creating a Request
    , accountsAdunitsPatch
    , AccountsAdunitsPatch

    -- * Request Lenses
    , aapQuotaUser
    , aapPrettyPrint
    , aapUserIp
    , aapAdUnitId
    , aapAdClientId
    , aapAccountId
    , aapKey
    , aapOauthToken
    , aapFields
    , aapAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdunitsPatch@ which the
-- 'AccountsAdunitsPatch' request conforms to.
type AccountsAdunitsPatchAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "adUnitId" Text :> Patch '[JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
-- This method supports patch semantics.
--
-- /See:/ 'accountsAdunitsPatch' smart constructor.
data AccountsAdunitsPatch = AccountsAdunitsPatch
    { _aapQuotaUser   :: !(Maybe Text)
    , _aapPrettyPrint :: !Bool
    , _aapUserIp      :: !(Maybe Text)
    , _aapAdUnitId    :: !Text
    , _aapAdClientId  :: !Text
    , _aapAccountId   :: !Text
    , _aapKey         :: !(Maybe Text)
    , _aapOauthToken  :: !(Maybe Text)
    , _aapFields      :: !(Maybe Text)
    , _aapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aapQuotaUser'
--
-- * 'aapPrettyPrint'
--
-- * 'aapUserIp'
--
-- * 'aapAdUnitId'
--
-- * 'aapAdClientId'
--
-- * 'aapAccountId'
--
-- * 'aapKey'
--
-- * 'aapOauthToken'
--
-- * 'aapFields'
--
-- * 'aapAlt'
accountsAdunitsPatch
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsPatch
accountsAdunitsPatch pAapAdUnitId_ pAapAdClientId_ pAapAccountId_ =
    AccountsAdunitsPatch
    { _aapQuotaUser = Nothing
    , _aapPrettyPrint = True
    , _aapUserIp = Nothing
    , _aapAdUnitId = pAapAdUnitId_
    , _aapAdClientId = pAapAdClientId_
    , _aapAccountId = pAapAccountId_
    , _aapKey = Nothing
    , _aapOauthToken = Nothing
    , _aapFields = Nothing
    , _aapAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aapQuotaUser :: Lens' AccountsAdunitsPatch' (Maybe Text)
aapQuotaUser
  = lens _aapQuotaUser (\ s a -> s{_aapQuotaUser = a})

-- | Returns response with indentations and line breaks.
aapPrettyPrint :: Lens' AccountsAdunitsPatch' Bool
aapPrettyPrint
  = lens _aapPrettyPrint
      (\ s a -> s{_aapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aapUserIp :: Lens' AccountsAdunitsPatch' (Maybe Text)
aapUserIp
  = lens _aapUserIp (\ s a -> s{_aapUserIp = a})

-- | Ad unit to get.
aapAdUnitId :: Lens' AccountsAdunitsPatch' Text
aapAdUnitId
  = lens _aapAdUnitId (\ s a -> s{_aapAdUnitId = a})

-- | Ad client which contains the ad unit.
aapAdClientId :: Lens' AccountsAdunitsPatch' Text
aapAdClientId
  = lens _aapAdClientId
      (\ s a -> s{_aapAdClientId = a})

-- | Account which contains the ad client.
aapAccountId :: Lens' AccountsAdunitsPatch' Text
aapAccountId
  = lens _aapAccountId (\ s a -> s{_aapAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aapKey :: Lens' AccountsAdunitsPatch' (Maybe Text)
aapKey = lens _aapKey (\ s a -> s{_aapKey = a})

-- | OAuth 2.0 token for the current user.
aapOauthToken :: Lens' AccountsAdunitsPatch' (Maybe Text)
aapOauthToken
  = lens _aapOauthToken
      (\ s a -> s{_aapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aapFields :: Lens' AccountsAdunitsPatch' (Maybe Text)
aapFields
  = lens _aapFields (\ s a -> s{_aapFields = a})

-- | Data format for the response.
aapAlt :: Lens' AccountsAdunitsPatch' Text
aapAlt = lens _aapAlt (\ s a -> s{_aapAlt = a})

instance GoogleRequest AccountsAdunitsPatch' where
        type Rs AccountsAdunitsPatch' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsPatch{..}
          = go _aapQuotaUser _aapPrettyPrint _aapUserIp
              (Just _aapAdUnitId)
              _aapAdClientId
              _aapAccountId
              _aapKey
              _aapOauthToken
              _aapFields
              _aapAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsPatchAPI)
                      r
                      u
