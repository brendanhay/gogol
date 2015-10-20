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
-- Creates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersTriggersCreateResource

    -- * Creating a Request
    , accountsContainersTriggersCreate
    , AccountsContainersTriggersCreate

    -- * Request Lenses
    , actcContainerId
    , actcPayload
    , actcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.triggers.create@ method which the
-- 'AccountsContainersTriggersCreate' request conforms to.
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
-- /See:/ 'accountsContainersTriggersCreate' smart constructor.
data AccountsContainersTriggersCreate = AccountsContainersTriggersCreate
    { _actcContainerId :: !Text
    , _actcPayload     :: !Trigger
    , _actcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actcContainerId'
--
-- * 'actcPayload'
--
-- * 'actcAccountId'
accountsContainersTriggersCreate
    :: Text -- ^ 'actcContainerId'
    -> Trigger -- ^ 'actcPayload'
    -> Text -- ^ 'actcAccountId'
    -> AccountsContainersTriggersCreate
accountsContainersTriggersCreate pActcContainerId_ pActcPayload_ pActcAccountId_ =
    AccountsContainersTriggersCreate
    { _actcContainerId = pActcContainerId_
    , _actcPayload = pActcPayload_
    , _actcAccountId = pActcAccountId_
    }

-- | The GTM Container ID.
actcContainerId :: Lens' AccountsContainersTriggersCreate Text
actcContainerId
  = lens _actcContainerId
      (\ s a -> s{_actcContainerId = a})

-- | Multipart request metadata.
actcPayload :: Lens' AccountsContainersTriggersCreate Trigger
actcPayload
  = lens _actcPayload (\ s a -> s{_actcPayload = a})

-- | The GTM Account ID.
actcAccountId :: Lens' AccountsContainersTriggersCreate Text
actcAccountId
  = lens _actcAccountId
      (\ s a -> s{_actcAccountId = a})

instance GoogleRequest
         AccountsContainersTriggersCreate where
        type Rs AccountsContainersTriggersCreate = Trigger
        requestClient AccountsContainersTriggersCreate{..}
          = go _actcAccountId _actcContainerId (Just AltJSON)
              _actcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersCreateResource)
                      mempty
