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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Get
    (
    -- * REST Resource
      AccountsContainersGetResource

    -- * Creating a Request
    , accountsContainersGet
    , AccountsContainersGet

    -- * Request Lenses
    , acgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.get@ method which the
-- 'AccountsContainersGet' request conforms to.
type AccountsContainersGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Container

-- | Gets a Container.
--
-- /See:/ 'accountsContainersGet' smart constructor.
newtype AccountsContainersGet =
  AccountsContainersGet'
    { _acgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgPath'
accountsContainersGet
    :: Text -- ^ 'acgPath'
    -> AccountsContainersGet
accountsContainersGet pAcgPath_ = AccountsContainersGet' {_acgPath = pAcgPath_}

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acgPath :: Lens' AccountsContainersGet Text
acgPath = lens _acgPath (\ s a -> s{_acgPath = a})

instance GoogleRequest AccountsContainersGet where
        type Rs AccountsContainersGet = Container
        type Scopes AccountsContainersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersGet'{..}
          = go _acgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersGetResource)
                      mempty
