{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsUpdate@.
module TagManager.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateAPI

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIp
    , auFingerprint
    , auAccountId
    , auKey
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsUpdate@ which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         QueryParam "fingerprint" Text :> Put '[JSON] Account

-- | Updates a GTM Account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate = AccountsUpdate
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auUserIp      :: !(Maybe Text)
    , _auFingerprint :: !(Maybe Text)
    , _auAccountId   :: !Text
    , _auKey         :: !(Maybe Text)
    , _auOauthToken  :: !(Maybe Text)
    , _auFields      :: !(Maybe Text)
    , _auAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIp'
--
-- * 'auFingerprint'
--
-- * 'auAccountId'
--
-- * 'auKey'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
accountsUpdate
    :: Text -- ^ 'accountId'
    -> AccountsUpdate
accountsUpdate pAuAccountId_ =
    AccountsUpdate
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIp = Nothing
    , _auFingerprint = Nothing
    , _auAccountId = pAuAccountId_
    , _auKey = Nothing
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AccountsUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AccountsUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' AccountsUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- account in storage.
auFingerprint :: Lens' AccountsUpdate' (Maybe Text)
auFingerprint
  = lens _auFingerprint
      (\ s a -> s{_auFingerprint = a})

-- | The GTM Account ID.
auAccountId :: Lens' AccountsUpdate' Text
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AccountsUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AccountsUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AccountsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AccountsUpdate' Text
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsUpdate{..}
          = go _auQuotaUser _auPrettyPrint _auUserIp
              _auFingerprint
              _auAccountId
              _auKey
              _auOauthToken
              _auFields
              _auAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsUpdateAPI)
                      r
                      u
