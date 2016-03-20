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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
    (
    -- * REST Resource
      AccountsContainersVersionsCreateResource

    -- * Creating a Request
    , accountsContainersVersionsCreate
    , AccountsContainersVersionsCreate

    -- * Request Lenses
    , aContainerId
    , aPayload
    , aAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.create@ method which the
-- 'AccountsContainersVersionsCreate' request conforms to.
type AccountsContainersVersionsCreateResource =
     "tagmanager" :>
       "v1" :>
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
-- /See:/ 'accountsContainersVersionsCreate' smart constructor.
data AccountsContainersVersionsCreate = AccountsContainersVersionsCreate
    { _aContainerId :: !Text
    , _aPayload     :: !CreateContainerVersionRequestVersionOptions
    , _aAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aContainerId'
--
-- * 'aPayload'
--
-- * 'aAccountId'
accountsContainersVersionsCreate
    :: Text -- ^ 'aContainerId'
    -> CreateContainerVersionRequestVersionOptions -- ^ 'aPayload'
    -> Text -- ^ 'aAccountId'
    -> AccountsContainersVersionsCreate
accountsContainersVersionsCreate pAContainerId_ pAPayload_ pAAccountId_ =
    AccountsContainersVersionsCreate
    { _aContainerId = pAContainerId_
    , _aPayload = pAPayload_
    , _aAccountId = pAAccountId_
    }

-- | The GTM Container ID.
aContainerId :: Lens' AccountsContainersVersionsCreate Text
aContainerId
  = lens _aContainerId (\ s a -> s{_aContainerId = a})

-- | Multipart request metadata.
aPayload :: Lens' AccountsContainersVersionsCreate CreateContainerVersionRequestVersionOptions
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | The GTM Account ID.
aAccountId :: Lens' AccountsContainersVersionsCreate Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsCreate where
        type Rs AccountsContainersVersionsCreate =
             CreateContainerVersionResponse
        requestClient AccountsContainersVersionsCreate{..}
          = go _aAccountId _aContainerId (Just AltJSON)
              _aPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsCreateResource)
                      mempty
