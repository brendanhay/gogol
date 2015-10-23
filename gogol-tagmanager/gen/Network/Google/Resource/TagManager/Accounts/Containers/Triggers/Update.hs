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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersTriggersUpdateResource

    -- * Creating a Request
    , accountsContainersTriggersUpdate
    , AccountsContainersTriggersUpdate

    -- * Request Lenses
    , actuContainerId
    , actuTriggerId
    , actuFingerprint
    , actuPayload
    , actuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.triggers.update@ method which the
-- 'AccountsContainersTriggersUpdate' request conforms to.
type AccountsContainersTriggersUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "triggers" :>
                   Capture "triggerId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Trigger :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersUpdate' smart constructor.
data AccountsContainersTriggersUpdate = AccountsContainersTriggersUpdate
    { _actuContainerId :: !Text
    , _actuTriggerId   :: !Text
    , _actuFingerprint :: !(Maybe Text)
    , _actuPayload     :: !Trigger
    , _actuAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actuContainerId'
--
-- * 'actuTriggerId'
--
-- * 'actuFingerprint'
--
-- * 'actuPayload'
--
-- * 'actuAccountId'
accountsContainersTriggersUpdate
    :: Text -- ^ 'actuContainerId'
    -> Text -- ^ 'actuTriggerId'
    -> Trigger -- ^ 'actuPayload'
    -> Text -- ^ 'actuAccountId'
    -> AccountsContainersTriggersUpdate
accountsContainersTriggersUpdate pActuContainerId_ pActuTriggerId_ pActuPayload_ pActuAccountId_ =
    AccountsContainersTriggersUpdate
    { _actuContainerId = pActuContainerId_
    , _actuTriggerId = pActuTriggerId_
    , _actuFingerprint = Nothing
    , _actuPayload = pActuPayload_
    , _actuAccountId = pActuAccountId_
    }

-- | The GTM Container ID.
actuContainerId :: Lens' AccountsContainersTriggersUpdate Text
actuContainerId
  = lens _actuContainerId
      (\ s a -> s{_actuContainerId = a})

-- | The GTM Trigger ID.
actuTriggerId :: Lens' AccountsContainersTriggersUpdate Text
actuTriggerId
  = lens _actuTriggerId
      (\ s a -> s{_actuTriggerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
actuFingerprint :: Lens' AccountsContainersTriggersUpdate (Maybe Text)
actuFingerprint
  = lens _actuFingerprint
      (\ s a -> s{_actuFingerprint = a})

-- | Multipart request metadata.
actuPayload :: Lens' AccountsContainersTriggersUpdate Trigger
actuPayload
  = lens _actuPayload (\ s a -> s{_actuPayload = a})

-- | The GTM Account ID.
actuAccountId :: Lens' AccountsContainersTriggersUpdate Text
actuAccountId
  = lens _actuAccountId
      (\ s a -> s{_actuAccountId = a})

instance GoogleRequest
         AccountsContainersTriggersUpdate where
        type Rs AccountsContainersTriggersUpdate = Trigger
        requestClient AccountsContainersTriggersUpdate{..}
          = go _actuAccountId _actuContainerId _actuTriggerId
              _actuFingerprint
              (Just AltJSON)
              _actuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersTriggersUpdateResource)
                      mempty
