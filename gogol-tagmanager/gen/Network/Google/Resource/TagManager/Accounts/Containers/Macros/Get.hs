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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get
    (
    -- * REST Resource
      AccountsContainersMacrosGetResource

    -- * Creating a Request
    , accountsContainersMacrosGet'
    , AccountsContainersMacrosGet'

    -- * Request Lenses
    , acmgContainerId
    , acmgAccountId
    , acmgMacroId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosGet@ method which the
-- 'AccountsContainersMacrosGet'' request conforms to.
type AccountsContainersMacrosGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Macro

-- | Gets a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosGet'' smart constructor.
data AccountsContainersMacrosGet' = AccountsContainersMacrosGet'
    { _acmgContainerId :: !Text
    , _acmgAccountId   :: !Text
    , _acmgMacroId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmgContainerId'
--
-- * 'acmgAccountId'
--
-- * 'acmgMacroId'
accountsContainersMacrosGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosGet'
accountsContainersMacrosGet' pAcmgContainerId_ pAcmgAccountId_ pAcmgMacroId_ =
    AccountsContainersMacrosGet'
    { _acmgContainerId = pAcmgContainerId_
    , _acmgAccountId = pAcmgAccountId_
    , _acmgMacroId = pAcmgMacroId_
    }

-- | The GTM Container ID.
acmgContainerId :: Lens' AccountsContainersMacrosGet' Text
acmgContainerId
  = lens _acmgContainerId
      (\ s a -> s{_acmgContainerId = a})

-- | The GTM Account ID.
acmgAccountId :: Lens' AccountsContainersMacrosGet' Text
acmgAccountId
  = lens _acmgAccountId
      (\ s a -> s{_acmgAccountId = a})

-- | The GTM Macro ID.
acmgMacroId :: Lens' AccountsContainersMacrosGet' Text
acmgMacroId
  = lens _acmgMacroId (\ s a -> s{_acmgMacroId = a})

instance GoogleRequest AccountsContainersMacrosGet'
         where
        type Rs AccountsContainersMacrosGet' = Macro
        requestClient AccountsContainersMacrosGet'{..}
          = go _acmgAccountId _acmgContainerId _acmgMacroId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersMacrosGetResource)
                      mempty
