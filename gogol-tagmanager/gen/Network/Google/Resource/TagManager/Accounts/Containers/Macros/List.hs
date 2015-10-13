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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Macros of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.List
    (
    -- * REST Resource
      AccountsContainersMacrosListResource

    -- * Creating a Request
    , accountsContainersMacrosList'
    , AccountsContainersMacrosList'

    -- * Request Lenses
    , acmlContainerId
    , acmlAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosList@ method which the
-- 'AccountsContainersMacrosList'' request conforms to.
type AccountsContainersMacrosListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListMacrosResponse

-- | Lists all GTM Macros of a Container.
--
-- /See:/ 'accountsContainersMacrosList'' smart constructor.
data AccountsContainersMacrosList' = AccountsContainersMacrosList'
    { _acmlContainerId :: !Text
    , _acmlAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmlContainerId'
--
-- * 'acmlAccountId'
accountsContainersMacrosList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMacrosList'
accountsContainersMacrosList' pAcmlContainerId_ pAcmlAccountId_ =
    AccountsContainersMacrosList'
    { _acmlContainerId = pAcmlContainerId_
    , _acmlAccountId = pAcmlAccountId_
    }

-- | The GTM Container ID.
acmlContainerId :: Lens' AccountsContainersMacrosList' Text
acmlContainerId
  = lens _acmlContainerId
      (\ s a -> s{_acmlContainerId = a})

-- | The GTM Account ID.
acmlAccountId :: Lens' AccountsContainersMacrosList' Text
acmlAccountId
  = lens _acmlAccountId
      (\ s a -> s{_acmlAccountId = a})

instance GoogleRequest AccountsContainersMacrosList'
         where
        type Rs AccountsContainersMacrosList' =
             ListMacrosResponse
        requestClient AccountsContainersMacrosList'{..}
          = go _acmlAccountId _acmlContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersMacrosListResource)
                      mempty
