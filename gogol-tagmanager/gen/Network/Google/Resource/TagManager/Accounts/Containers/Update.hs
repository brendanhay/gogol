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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Update
    (
    -- * REST Resource
      AccountsContainersUpdateResource

    -- * Creating a Request
    , accountsContainersUpdate'
    , AccountsContainersUpdate'

    -- * Request Lenses
    , acuContainerId
    , acuFingerprint
    , acuPayload
    , acuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.update@ method which the
-- 'AccountsContainersUpdate'' request conforms to.
type AccountsContainersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "fingerprint" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Container :> Put '[JSON] Container

-- | Updates a Container.
--
-- /See:/ 'accountsContainersUpdate'' smart constructor.
data AccountsContainersUpdate' = AccountsContainersUpdate'
    { _acuContainerId :: !Text
    , _acuFingerprint :: !(Maybe Text)
    , _acuPayload     :: !Container
    , _acuAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuContainerId'
--
-- * 'acuFingerprint'
--
-- * 'acuPayload'
--
-- * 'acuAccountId'
accountsContainersUpdate'
    :: Text -- ^ 'acuContainerId'
    -> Container -- ^ 'acuPayload'
    -> Text -- ^ 'acuAccountId'
    -> AccountsContainersUpdate'
accountsContainersUpdate' pAcuContainerId_ pAcuPayload_ pAcuAccountId_ =
    AccountsContainersUpdate'
    { _acuContainerId = pAcuContainerId_
    , _acuFingerprint = Nothing
    , _acuPayload = pAcuPayload_
    , _acuAccountId = pAcuAccountId_
    }

-- | The GTM Container ID.
acuContainerId :: Lens' AccountsContainersUpdate' Text
acuContainerId
  = lens _acuContainerId
      (\ s a -> s{_acuContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container in storage.
acuFingerprint :: Lens' AccountsContainersUpdate' (Maybe Text)
acuFingerprint
  = lens _acuFingerprint
      (\ s a -> s{_acuFingerprint = a})

-- | Multipart request metadata.
acuPayload :: Lens' AccountsContainersUpdate' Container
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

-- | The GTM Account ID.
acuAccountId :: Lens' AccountsContainersUpdate' Text
acuAccountId
  = lens _acuAccountId (\ s a -> s{_acuAccountId = a})

instance GoogleRequest AccountsContainersUpdate'
         where
        type Rs AccountsContainersUpdate' = Container
        requestClient AccountsContainersUpdate'{..}
          = go _acuAccountId _acuContainerId _acuFingerprint
              (Just AltJSON)
              _acuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersUpdateResource)
                      mempty
