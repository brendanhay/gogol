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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , accountsContainersVersionsUndelete
    , AccountsContainersVersionsUndelete

    -- * Request Lenses
    , acvucContainerId
    , acvucContainerVersionId
    , acvucAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.undelete@ method which the
-- 'AccountsContainersVersionsUndelete' request conforms to.
type AccountsContainersVersionsUndeleteResource =
     "tagmanager" :>
       "v1" :>
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
-- /See:/ 'accountsContainersVersionsUndelete' smart constructor.
data AccountsContainersVersionsUndelete = AccountsContainersVersionsUndelete'
    { _acvucContainerId        :: !Text
    , _acvucContainerVersionId :: !Text
    , _acvucAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvucContainerId'
--
-- * 'acvucContainerVersionId'
--
-- * 'acvucAccountId'
accountsContainersVersionsUndelete
    :: Text -- ^ 'acvucContainerId'
    -> Text -- ^ 'acvucContainerVersionId'
    -> Text -- ^ 'acvucAccountId'
    -> AccountsContainersVersionsUndelete
accountsContainersVersionsUndelete pAcvucContainerId_ pAcvucContainerVersionId_ pAcvucAccountId_ =
    AccountsContainersVersionsUndelete'
    { _acvucContainerId = pAcvucContainerId_
    , _acvucContainerVersionId = pAcvucContainerVersionId_
    , _acvucAccountId = pAcvucAccountId_
    }

-- | The GTM Container ID.
acvucContainerId :: Lens' AccountsContainersVersionsUndelete Text
acvucContainerId
  = lens _acvucContainerId
      (\ s a -> s{_acvucContainerId = a})

-- | The GTM Container Version ID.
acvucContainerVersionId :: Lens' AccountsContainersVersionsUndelete Text
acvucContainerVersionId
  = lens _acvucContainerVersionId
      (\ s a -> s{_acvucContainerVersionId = a})

-- | The GTM Account ID.
acvucAccountId :: Lens' AccountsContainersVersionsUndelete Text
acvucAccountId
  = lens _acvucAccountId
      (\ s a -> s{_acvucAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsUndelete where
        type Rs AccountsContainersVersionsUndelete =
             ContainerVersion
        type Scopes AccountsContainersVersionsUndelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient AccountsContainersVersionsUndelete'{..}
          = go _acvucAccountId _acvucContainerId
              _acvucContainerVersionId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteResource)
                      mempty
