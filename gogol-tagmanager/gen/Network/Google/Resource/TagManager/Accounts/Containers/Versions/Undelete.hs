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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.undelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
    (
    -- * REST Resource
      AccountsContainersVersionsUndeleteResource

    -- * Creating a Request
    , accountsContainersVersionsUndelete'
    , AccountsContainersVersionsUndelete'

    -- * Request Lenses
    , acvuContainerId
    , acvuContainerVersionId
    , acvuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.undelete@ method which the
-- 'AccountsContainersVersionsUndelete'' request conforms to.
type AccountsContainersVersionsUndeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 "undelete" :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsUndelete'' smart constructor.
data AccountsContainersVersionsUndelete' = AccountsContainersVersionsUndelete'
    { _acvuContainerId        :: !Text
    , _acvuContainerVersionId :: !Text
    , _acvuAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvuContainerId'
--
-- * 'acvuContainerVersionId'
--
-- * 'acvuAccountId'
accountsContainersVersionsUndelete'
    :: Text -- ^ 'acvuContainerId'
    -> Text -- ^ 'acvuContainerVersionId'
    -> Text -- ^ 'acvuAccountId'
    -> AccountsContainersVersionsUndelete'
accountsContainersVersionsUndelete' pAcvuContainerId_ pAcvuContainerVersionId_ pAcvuAccountId_ =
    AccountsContainersVersionsUndelete'
    { _acvuContainerId = pAcvuContainerId_
    , _acvuContainerVersionId = pAcvuContainerVersionId_
    , _acvuAccountId = pAcvuAccountId_
    }

-- | The GTM Container ID.
acvuContainerId :: Lens' AccountsContainersVersionsUndelete' Text
acvuContainerId
  = lens _acvuContainerId
      (\ s a -> s{_acvuContainerId = a})

-- | The GTM Container Version ID.
acvuContainerVersionId :: Lens' AccountsContainersVersionsUndelete' Text
acvuContainerVersionId
  = lens _acvuContainerVersionId
      (\ s a -> s{_acvuContainerVersionId = a})

-- | The GTM Account ID.
acvuAccountId :: Lens' AccountsContainersVersionsUndelete' Text
acvuAccountId
  = lens _acvuAccountId
      (\ s a -> s{_acvuAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsUndelete' where
        type Rs AccountsContainersVersionsUndelete' =
             ContainerVersion
        requestClient AccountsContainersVersionsUndelete'{..}
          = go _acvuAccountId _acvuContainerId
              _acvuContainerVersionId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteResource)
                      mempty
