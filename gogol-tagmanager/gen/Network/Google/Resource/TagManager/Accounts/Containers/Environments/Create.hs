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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
    (
    -- * REST Resource
      AccountsContainersEnvironmentsCreateResource

    -- * Creating a Request
    , accountsContainersEnvironmentsCreate
    , AccountsContainersEnvironmentsCreate

    -- * Request Lenses
    , acecContainerId
    , acecPayload
    , acecAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.create@ method which the
-- 'AccountsContainersEnvironmentsCreate' request conforms to.
type AccountsContainersEnvironmentsCreateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "environments" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Environment :>
                       Post '[JSON] Environment

-- | Creates a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsCreate' smart constructor.
data AccountsContainersEnvironmentsCreate = AccountsContainersEnvironmentsCreate
    { _acecContainerId :: !Text
    , _acecPayload     :: !Environment
    , _acecAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acecContainerId'
--
-- * 'acecPayload'
--
-- * 'acecAccountId'
accountsContainersEnvironmentsCreate
    :: Text -- ^ 'acecContainerId'
    -> Environment -- ^ 'acecPayload'
    -> Text -- ^ 'acecAccountId'
    -> AccountsContainersEnvironmentsCreate
accountsContainersEnvironmentsCreate pAcecContainerId_ pAcecPayload_ pAcecAccountId_ =
    AccountsContainersEnvironmentsCreate
    { _acecContainerId = pAcecContainerId_
    , _acecPayload = pAcecPayload_
    , _acecAccountId = pAcecAccountId_
    }

-- | The GTM Container ID.
acecContainerId :: Lens' AccountsContainersEnvironmentsCreate Text
acecContainerId
  = lens _acecContainerId
      (\ s a -> s{_acecContainerId = a})

-- | Multipart request metadata.
acecPayload :: Lens' AccountsContainersEnvironmentsCreate Environment
acecPayload
  = lens _acecPayload (\ s a -> s{_acecPayload = a})

-- | The GTM Account ID.
acecAccountId :: Lens' AccountsContainersEnvironmentsCreate Text
acecAccountId
  = lens _acecAccountId
      (\ s a -> s{_acecAccountId = a})

instance GoogleRequest
         AccountsContainersEnvironmentsCreate where
        type Rs AccountsContainersEnvironmentsCreate =
             Environment
        requestClient
          AccountsContainersEnvironmentsCreate{..}
          = go _acecAccountId _acecContainerId (Just AltJSON)
              _acecPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsCreateResource)
                      mempty
