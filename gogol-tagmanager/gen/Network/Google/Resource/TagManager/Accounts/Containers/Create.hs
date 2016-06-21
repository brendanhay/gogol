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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateResource

    -- * Creating a Request
    , accountsContainersCreate
    , AccountsContainersCreate

    -- * Request Lenses
    , accPayload
    , accAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.create@ method which the
-- 'AccountsContainersCreate' request conforms to.
type AccountsContainersCreateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Container :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate' smart constructor.
data AccountsContainersCreate = AccountsContainersCreate'
    { _accPayload   :: !Container
    , _accAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accPayload'
--
-- * 'accAccountId'
accountsContainersCreate
    :: Container -- ^ 'accPayload'
    -> Text -- ^ 'accAccountId'
    -> AccountsContainersCreate
accountsContainersCreate pAccPayload_ pAccAccountId_ =
    AccountsContainersCreate'
    { _accPayload = pAccPayload_
    , _accAccountId = pAccAccountId_
    }

-- | Multipart request metadata.
accPayload :: Lens' AccountsContainersCreate Container
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | The GTM Account ID.
accAccountId :: Lens' AccountsContainersCreate Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

instance GoogleRequest AccountsContainersCreate where
        type Rs AccountsContainersCreate = Container
        type Scopes AccountsContainersCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersCreate'{..}
          = go _accAccountId (Just AltJSON) _accPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersCreateResource)
                      mempty
