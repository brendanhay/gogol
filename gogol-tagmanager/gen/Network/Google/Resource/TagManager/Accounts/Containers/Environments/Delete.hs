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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
    (
    -- * REST Resource
      AccountsContainersEnvironmentsDeleteResource

    -- * Creating a Request
    , accountsContainersEnvironmentsDelete
    , AccountsContainersEnvironmentsDelete

    -- * Request Lenses
    , acedPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.delete@ method which the
-- 'AccountsContainersEnvironmentsDelete' request conforms to.
type AccountsContainersEnvironmentsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsDelete' smart constructor.
newtype AccountsContainersEnvironmentsDelete =
  AccountsContainersEnvironmentsDelete'
    { _acedPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acedPath'
accountsContainersEnvironmentsDelete
    :: Text -- ^ 'acedPath'
    -> AccountsContainersEnvironmentsDelete
accountsContainersEnvironmentsDelete pAcedPath_ =
  AccountsContainersEnvironmentsDelete' {_acedPath = pAcedPath_}


-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acedPath :: Lens' AccountsContainersEnvironmentsDelete Text
acedPath = lens _acedPath (\ s a -> s{_acedPath = a})

instance GoogleRequest
           AccountsContainersEnvironmentsDelete
         where
        type Rs AccountsContainersEnvironmentsDelete = ()
        type Scopes AccountsContainersEnvironmentsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsDelete'{..}
          = go _acedPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsDeleteResource)
                      mempty
