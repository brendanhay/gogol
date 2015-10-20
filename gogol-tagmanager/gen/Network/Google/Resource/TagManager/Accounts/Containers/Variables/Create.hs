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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateResource

    -- * Creating a Request
    , accountsContainersVariablesCreate
    , AccountsContainersVariablesCreate

    -- * Request Lenses
    , acvcContainerId
    , acvcPayload
    , acvcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.create@ method which the
-- 'AccountsContainersVariablesCreate' request conforms to.
type AccountsContainersVariablesCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Variable :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesCreate' smart constructor.
data AccountsContainersVariablesCreate = AccountsContainersVariablesCreate
    { _acvcContainerId :: !Text
    , _acvcPayload     :: !Variable
    , _acvcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvcContainerId'
--
-- * 'acvcPayload'
--
-- * 'acvcAccountId'
accountsContainersVariablesCreate
    :: Text -- ^ 'acvcContainerId'
    -> Variable -- ^ 'acvcPayload'
    -> Text -- ^ 'acvcAccountId'
    -> AccountsContainersVariablesCreate
accountsContainersVariablesCreate pAcvcContainerId_ pAcvcPayload_ pAcvcAccountId_ =
    AccountsContainersVariablesCreate
    { _acvcContainerId = pAcvcContainerId_
    , _acvcPayload = pAcvcPayload_
    , _acvcAccountId = pAcvcAccountId_
    }

-- | The GTM Container ID.
acvcContainerId :: Lens' AccountsContainersVariablesCreate Text
acvcContainerId
  = lens _acvcContainerId
      (\ s a -> s{_acvcContainerId = a})

-- | Multipart request metadata.
acvcPayload :: Lens' AccountsContainersVariablesCreate Variable
acvcPayload
  = lens _acvcPayload (\ s a -> s{_acvcPayload = a})

-- | The GTM Account ID.
acvcAccountId :: Lens' AccountsContainersVariablesCreate Text
acvcAccountId
  = lens _acvcAccountId
      (\ s a -> s{_acvcAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesCreate where
        type Rs AccountsContainersVariablesCreate = Variable
        requestClient AccountsContainersVariablesCreate{..}
          = go _acvcAccountId _acvcContainerId (Just AltJSON)
              _acvcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesCreateResource)
                      mempty
