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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get
    (
    -- * REST Resource
      AccountsContainersRulesGetResource

    -- * Creating a Request
    , accountsContainersRulesGet'
    , AccountsContainersRulesGet'

    -- * Request Lenses
    , acrgContainerId
    , acrgRuleId
    , acrgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesGet@ method which the
-- 'AccountsContainersRulesGet'' request conforms to.
type AccountsContainersRulesGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Rule

-- | Gets a GTM Rule.
--
-- /See:/ 'accountsContainersRulesGet'' smart constructor.
data AccountsContainersRulesGet' = AccountsContainersRulesGet'
    { _acrgContainerId :: !Text
    , _acrgRuleId      :: !Text
    , _acrgAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrgContainerId'
--
-- * 'acrgRuleId'
--
-- * 'acrgAccountId'
accountsContainersRulesGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesGet'
accountsContainersRulesGet' pAcrgContainerId_ pAcrgRuleId_ pAcrgAccountId_ =
    AccountsContainersRulesGet'
    { _acrgContainerId = pAcrgContainerId_
    , _acrgRuleId = pAcrgRuleId_
    , _acrgAccountId = pAcrgAccountId_
    }

-- | The GTM Container ID.
acrgContainerId :: Lens' AccountsContainersRulesGet' Text
acrgContainerId
  = lens _acrgContainerId
      (\ s a -> s{_acrgContainerId = a})

-- | The GTM Rule ID.
acrgRuleId :: Lens' AccountsContainersRulesGet' Text
acrgRuleId
  = lens _acrgRuleId (\ s a -> s{_acrgRuleId = a})

-- | The GTM Account ID.
acrgAccountId :: Lens' AccountsContainersRulesGet' Text
acrgAccountId
  = lens _acrgAccountId
      (\ s a -> s{_acrgAccountId = a})

instance GoogleRequest AccountsContainersRulesGet'
         where
        type Rs AccountsContainersRulesGet' = Rule
        requestClient AccountsContainersRulesGet'{..}
          = go _acrgAccountId _acrgContainerId _acrgRuleId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersRulesGetResource)
                      mempty
