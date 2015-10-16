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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create
    (
    -- * REST Resource
      AccountsContainersRulesCreateResource

    -- * Creating a Request
    , accountsContainersRulesCreate'
    , AccountsContainersRulesCreate'

    -- * Request Lenses
    , acrcContainerId
    , acrcPayload
    , acrcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesCreate@ method which the
-- 'AccountsContainersRulesCreate'' request conforms to.
type AccountsContainersRulesCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Rule :> Post '[JSON] Rule

-- | Creates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesCreate'' smart constructor.
data AccountsContainersRulesCreate' = AccountsContainersRulesCreate'
    { _acrcContainerId :: !Text
    , _acrcPayload     :: !Rule
    , _acrcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrcContainerId'
--
-- * 'acrcPayload'
--
-- * 'acrcAccountId'
accountsContainersRulesCreate'
    :: Text -- ^ 'containerId'
    -> Rule -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesCreate'
accountsContainersRulesCreate' pAcrcContainerId_ pAcrcPayload_ pAcrcAccountId_ =
    AccountsContainersRulesCreate'
    { _acrcContainerId = pAcrcContainerId_
    , _acrcPayload = pAcrcPayload_
    , _acrcAccountId = pAcrcAccountId_
    }

-- | The GTM Container ID.
acrcContainerId :: Lens' AccountsContainersRulesCreate' Text
acrcContainerId
  = lens _acrcContainerId
      (\ s a -> s{_acrcContainerId = a})

-- | Multipart request metadata.
acrcPayload :: Lens' AccountsContainersRulesCreate' Rule
acrcPayload
  = lens _acrcPayload (\ s a -> s{_acrcPayload = a})

-- | The GTM Account ID.
acrcAccountId :: Lens' AccountsContainersRulesCreate' Text
acrcAccountId
  = lens _acrcAccountId
      (\ s a -> s{_acrcAccountId = a})

instance GoogleRequest AccountsContainersRulesCreate'
         where
        type Rs AccountsContainersRulesCreate' = Rule
        requestClient AccountsContainersRulesCreate'{..}
          = go _acrcAccountId _acrcContainerId (Just AltJSON)
              _acrcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersRulesCreateResource)
                      mempty
