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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create
    (
    -- * REST Resource
      AccountsContainersMacrosCreateResource

    -- * Creating a Request
    , accountsContainersMacrosCreate'
    , AccountsContainersMacrosCreate'

    -- * Request Lenses
    , acmcContainerId
    , acmcPayload
    , acmcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosCreate@ method which the
-- 'AccountsContainersMacrosCreate'' request conforms to.
type AccountsContainersMacrosCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Macro :> Post '[JSON] Macro

-- | Creates a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosCreate'' smart constructor.
data AccountsContainersMacrosCreate' = AccountsContainersMacrosCreate'
    { _acmcContainerId :: !Text
    , _acmcPayload     :: !Macro
    , _acmcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmcContainerId'
--
-- * 'acmcPayload'
--
-- * 'acmcAccountId'
accountsContainersMacrosCreate'
    :: Text -- ^ 'containerId'
    -> Macro -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMacrosCreate'
accountsContainersMacrosCreate' pAcmcContainerId_ pAcmcPayload_ pAcmcAccountId_ =
    AccountsContainersMacrosCreate'
    { _acmcContainerId = pAcmcContainerId_
    , _acmcPayload = pAcmcPayload_
    , _acmcAccountId = pAcmcAccountId_
    }

-- | The GTM Container ID.
acmcContainerId :: Lens' AccountsContainersMacrosCreate' Text
acmcContainerId
  = lens _acmcContainerId
      (\ s a -> s{_acmcContainerId = a})

-- | Multipart request metadata.
acmcPayload :: Lens' AccountsContainersMacrosCreate' Macro
acmcPayload
  = lens _acmcPayload (\ s a -> s{_acmcPayload = a})

-- | The GTM Account ID.
acmcAccountId :: Lens' AccountsContainersMacrosCreate' Text
acmcAccountId
  = lens _acmcAccountId
      (\ s a -> s{_acmcAccountId = a})

instance GoogleRequest
         AccountsContainersMacrosCreate' where
        type Rs AccountsContainersMacrosCreate' = Macro
        requestClient AccountsContainersMacrosCreate'{..}
          = go _acmcAccountId _acmcContainerId (Just AltJSON)
              _acmcPayload
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersMacrosCreateResource)
                      mempty
