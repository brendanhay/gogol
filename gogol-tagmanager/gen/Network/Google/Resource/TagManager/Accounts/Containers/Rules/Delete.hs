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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete
    (
    -- * REST Resource
      AccountsContainersRulesDeleteResource

    -- * Creating a Request
    , accountsContainersRulesDelete'
    , AccountsContainersRulesDelete'

    -- * Request Lenses
    , acrdContainerId
    , acrdRuleId
    , acrdAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesDelete@ method which the
-- 'AccountsContainersRulesDelete'' request conforms to.
type AccountsContainersRulesDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Rule.
--
-- /See:/ 'accountsContainersRulesDelete'' smart constructor.
data AccountsContainersRulesDelete' = AccountsContainersRulesDelete'
    { _acrdContainerId :: !Text
    , _acrdRuleId      :: !Text
    , _acrdAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrdContainerId'
--
-- * 'acrdRuleId'
--
-- * 'acrdAccountId'
accountsContainersRulesDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesDelete'
accountsContainersRulesDelete' pAcrdContainerId_ pAcrdRuleId_ pAcrdAccountId_ =
    AccountsContainersRulesDelete'
    { _acrdContainerId = pAcrdContainerId_
    , _acrdRuleId = pAcrdRuleId_
    , _acrdAccountId = pAcrdAccountId_
    }

-- | The GTM Container ID.
acrdContainerId :: Lens' AccountsContainersRulesDelete' Text
acrdContainerId
  = lens _acrdContainerId
      (\ s a -> s{_acrdContainerId = a})

-- | The GTM Rule ID.
acrdRuleId :: Lens' AccountsContainersRulesDelete' Text
acrdRuleId
  = lens _acrdRuleId (\ s a -> s{_acrdRuleId = a})

-- | The GTM Account ID.
acrdAccountId :: Lens' AccountsContainersRulesDelete' Text
acrdAccountId
  = lens _acrdAccountId
      (\ s a -> s{_acrdAccountId = a})

instance GoogleRequest AccountsContainersRulesDelete'
         where
        type Rs AccountsContainersRulesDelete' = ()
        requestClient AccountsContainersRulesDelete'{..}
          = go _acrdAccountId _acrdContainerId _acrdRuleId
              (Just AltJSON)
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersRulesDeleteResource)
                      mempty
