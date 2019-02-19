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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the live (i.e. published) container version
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.live@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live
    (
    -- * REST Resource
      AccountsContainersVersionsLiveResource

    -- * Creating a Request
    , accountsContainersVersionsLive
    , AccountsContainersVersionsLive

    -- * Request Lenses
    , acvlParent
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.live@ method which the
-- 'AccountsContainersVersionsLive' request conforms to.
type AccountsContainersVersionsLiveResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "versions:live" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ContainerVersion

-- | Gets the live (i.e. published) container version
--
-- /See:/ 'accountsContainersVersionsLive' smart constructor.
newtype AccountsContainersVersionsLive =
  AccountsContainersVersionsLive'
    { _acvlParent :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersVersionsLive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlParent'
accountsContainersVersionsLive
    :: Text -- ^ 'acvlParent'
    -> AccountsContainersVersionsLive
accountsContainersVersionsLive pAcvlParent_ =
  AccountsContainersVersionsLive' {_acvlParent = pAcvlParent_}

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acvlParent :: Lens' AccountsContainersVersionsLive Text
acvlParent
  = lens _acvlParent (\ s a -> s{_acvlParent = a})

instance GoogleRequest AccountsContainersVersionsLive
         where
        type Rs AccountsContainersVersionsLive =
             ContainerVersion
        type Scopes AccountsContainersVersionsLive =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersVersionsLive'{..}
          = go _acvlParent (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsLiveResource)
                      mempty
