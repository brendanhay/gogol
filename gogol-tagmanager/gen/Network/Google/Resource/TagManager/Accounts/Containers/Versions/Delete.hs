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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
    (
    -- * REST Resource
      AccountsContainersVersionsDeleteResource

    -- * Creating a Request
    , accountsContainersVersionsDelete
    , AccountsContainersVersionsDelete

    -- * Request Lenses
    , acvdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.delete@ method which the
-- 'AccountsContainersVersionsDelete' request conforms to.
type AccountsContainersVersionsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsDelete' smart constructor.
newtype AccountsContainersVersionsDelete =
  AccountsContainersVersionsDelete'
    { _acvdPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdPath'
accountsContainersVersionsDelete
    :: Text -- ^ 'acvdPath'
    -> AccountsContainersVersionsDelete
accountsContainersVersionsDelete pAcvdPath_ =
  AccountsContainersVersionsDelete' {_acvdPath = pAcvdPath_}

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvdPath :: Lens' AccountsContainersVersionsDelete Text
acvdPath = lens _acvdPath (\ s a -> s{_acvdPath = a})

instance GoogleRequest
           AccountsContainersVersionsDelete
         where
        type Rs AccountsContainersVersionsDelete = ()
        type Scopes AccountsContainersVersionsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient AccountsContainersVersionsDelete'{..}
          = go _acvdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsDeleteResource)
                      mempty
