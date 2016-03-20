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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Environments of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
    (
    -- * REST Resource
      AccountsContainersEnvironmentsListResource

    -- * Creating a Request
    , accountsContainersEnvironmentsList
    , AccountsContainersEnvironmentsList

    -- * Request Lenses
    , acelContainerId
    , acelAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.list@ method which the
-- 'AccountsContainersEnvironmentsList' request conforms to.
type AccountsContainersEnvironmentsListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "environments" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListEnvironmentsResponse

-- | Lists all GTM Environments of a GTM Container.
--
-- /See:/ 'accountsContainersEnvironmentsList' smart constructor.
data AccountsContainersEnvironmentsList = AccountsContainersEnvironmentsList
    { _acelContainerId :: !Text
    , _acelAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acelContainerId'
--
-- * 'acelAccountId'
accountsContainersEnvironmentsList
    :: Text -- ^ 'acelContainerId'
    -> Text -- ^ 'acelAccountId'
    -> AccountsContainersEnvironmentsList
accountsContainersEnvironmentsList pAcelContainerId_ pAcelAccountId_ =
    AccountsContainersEnvironmentsList
    { _acelContainerId = pAcelContainerId_
    , _acelAccountId = pAcelAccountId_
    }

-- | The GTM Container ID.
acelContainerId :: Lens' AccountsContainersEnvironmentsList Text
acelContainerId
  = lens _acelContainerId
      (\ s a -> s{_acelContainerId = a})

-- | The GTM Account ID.
acelAccountId :: Lens' AccountsContainersEnvironmentsList Text
acelAccountId
  = lens _acelAccountId
      (\ s a -> s{_acelAccountId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsList where
        type Rs AccountsContainersEnvironmentsList =
             ListEnvironmentsResponse
        requestClient AccountsContainersEnvironmentsList{..}
          = go _acelAccountId _acelContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsListResource)
                      mempty
