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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
    (
    -- * REST Resource
      AccountsContainersVersionsListResource

    -- * Creating a Request
    , accountsContainersVersionsList'
    , AccountsContainersVersionsList'

    -- * Request Lenses
    , acvlContainerId
    , acvlHeaders
    , acvlAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.list@ method which the
-- 'AccountsContainersVersionsList'' request conforms to.
type AccountsContainersVersionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "headers" Bool :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionsList'' smart constructor.
data AccountsContainersVersionsList' = AccountsContainersVersionsList'
    { _acvlContainerId :: !Text
    , _acvlHeaders     :: !Bool
    , _acvlAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlContainerId'
--
-- * 'acvlHeaders'
--
-- * 'acvlAccountId'
accountsContainersVersionsList'
    :: Text -- ^ 'acvlContainerId'
    -> Text -- ^ 'acvlAccountId'
    -> AccountsContainersVersionsList'
accountsContainersVersionsList' pAcvlContainerId_ pAcvlAccountId_ =
    AccountsContainersVersionsList'
    { _acvlContainerId = pAcvlContainerId_
    , _acvlHeaders = False
    , _acvlAccountId = pAcvlAccountId_
    }

-- | The GTM Container ID.
acvlContainerId :: Lens' AccountsContainersVersionsList' Text
acvlContainerId
  = lens _acvlContainerId
      (\ s a -> s{_acvlContainerId = a})

-- | Retrieve headers only when true.
acvlHeaders :: Lens' AccountsContainersVersionsList' Bool
acvlHeaders
  = lens _acvlHeaders (\ s a -> s{_acvlHeaders = a})

-- | The GTM Account ID.
acvlAccountId :: Lens' AccountsContainersVersionsList' Text
acvlAccountId
  = lens _acvlAccountId
      (\ s a -> s{_acvlAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsList' where
        type Rs AccountsContainersVersionsList' =
             ListContainerVersionsResponse
        requestClient AccountsContainersVersionsList'{..}
          = go _acvlAccountId _acvlContainerId
              (Just _acvlHeaders)
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsListResource)
                      mempty
