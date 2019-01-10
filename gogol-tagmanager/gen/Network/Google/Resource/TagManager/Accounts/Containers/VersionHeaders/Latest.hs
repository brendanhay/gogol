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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest container version header
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.version_headers.latest@.
module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest
    (
    -- * REST Resource
      AccountsContainersVersionHeadersLatestResource

    -- * Creating a Request
    , accountsContainersVersionHeadersLatest
    , AccountsContainersVersionHeadersLatest

    -- * Request Lenses
    , acvhlParent
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.version_headers.latest@ method which the
-- 'AccountsContainersVersionHeadersLatest' request conforms to.
type AccountsContainersVersionHeadersLatestResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "version_headers:latest" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ContainerVersionHeader

-- | Gets the latest container version header
--
-- /See:/ 'accountsContainersVersionHeadersLatest' smart constructor.
newtype AccountsContainersVersionHeadersLatest = AccountsContainersVersionHeadersLatest'
    { _acvhlParent :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionHeadersLatest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvhlParent'
accountsContainersVersionHeadersLatest
    :: Text -- ^ 'acvhlParent'
    -> AccountsContainersVersionHeadersLatest
accountsContainersVersionHeadersLatest pAcvhlParent_ =
    AccountsContainersVersionHeadersLatest'
    { _acvhlParent = pAcvhlParent_
    }

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acvhlParent :: Lens' AccountsContainersVersionHeadersLatest Text
acvhlParent
  = lens _acvhlParent (\ s a -> s{_acvhlParent = a})

instance GoogleRequest
         AccountsContainersVersionHeadersLatest where
        type Rs AccountsContainersVersionHeadersLatest =
             ContainerVersionHeader
        type Scopes AccountsContainersVersionHeadersLatest =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersVersionHeadersLatest'{..}
          = go _acvhlParent (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionHeadersLatestResource)
                      mempty
