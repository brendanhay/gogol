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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete
    (
    -- * REST Resource
      AccountsContainersMacrosDeleteResource

    -- * Creating a Request
    , accountsContainersMacrosDelete'
    , AccountsContainersMacrosDelete'

    -- * Request Lenses
    , acmdContainerId
    , acmdAccountId
    , acmdMacroId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosDelete@ method which the
-- 'AccountsContainersMacrosDelete'' request conforms to.
type AccountsContainersMacrosDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosDelete'' smart constructor.
data AccountsContainersMacrosDelete' = AccountsContainersMacrosDelete'
    { _acmdContainerId :: !Text
    , _acmdAccountId   :: !Text
    , _acmdMacroId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmdContainerId'
--
-- * 'acmdAccountId'
--
-- * 'acmdMacroId'
accountsContainersMacrosDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosDelete'
accountsContainersMacrosDelete' pAcmdContainerId_ pAcmdAccountId_ pAcmdMacroId_ =
    AccountsContainersMacrosDelete'
    { _acmdContainerId = pAcmdContainerId_
    , _acmdAccountId = pAcmdAccountId_
    , _acmdMacroId = pAcmdMacroId_
    }

-- | The GTM Container ID.
acmdContainerId :: Lens' AccountsContainersMacrosDelete' Text
acmdContainerId
  = lens _acmdContainerId
      (\ s a -> s{_acmdContainerId = a})

-- | The GTM Account ID.
acmdAccountId :: Lens' AccountsContainersMacrosDelete' Text
acmdAccountId
  = lens _acmdAccountId
      (\ s a -> s{_acmdAccountId = a})

-- | The GTM Macro ID.
acmdMacroId :: Lens' AccountsContainersMacrosDelete' Text
acmdMacroId
  = lens _acmdMacroId (\ s a -> s{_acmdMacroId = a})

instance GoogleRequest
         AccountsContainersMacrosDelete' where
        type Rs AccountsContainersMacrosDelete' = ()
        requestClient AccountsContainersMacrosDelete'{..}
          = go _acmdAccountId _acmdContainerId _acmdMacroId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersMacrosDeleteResource)
                      mempty
