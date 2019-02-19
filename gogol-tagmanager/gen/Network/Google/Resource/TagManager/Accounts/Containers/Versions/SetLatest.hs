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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the latest version used for synchronization of workspaces when
-- detecting conflicts and errors.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.set_latest@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest
    (
    -- * REST Resource
      AccountsContainersVersionsSetLatestResource

    -- * Creating a Request
    , accountsContainersVersionsSetLatest
    , AccountsContainersVersionsSetLatest

    -- * Request Lenses
    , acvslPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.set_latest@ method which the
-- 'AccountsContainersVersionsSetLatest' request conforms to.
type AccountsContainersVersionsSetLatestResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "set_latest" Text :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] ContainerVersion

-- | Sets the latest version used for synchronization of workspaces when
-- detecting conflicts and errors.
--
-- /See:/ 'accountsContainersVersionsSetLatest' smart constructor.
newtype AccountsContainersVersionsSetLatest =
  AccountsContainersVersionsSetLatest'
    { _acvslPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsSetLatest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvslPath'
accountsContainersVersionsSetLatest
    :: Text -- ^ 'acvslPath'
    -> AccountsContainersVersionsSetLatest
accountsContainersVersionsSetLatest pAcvslPath_ =
  AccountsContainersVersionsSetLatest' {_acvslPath = pAcvslPath_}


-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvslPath :: Lens' AccountsContainersVersionsSetLatest Text
acvslPath
  = lens _acvslPath (\ s a -> s{_acvslPath = a})

instance GoogleRequest
           AccountsContainersVersionsSetLatest
         where
        type Rs AccountsContainersVersionsSetLatest =
             ContainerVersion
        type Scopes AccountsContainersVersionsSetLatest =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersVersionsSetLatest'{..}
          = go _acvslPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsSetLatestResource)
                      mempty
