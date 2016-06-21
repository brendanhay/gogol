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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.patch@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch
    (
    -- * REST Resource
      AccountsContainersEnvironmentsPatchResource

    -- * Creating a Request
    , accountsContainersEnvironmentsPatch
    , AccountsContainersEnvironmentsPatch

    -- * Request Lenses
    , acepContainerId
    , acepFingerprint
    , acepPayload
    , acepAccountId
    , acepEnvironmentId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.patch@ method which the
-- 'AccountsContainersEnvironmentsPatch' request conforms to.
type AccountsContainersEnvironmentsPatchResource =
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
                           Patch '[JSON] Environment

-- | Updates a GTM Environment. This method supports patch semantics.
--
-- /See:/ 'accountsContainersEnvironmentsPatch' smart constructor.
data AccountsContainersEnvironmentsPatch = AccountsContainersEnvironmentsPatch'
    { _acepContainerId   :: !Text
    , _acepFingerprint   :: !(Maybe Text)
    , _acepPayload       :: !Environment
    , _acepAccountId     :: !Text
    , _acepEnvironmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acepContainerId'
--
-- * 'acepFingerprint'
--
-- * 'acepPayload'
--
-- * 'acepAccountId'
--
-- * 'acepEnvironmentId'
accountsContainersEnvironmentsPatch
    :: Text -- ^ 'acepContainerId'
    -> Environment -- ^ 'acepPayload'
    -> Text -- ^ 'acepAccountId'
    -> Text -- ^ 'acepEnvironmentId'
    -> AccountsContainersEnvironmentsPatch
accountsContainersEnvironmentsPatch pAcepContainerId_ pAcepPayload_ pAcepAccountId_ pAcepEnvironmentId_ =
    AccountsContainersEnvironmentsPatch'
    { _acepContainerId = pAcepContainerId_
    , _acepFingerprint = Nothing
    , _acepPayload = pAcepPayload_
    , _acepAccountId = pAcepAccountId_
    , _acepEnvironmentId = pAcepEnvironmentId_
    }

-- | The GTM Container ID.
acepContainerId :: Lens' AccountsContainersEnvironmentsPatch Text
acepContainerId
  = lens _acepContainerId
      (\ s a -> s{_acepContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- environment in storage.
acepFingerprint :: Lens' AccountsContainersEnvironmentsPatch (Maybe Text)
acepFingerprint
  = lens _acepFingerprint
      (\ s a -> s{_acepFingerprint = a})

-- | Multipart request metadata.
acepPayload :: Lens' AccountsContainersEnvironmentsPatch Environment
acepPayload
  = lens _acepPayload (\ s a -> s{_acepPayload = a})

-- | The GTM Account ID.
acepAccountId :: Lens' AccountsContainersEnvironmentsPatch Text
acepAccountId
  = lens _acepAccountId
      (\ s a -> s{_acepAccountId = a})

-- | The GTM Environment ID.
acepEnvironmentId :: Lens' AccountsContainersEnvironmentsPatch Text
acepEnvironmentId
  = lens _acepEnvironmentId
      (\ s a -> s{_acepEnvironmentId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsPatch where
        type Rs AccountsContainersEnvironmentsPatch =
             Environment
        type Scopes AccountsContainersEnvironmentsPatch =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsPatch'{..}
          = go _acepAccountId _acepContainerId
              _acepEnvironmentId
              _acepFingerprint
              (Just AltJSON)
              _acepPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsPatchResource)
                      mempty
