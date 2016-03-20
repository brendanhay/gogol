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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a Container Version. This will overwrite the container\'s
-- current configuration (including its variables, triggers and tags). The
-- operation will not have any effect on the version that is being served
-- (i.e. the published version).
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.restore@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore
    (
    -- * REST Resource
      AccountsContainersVersionsRestoreResource

    -- * Creating a Request
    , accountsContainersVersionsRestore
    , AccountsContainersVersionsRestore

    -- * Request Lenses
    , acvrContainerId
    , acvrContainerVersionId
    , acvrAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.restore@ method which the
-- 'AccountsContainersVersionsRestore' request conforms to.
type AccountsContainersVersionsRestoreResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     "restore" :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ContainerVersion

-- | Restores a Container Version. This will overwrite the container\'s
-- current configuration (including its variables, triggers and tags). The
-- operation will not have any effect on the version that is being served
-- (i.e. the published version).
--
-- /See:/ 'accountsContainersVersionsRestore' smart constructor.
data AccountsContainersVersionsRestore = AccountsContainersVersionsRestore
    { _acvrContainerId        :: !Text
    , _acvrContainerVersionId :: !Text
    , _acvrAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvrContainerId'
--
-- * 'acvrContainerVersionId'
--
-- * 'acvrAccountId'
accountsContainersVersionsRestore
    :: Text -- ^ 'acvrContainerId'
    -> Text -- ^ 'acvrContainerVersionId'
    -> Text -- ^ 'acvrAccountId'
    -> AccountsContainersVersionsRestore
accountsContainersVersionsRestore pAcvrContainerId_ pAcvrContainerVersionId_ pAcvrAccountId_ =
    AccountsContainersVersionsRestore
    { _acvrContainerId = pAcvrContainerId_
    , _acvrContainerVersionId = pAcvrContainerVersionId_
    , _acvrAccountId = pAcvrAccountId_
    }

-- | The GTM Container ID.
acvrContainerId :: Lens' AccountsContainersVersionsRestore Text
acvrContainerId
  = lens _acvrContainerId
      (\ s a -> s{_acvrContainerId = a})

-- | The GTM Container Version ID.
acvrContainerVersionId :: Lens' AccountsContainersVersionsRestore Text
acvrContainerVersionId
  = lens _acvrContainerVersionId
      (\ s a -> s{_acvrContainerVersionId = a})

-- | The GTM Account ID.
acvrAccountId :: Lens' AccountsContainersVersionsRestore Text
acvrAccountId
  = lens _acvrAccountId
      (\ s a -> s{_acvrAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsRestore where
        type Rs AccountsContainersVersionsRestore =
             ContainerVersion
        requestClient AccountsContainersVersionsRestore{..}
          = go _acvrAccountId _acvrContainerId
              _acvrContainerVersionId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsRestoreResource)
                      mempty
