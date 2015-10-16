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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
    (
    -- * REST Resource
      AccountsContainersTriggersDeleteResource

    -- * Creating a Request
    , accountsContainersTriggersDelete'
    , AccountsContainersTriggersDelete'

    -- * Request Lenses
    , actdContainerId
    , actdTriggerId
    , actdAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersDelete@ method which the
-- 'AccountsContainersTriggersDelete'' request conforms to.
type AccountsContainersTriggersDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersDelete'' smart constructor.
data AccountsContainersTriggersDelete' = AccountsContainersTriggersDelete'
    { _actdContainerId :: !Text
    , _actdTriggerId   :: !Text
    , _actdAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdContainerId'
--
-- * 'actdTriggerId'
--
-- * 'actdAccountId'
accountsContainersTriggersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersDelete'
accountsContainersTriggersDelete' pActdContainerId_ pActdTriggerId_ pActdAccountId_ =
    AccountsContainersTriggersDelete'
    { _actdContainerId = pActdContainerId_
    , _actdTriggerId = pActdTriggerId_
    , _actdAccountId = pActdAccountId_
    }

-- | The GTM Container ID.
actdContainerId :: Lens' AccountsContainersTriggersDelete' Text
actdContainerId
  = lens _actdContainerId
      (\ s a -> s{_actdContainerId = a})

-- | The GTM Trigger ID.
actdTriggerId :: Lens' AccountsContainersTriggersDelete' Text
actdTriggerId
  = lens _actdTriggerId
      (\ s a -> s{_actdTriggerId = a})

-- | The GTM Account ID.
actdAccountId :: Lens' AccountsContainersTriggersDelete' Text
actdAccountId
  = lens _actdAccountId
      (\ s a -> s{_actdAccountId = a})

instance GoogleRequest
         AccountsContainersTriggersDelete' where
        type Rs AccountsContainersTriggersDelete' = ()
        requestClient AccountsContainersTriggersDelete'{..}
          = go _actdAccountId _actdContainerId _actdTriggerId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersDeleteResource)
                      mempty
