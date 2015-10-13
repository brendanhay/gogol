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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersTriggersCreateResource

    -- * Creating a Request
    , accountsContainersTriggersCreate'
    , AccountsContainersTriggersCreate'

    -- * Request Lenses
    , actccContainerId
    , actccPayload
    , actccAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersCreate@ method which the
-- 'AccountsContainersTriggersCreate'' request conforms to.
type AccountsContainersTriggersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Trigger :> Post '[JSON] Trigger

-- | Creates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersCreate'' smart constructor.
data AccountsContainersTriggersCreate' = AccountsContainersTriggersCreate'
    { _actccContainerId :: !Text
    , _actccPayload     :: !Trigger
    , _actccAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actccContainerId'
--
-- * 'actccPayload'
--
-- * 'actccAccountId'
accountsContainersTriggersCreate'
    :: Text -- ^ 'containerId'
    -> Trigger -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersCreate'
accountsContainersTriggersCreate' pActccContainerId_ pActccPayload_ pActccAccountId_ =
    AccountsContainersTriggersCreate'
    { _actccContainerId = pActccContainerId_
    , _actccPayload = pActccPayload_
    , _actccAccountId = pActccAccountId_
    }

-- | The GTM Container ID.
actccContainerId :: Lens' AccountsContainersTriggersCreate' Text
actccContainerId
  = lens _actccContainerId
      (\ s a -> s{_actccContainerId = a})

-- | Multipart request metadata.
actccPayload :: Lens' AccountsContainersTriggersCreate' Trigger
actccPayload
  = lens _actccPayload (\ s a -> s{_actccPayload = a})

-- | The GTM Account ID.
actccAccountId :: Lens' AccountsContainersTriggersCreate' Text
actccAccountId
  = lens _actccAccountId
      (\ s a -> s{_actccAccountId = a})

instance GoogleRequest
         AccountsContainersTriggersCreate' where
        type Rs AccountsContainersTriggersCreate' = Trigger
        requestClient AccountsContainersTriggersCreate'{..}
          = go _actccAccountId _actccContainerId (Just AltJSON)
              _actccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersCreateResource)
                      mempty
