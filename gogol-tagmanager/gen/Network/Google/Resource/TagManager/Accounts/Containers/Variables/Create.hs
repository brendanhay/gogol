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
-- | Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateResource

    -- * Creating a Request
    , accountsContainersVariablesCreate'
    , AccountsContainersVariablesCreate'

    -- * Request Lenses
    , acvccContainerId
    , acvccPayload
    , acvccAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesCreate@ method which the
-- 'AccountsContainersVariablesCreate'' request conforms to.
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
-- /See:/ 'accountsContainersVariablesCreate'' smart constructor.
data AccountsContainersVariablesCreate' = AccountsContainersVariablesCreate'
    { _acvccContainerId :: !Text
    , _acvccPayload     :: !Variable
    , _acvccAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvccContainerId'
--
-- * 'acvccPayload'
--
-- * 'acvccAccountId'
accountsContainersVariablesCreate'
    :: Text -- ^ 'containerId'
    -> Variable -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesCreate'
accountsContainersVariablesCreate' pAcvccContainerId_ pAcvccPayload_ pAcvccAccountId_ =
    AccountsContainersVariablesCreate'
    { _acvccContainerId = pAcvccContainerId_
    , _acvccPayload = pAcvccPayload_
    , _acvccAccountId = pAcvccAccountId_
    }

-- | The GTM Container ID.
acvccContainerId :: Lens' AccountsContainersVariablesCreate' Text
acvccContainerId
  = lens _acvccContainerId
      (\ s a -> s{_acvccContainerId = a})

-- | Multipart request metadata.
acvccPayload :: Lens' AccountsContainersVariablesCreate' Variable
acvccPayload
  = lens _acvccPayload (\ s a -> s{_acvccPayload = a})

-- | The GTM Account ID.
acvccAccountId :: Lens' AccountsContainersVariablesCreate' Text
acvccAccountId
  = lens _acvccAccountId
      (\ s a -> s{_acvccAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesCreate' where
        type Rs AccountsContainersVariablesCreate' = Variable
        requestClient AccountsContainersVariablesCreate'{..}
          = go _acvccAccountId _acvccContainerId (Just AltJSON)
              _acvccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesCreateResource)
                      mempty
