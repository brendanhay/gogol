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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Get
    (
    -- * REST Resource
      AccountsContainersGetResource

    -- * Creating a Request
    , accountsContainersGet'
    , AccountsContainersGet'

    -- * Request Lenses
    , acgContainerId
    , acgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersGet@ method which the
-- 'AccountsContainersGet'' request conforms to.
type AccountsContainersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Container

-- | Gets a Container.
--
-- /See:/ 'accountsContainersGet'' smart constructor.
data AccountsContainersGet' = AccountsContainersGet'
    { _acgContainerId :: !Text
    , _acgAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgContainerId'
--
-- * 'acgAccountId'
accountsContainersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersGet'
accountsContainersGet' pAcgContainerId_ pAcgAccountId_ =
    AccountsContainersGet'
    { _acgContainerId = pAcgContainerId_
    , _acgAccountId = pAcgAccountId_
    }

-- | The GTM Container ID.
acgContainerId :: Lens' AccountsContainersGet' Text
acgContainerId
  = lens _acgContainerId
      (\ s a -> s{_acgContainerId = a})

-- | The GTM Account ID.
acgAccountId :: Lens' AccountsContainersGet' Text
acgAccountId
  = lens _acgAccountId (\ s a -> s{_acgAccountId = a})

instance GoogleRequest AccountsContainersGet' where
        type Rs AccountsContainersGet' = Container
        requestClient AccountsContainersGet'{..}
          = go _acgAccountId _acgContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersGetResource)
                      mempty
