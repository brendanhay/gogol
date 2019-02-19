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
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateResource

    -- * Creating a Request
    , accountsContainersCreate
    , AccountsContainersCreate

    -- * Request Lenses
    , accParent
    , accPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.create@ method which the
-- 'AccountsContainersCreate' request conforms to.
type AccountsContainersCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "containers" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Container :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate' smart constructor.
data AccountsContainersCreate =
  AccountsContainersCreate'
    { _accParent  :: !Text
    , _accPayload :: !Container
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accParent'
--
-- * 'accPayload'
accountsContainersCreate
    :: Text -- ^ 'accParent'
    -> Container -- ^ 'accPayload'
    -> AccountsContainersCreate
accountsContainersCreate pAccParent_ pAccPayload_ =
  AccountsContainersCreate'
    {_accParent = pAccParent_, _accPayload = pAccPayload_}

-- | GTM Account\'s API relative path. Example: accounts\/{account_id}.
accParent :: Lens' AccountsContainersCreate Text
accParent
  = lens _accParent (\ s a -> s{_accParent = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsContainersCreate Container
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

instance GoogleRequest AccountsContainersCreate where
        type Rs AccountsContainersCreate = Container
        type Scopes AccountsContainersCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersCreate'{..}
          = go _accParent (Just AltJSON) _accPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersCreateResource)
                      mempty
