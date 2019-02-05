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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
    (
    -- * REST Resource
      AccountsContainersEnvironmentsGetResource

    -- * Creating a Request
    , accountsContainersEnvironmentsGet
    , AccountsContainersEnvironmentsGet

    -- * Request Lenses
    , acegPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.get@ method which the
-- 'AccountsContainersEnvironmentsGet' request conforms to.
type AccountsContainersEnvironmentsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Environment

-- | Gets a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsGet' smart constructor.
newtype AccountsContainersEnvironmentsGet = AccountsContainersEnvironmentsGet'
    { _acegPath :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acegPath'
accountsContainersEnvironmentsGet
    :: Text -- ^ 'acegPath'
    -> AccountsContainersEnvironmentsGet
accountsContainersEnvironmentsGet pAcegPath_ =
    AccountsContainersEnvironmentsGet'
    { _acegPath = pAcegPath_
    }

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acegPath :: Lens' AccountsContainersEnvironmentsGet Text
acegPath = lens _acegPath (\ s a -> s{_acegPath = a})

instance GoogleRequest
         AccountsContainersEnvironmentsGet where
        type Rs AccountsContainersEnvironmentsGet =
             Environment
        type Scopes AccountsContainersEnvironmentsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersEnvironmentsGet'{..}
          = go _acegPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsGetResource)
                      mempty
