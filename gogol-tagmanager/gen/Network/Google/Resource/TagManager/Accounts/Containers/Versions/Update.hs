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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateResource

    -- * Creating a Request
    , accountsContainersVersionsUpdate
    , AccountsContainersVersionsUpdate

    -- * Request Lenses
    , acccContainerId
    , acccFingerprint
    , acccContainerVersionId
    , acccPayload
    , acccAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.update@ method which the
-- 'AccountsContainersVersionsUpdate' request conforms to.
type AccountsContainersVersionsUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ContainerVersion :>
                           Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate' smart constructor.
data AccountsContainersVersionsUpdate = AccountsContainersVersionsUpdate
    { _acccContainerId        :: !Text
    , _acccFingerprint        :: !(Maybe Text)
    , _acccContainerVersionId :: !Text
    , _acccPayload            :: !ContainerVersion
    , _acccAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccContainerId'
--
-- * 'acccFingerprint'
--
-- * 'acccContainerVersionId'
--
-- * 'acccPayload'
--
-- * 'acccAccountId'
accountsContainersVersionsUpdate
    :: Text -- ^ 'acccContainerId'
    -> Text -- ^ 'acccContainerVersionId'
    -> ContainerVersion -- ^ 'acccPayload'
    -> Text -- ^ 'acccAccountId'
    -> AccountsContainersVersionsUpdate
accountsContainersVersionsUpdate pAcccContainerId_ pAcccContainerVersionId_ pAcccPayload_ pAcccAccountId_ =
    AccountsContainersVersionsUpdate
    { _acccContainerId = pAcccContainerId_
    , _acccFingerprint = Nothing
    , _acccContainerVersionId = pAcccContainerVersionId_
    , _acccPayload = pAcccPayload_
    , _acccAccountId = pAcccAccountId_
    }

-- | The GTM Container ID.
acccContainerId :: Lens' AccountsContainersVersionsUpdate Text
acccContainerId
  = lens _acccContainerId
      (\ s a -> s{_acccContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acccFingerprint :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acccFingerprint
  = lens _acccFingerprint
      (\ s a -> s{_acccFingerprint = a})

-- | The GTM Container Version ID.
acccContainerVersionId :: Lens' AccountsContainersVersionsUpdate Text
acccContainerVersionId
  = lens _acccContainerVersionId
      (\ s a -> s{_acccContainerVersionId = a})

-- | Multipart request metadata.
acccPayload :: Lens' AccountsContainersVersionsUpdate ContainerVersion
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | The GTM Account ID.
acccAccountId :: Lens' AccountsContainersVersionsUpdate Text
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsUpdate where
        type Rs AccountsContainersVersionsUpdate =
             ContainerVersion
        requestClient AccountsContainersVersionsUpdate{..}
          = go _acccAccountId _acccContainerId
              _acccContainerVersionId
              _acccFingerprint
              (Just AltJSON)
              _acccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUpdateResource)
                      mempty
