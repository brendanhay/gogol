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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
    (
    -- * REST Resource
      AccountsContainersRulesUpdateResource

    -- * Creating a Request
    , accountsContainersRulesUpdate'
    , AccountsContainersRulesUpdate'

    -- * Request Lenses
    , acruContainerId
    , acruFingerprint
    , acruRuleId
    , acruPayload
    , acruAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesUpdate@ method which the
-- 'AccountsContainersRulesUpdate'' request conforms to.
type AccountsContainersRulesUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Rule :> Put '[JSON] Rule

-- | Updates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesUpdate'' smart constructor.
data AccountsContainersRulesUpdate' = AccountsContainersRulesUpdate'
    { _acruContainerId :: !Text
    , _acruFingerprint :: !(Maybe Text)
    , _acruRuleId      :: !Text
    , _acruPayload     :: !Rule
    , _acruAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acruContainerId'
--
-- * 'acruFingerprint'
--
-- * 'acruRuleId'
--
-- * 'acruPayload'
--
-- * 'acruAccountId'
accountsContainersRulesUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Rule -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesUpdate'
accountsContainersRulesUpdate' pAcruContainerId_ pAcruRuleId_ pAcruPayload_ pAcruAccountId_ =
    AccountsContainersRulesUpdate'
    { _acruContainerId = pAcruContainerId_
    , _acruFingerprint = Nothing
    , _acruRuleId = pAcruRuleId_
    , _acruPayload = pAcruPayload_
    , _acruAccountId = pAcruAccountId_
    }

-- | The GTM Container ID.
acruContainerId :: Lens' AccountsContainersRulesUpdate' Text
acruContainerId
  = lens _acruContainerId
      (\ s a -> s{_acruContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the rule
-- in storage.
acruFingerprint :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruFingerprint
  = lens _acruFingerprint
      (\ s a -> s{_acruFingerprint = a})

-- | The GTM Rule ID.
acruRuleId :: Lens' AccountsContainersRulesUpdate' Text
acruRuleId
  = lens _acruRuleId (\ s a -> s{_acruRuleId = a})

-- | Multipart request metadata.
acruPayload :: Lens' AccountsContainersRulesUpdate' Rule
acruPayload
  = lens _acruPayload (\ s a -> s{_acruPayload = a})

-- | The GTM Account ID.
acruAccountId :: Lens' AccountsContainersRulesUpdate' Text
acruAccountId
  = lens _acruAccountId
      (\ s a -> s{_acruAccountId = a})

instance GoogleRequest AccountsContainersRulesUpdate'
         where
        type Rs AccountsContainersRulesUpdate' = Rule
        requestClient AccountsContainersRulesUpdate'{..}
          = go _acruAccountId _acruContainerId _acruRuleId
              _acruFingerprint
              (Just AltJSON)
              _acruPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersRulesUpdateResource)
                      mempty
