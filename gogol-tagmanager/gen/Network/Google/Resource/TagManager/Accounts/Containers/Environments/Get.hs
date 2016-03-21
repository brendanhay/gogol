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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
    (
    -- * REST Resource
      AccountsContainersEnvironmentsGetResource

    -- * Creating a Request
    , accountsContainersEnvironmentsGet
    , AccountsContainersEnvironmentsGet

    -- * Request Lenses
    , acegContainerId
    , acegAccountId
    , acegEnvironmentId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.get@ method which the
-- 'AccountsContainersEnvironmentsGet' request conforms to.
type AccountsContainersEnvironmentsGetResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "environments" :>
                   Capture "environmentId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Environment

-- | Gets a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsGet' smart constructor.
data AccountsContainersEnvironmentsGet = AccountsContainersEnvironmentsGet'
    { _acegContainerId   :: !Text
    , _acegAccountId     :: !Text
    , _acegEnvironmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acegContainerId'
--
-- * 'acegAccountId'
--
-- * 'acegEnvironmentId'
accountsContainersEnvironmentsGet
    :: Text -- ^ 'acegContainerId'
    -> Text -- ^ 'acegAccountId'
    -> Text -- ^ 'acegEnvironmentId'
    -> AccountsContainersEnvironmentsGet
accountsContainersEnvironmentsGet pAcegContainerId_ pAcegAccountId_ pAcegEnvironmentId_ =
    AccountsContainersEnvironmentsGet'
    { _acegContainerId = pAcegContainerId_
    , _acegAccountId = pAcegAccountId_
    , _acegEnvironmentId = pAcegEnvironmentId_
    }

-- | The GTM Container ID.
acegContainerId :: Lens' AccountsContainersEnvironmentsGet Text
acegContainerId
  = lens _acegContainerId
      (\ s a -> s{_acegContainerId = a})

-- | The GTM Account ID.
acegAccountId :: Lens' AccountsContainersEnvironmentsGet Text
acegAccountId
  = lens _acegAccountId
      (\ s a -> s{_acegAccountId = a})

-- | The GTM Environment ID.
acegEnvironmentId :: Lens' AccountsContainersEnvironmentsGet Text
acegEnvironmentId
  = lens _acegEnvironmentId
      (\ s a -> s{_acegEnvironmentId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsGet where
        type Rs AccountsContainersEnvironmentsGet =
             Environment
        type Scopes AccountsContainersEnvironmentsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersEnvironmentsGet'{..}
          = go _acegAccountId _acegContainerId
              _acegEnvironmentId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsGetResource)
                      mempty
