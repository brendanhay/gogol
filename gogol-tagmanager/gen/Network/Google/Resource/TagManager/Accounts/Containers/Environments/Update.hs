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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
    (
    -- * REST Resource
      AccountsContainersEnvironmentsUpdateResource

    -- * Creating a Request
    , accountsContainersEnvironmentsUpdate
    , AccountsContainersEnvironmentsUpdate

    -- * Request Lenses
    , aceuContainerId
    , aceuFingerprint
    , aceuPayload
    , aceuAccountId
    , aceuEnvironmentId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.update@ method which the
-- 'AccountsContainersEnvironmentsUpdate' request conforms to.
type AccountsContainersEnvironmentsUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "environments" :>
                   Capture "environmentId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Environment :>
                           Put '[JSON] Environment

-- | Updates a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsUpdate' smart constructor.
data AccountsContainersEnvironmentsUpdate = AccountsContainersEnvironmentsUpdate
    { _aceuContainerId   :: !Text
    , _aceuFingerprint   :: !(Maybe Text)
    , _aceuPayload       :: !Environment
    , _aceuAccountId     :: !Text
    , _aceuEnvironmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aceuContainerId'
--
-- * 'aceuFingerprint'
--
-- * 'aceuPayload'
--
-- * 'aceuAccountId'
--
-- * 'aceuEnvironmentId'
accountsContainersEnvironmentsUpdate
    :: Text -- ^ 'aceuContainerId'
    -> Environment -- ^ 'aceuPayload'
    -> Text -- ^ 'aceuAccountId'
    -> Text -- ^ 'aceuEnvironmentId'
    -> AccountsContainersEnvironmentsUpdate
accountsContainersEnvironmentsUpdate pAceuContainerId_ pAceuPayload_ pAceuAccountId_ pAceuEnvironmentId_ =
    AccountsContainersEnvironmentsUpdate
    { _aceuContainerId = pAceuContainerId_
    , _aceuFingerprint = Nothing
    , _aceuPayload = pAceuPayload_
    , _aceuAccountId = pAceuAccountId_
    , _aceuEnvironmentId = pAceuEnvironmentId_
    }

-- | The GTM Container ID.
aceuContainerId :: Lens' AccountsContainersEnvironmentsUpdate Text
aceuContainerId
  = lens _aceuContainerId
      (\ s a -> s{_aceuContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- environment in storage.
aceuFingerprint :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuFingerprint
  = lens _aceuFingerprint
      (\ s a -> s{_aceuFingerprint = a})

-- | Multipart request metadata.
aceuPayload :: Lens' AccountsContainersEnvironmentsUpdate Environment
aceuPayload
  = lens _aceuPayload (\ s a -> s{_aceuPayload = a})

-- | The GTM Account ID.
aceuAccountId :: Lens' AccountsContainersEnvironmentsUpdate Text
aceuAccountId
  = lens _aceuAccountId
      (\ s a -> s{_aceuAccountId = a})

-- | The GTM Environment ID.
aceuEnvironmentId :: Lens' AccountsContainersEnvironmentsUpdate Text
aceuEnvironmentId
  = lens _aceuEnvironmentId
      (\ s a -> s{_aceuEnvironmentId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsUpdate where
        type Rs AccountsContainersEnvironmentsUpdate =
             Environment
        requestClient
          AccountsContainersEnvironmentsUpdate{..}
          = go _aceuAccountId _aceuContainerId
              _aceuEnvironmentId
              _aceuFingerprint
              (Just AltJSON)
              _aceuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsUpdateResource)
                      mempty
