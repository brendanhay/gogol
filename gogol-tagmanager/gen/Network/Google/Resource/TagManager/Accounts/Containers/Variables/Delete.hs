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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
    (
    -- * REST Resource
      AccountsContainersVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersVariablesDelete
    , AccountsContainersVariablesDelete

    -- * Request Lenses
    , acvdContainerId
    , acvdVariableId
    , acvdAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.delete@ method which the
-- 'AccountsContainersVariablesDelete' request conforms to.
type AccountsContainersVariablesDeleteResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   Capture "variableId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesDelete' smart constructor.
data AccountsContainersVariablesDelete = AccountsContainersVariablesDelete
    { _acvdContainerId :: !Text
    , _acvdVariableId  :: !Text
    , _acvdAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdContainerId'
--
-- * 'acvdVariableId'
--
-- * 'acvdAccountId'
accountsContainersVariablesDelete
    :: Text -- ^ 'acvdContainerId'
    -> Text -- ^ 'acvdVariableId'
    -> Text -- ^ 'acvdAccountId'
    -> AccountsContainersVariablesDelete
accountsContainersVariablesDelete pAcvdContainerId_ pAcvdVariableId_ pAcvdAccountId_ =
    AccountsContainersVariablesDelete
    { _acvdContainerId = pAcvdContainerId_
    , _acvdVariableId = pAcvdVariableId_
    , _acvdAccountId = pAcvdAccountId_
    }

-- | The GTM Container ID.
acvdContainerId :: Lens' AccountsContainersVariablesDelete Text
acvdContainerId
  = lens _acvdContainerId
      (\ s a -> s{_acvdContainerId = a})

-- | The GTM Variable ID.
acvdVariableId :: Lens' AccountsContainersVariablesDelete Text
acvdVariableId
  = lens _acvdVariableId
      (\ s a -> s{_acvdVariableId = a})

-- | The GTM Account ID.
acvdAccountId :: Lens' AccountsContainersVariablesDelete Text
acvdAccountId
  = lens _acvdAccountId
      (\ s a -> s{_acvdAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesDelete where
        type Rs AccountsContainersVariablesDelete = ()
        type Scopes AccountsContainersVariablesDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersVariablesDelete{..}
          = go _acvdAccountId _acvdContainerId _acvdVariableId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesDeleteResource)
                      mempty
