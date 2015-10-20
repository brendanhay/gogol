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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get
    (
    -- * REST Resource
      AccountsContainersVariablesGetResource

    -- * Creating a Request
    , accountsContainersVariablesGet
    , AccountsContainersVariablesGet

    -- * Request Lenses
    , acvgContainerId
    , acvgVariableId
    , acvgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.get@ method which the
-- 'AccountsContainersVariablesGet' request conforms to.
type AccountsContainersVariablesGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesGet' smart constructor.
data AccountsContainersVariablesGet = AccountsContainersVariablesGet
    { _acvgContainerId :: !Text
    , _acvgVariableId  :: !Text
    , _acvgAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgContainerId'
--
-- * 'acvgVariableId'
--
-- * 'acvgAccountId'
accountsContainersVariablesGet
    :: Text -- ^ 'acvgContainerId'
    -> Text -- ^ 'acvgVariableId'
    -> Text -- ^ 'acvgAccountId'
    -> AccountsContainersVariablesGet
accountsContainersVariablesGet pAcvgContainerId_ pAcvgVariableId_ pAcvgAccountId_ =
    AccountsContainersVariablesGet
    { _acvgContainerId = pAcvgContainerId_
    , _acvgVariableId = pAcvgVariableId_
    , _acvgAccountId = pAcvgAccountId_
    }

-- | The GTM Container ID.
acvgContainerId :: Lens' AccountsContainersVariablesGet Text
acvgContainerId
  = lens _acvgContainerId
      (\ s a -> s{_acvgContainerId = a})

-- | The GTM Variable ID.
acvgVariableId :: Lens' AccountsContainersVariablesGet Text
acvgVariableId
  = lens _acvgVariableId
      (\ s a -> s{_acvgVariableId = a})

-- | The GTM Account ID.
acvgAccountId :: Lens' AccountsContainersVariablesGet Text
acvgAccountId
  = lens _acvgAccountId
      (\ s a -> s{_acvgAccountId = a})

instance GoogleRequest AccountsContainersVariablesGet
         where
        type Rs AccountsContainersVariablesGet = Variable
        requestClient AccountsContainersVariablesGet{..}
          = go _acvgAccountId _acvgContainerId _acvgVariableId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesGetResource)
                      mempty
