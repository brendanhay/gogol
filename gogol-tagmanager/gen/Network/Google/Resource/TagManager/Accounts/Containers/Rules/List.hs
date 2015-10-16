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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Rules of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
    (
    -- * REST Resource
      AccountsContainersRulesListResource

    -- * Creating a Request
    , accountsContainersRulesList'
    , AccountsContainersRulesList'

    -- * Request Lenses
    , acrlContainerId
    , acrlAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesList@ method which the
-- 'AccountsContainersRulesList'' request conforms to.
type AccountsContainersRulesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListRulesResponse

-- | Lists all GTM Rules of a Container.
--
-- /See:/ 'accountsContainersRulesList'' smart constructor.
data AccountsContainersRulesList' = AccountsContainersRulesList'
    { _acrlContainerId :: !Text
    , _acrlAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrlContainerId'
--
-- * 'acrlAccountId'
accountsContainersRulesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesList'
accountsContainersRulesList' pAcrlContainerId_ pAcrlAccountId_ =
    AccountsContainersRulesList'
    { _acrlContainerId = pAcrlContainerId_
    , _acrlAccountId = pAcrlAccountId_
    }

-- | The GTM Container ID.
acrlContainerId :: Lens' AccountsContainersRulesList' Text
acrlContainerId
  = lens _acrlContainerId
      (\ s a -> s{_acrlContainerId = a})

-- | The GTM Account ID.
acrlAccountId :: Lens' AccountsContainersRulesList' Text
acrlAccountId
  = lens _acrlAccountId
      (\ s a -> s{_acrlAccountId = a})

instance GoogleRequest AccountsContainersRulesList'
         where
        type Rs AccountsContainersRulesList' =
             ListRulesResponse
        requestClient AccountsContainersRulesList'{..}
          = go _acrlAccountId _acrlContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersRulesListResource)
                      mempty
