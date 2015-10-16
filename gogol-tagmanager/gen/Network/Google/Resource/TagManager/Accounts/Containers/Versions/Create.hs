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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
    (
    -- * REST Resource
      AccountsContainersVersionsCreateResource

    -- * Creating a Request
    , accountsContainersVersionsCreate'
    , AccountsContainersVersionsCreate'

    -- * Request Lenses
    , acvcContainerId
    , acvcPayload
    , acvcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsCreate@ method which the
-- 'AccountsContainersVersionsCreate'' request conforms to.
type AccountsContainersVersionsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON]
                   CreateContainerVersionRequestVersionOptions
                   :> Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version.
--
-- /See:/ 'accountsContainersVersionsCreate'' smart constructor.
data AccountsContainersVersionsCreate' = AccountsContainersVersionsCreate'
    { _acvcContainerId :: !Text
    , _acvcPayload     :: !CreateContainerVersionRequestVersionOptions
    , _acvcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvcContainerId'
--
-- * 'acvcPayload'
--
-- * 'acvcAccountId'
accountsContainersVersionsCreate'
    :: Text -- ^ 'containerId'
    -> CreateContainerVersionRequestVersionOptions -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsCreate'
accountsContainersVersionsCreate' pAcvcContainerId_ pAcvcPayload_ pAcvcAccountId_ =
    AccountsContainersVersionsCreate'
    { _acvcContainerId = pAcvcContainerId_
    , _acvcPayload = pAcvcPayload_
    , _acvcAccountId = pAcvcAccountId_
    }

-- | The GTM Container ID.
acvcContainerId :: Lens' AccountsContainersVersionsCreate' Text
acvcContainerId
  = lens _acvcContainerId
      (\ s a -> s{_acvcContainerId = a})

-- | Multipart request metadata.
acvcPayload :: Lens' AccountsContainersVersionsCreate' CreateContainerVersionRequestVersionOptions
acvcPayload
  = lens _acvcPayload (\ s a -> s{_acvcPayload = a})

-- | The GTM Account ID.
acvcAccountId :: Lens' AccountsContainersVersionsCreate' Text
acvcAccountId
  = lens _acvcAccountId
      (\ s a -> s{_acvcAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsCreate' where
        type Rs AccountsContainersVersionsCreate' =
             CreateContainerVersionResponse
        requestClient AccountsContainersVersionsCreate'{..}
          = go _acvcAccountId _acvcContainerId (Just AltJSON)
              _acvcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsCreateResource)
                      mempty
