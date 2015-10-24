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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
    (
    -- * REST Resource
      AccountsContainersVariablesListResource

    -- * Creating a Request
    , accountsContainersVariablesList
    , AccountsContainersVariablesList

    -- * Request Lenses
    , acvlcContainerId
    , acvlcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.list@ method which the
-- 'AccountsContainersVariablesList' request conforms to.
type AccountsContainersVariablesListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'accountsContainersVariablesList' smart constructor.
data AccountsContainersVariablesList = AccountsContainersVariablesList
    { _acvlcContainerId :: !Text
    , _acvlcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlcContainerId'
--
-- * 'acvlcAccountId'
accountsContainersVariablesList
    :: Text -- ^ 'acvlcContainerId'
    -> Text -- ^ 'acvlcAccountId'
    -> AccountsContainersVariablesList
accountsContainersVariablesList pAcvlcContainerId_ pAcvlcAccountId_ =
    AccountsContainersVariablesList
    { _acvlcContainerId = pAcvlcContainerId_
    , _acvlcAccountId = pAcvlcAccountId_
    }

-- | The GTM Container ID.
acvlcContainerId :: Lens' AccountsContainersVariablesList Text
acvlcContainerId
  = lens _acvlcContainerId
      (\ s a -> s{_acvlcContainerId = a})

-- | The GTM Account ID.
acvlcAccountId :: Lens' AccountsContainersVariablesList Text
acvlcAccountId
  = lens _acvlcAccountId
      (\ s a -> s{_acvlcAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesList where
        type Rs AccountsContainersVariablesList =
             ListVariablesResponse
        requestClient AccountsContainersVariablesList{..}
          = go _acvlcAccountId _acvlcContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesListResource)
                      mempty
