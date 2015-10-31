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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
    (
    -- * REST Resource
      AccountsContainersTagsCreateResource

    -- * Creating a Request
    , accountsContainersTagsCreate
    , AccountsContainersTagsCreate

    -- * Request Lenses
    , actccContainerId
    , actccPayload
    , actccAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.tags.create@ method which the
-- 'AccountsContainersTagsCreate' request conforms to.
type AccountsContainersTagsCreateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Tag :> Post '[JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsCreate' smart constructor.
data AccountsContainersTagsCreate = AccountsContainersTagsCreate
    { _actccContainerId :: !Text
    , _actccPayload     :: !Tag
    , _actccAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actccContainerId'
--
-- * 'actccPayload'
--
-- * 'actccAccountId'
accountsContainersTagsCreate
    :: Text -- ^ 'actccContainerId'
    -> Tag -- ^ 'actccPayload'
    -> Text -- ^ 'actccAccountId'
    -> AccountsContainersTagsCreate
accountsContainersTagsCreate pActccContainerId_ pActccPayload_ pActccAccountId_ =
    AccountsContainersTagsCreate
    { _actccContainerId = pActccContainerId_
    , _actccPayload = pActccPayload_
    , _actccAccountId = pActccAccountId_
    }

-- | The GTM Container ID.
actccContainerId :: Lens' AccountsContainersTagsCreate Text
actccContainerId
  = lens _actccContainerId
      (\ s a -> s{_actccContainerId = a})

-- | Multipart request metadata.
actccPayload :: Lens' AccountsContainersTagsCreate Tag
actccPayload
  = lens _actccPayload (\ s a -> s{_actccPayload = a})

-- | The GTM Account ID.
actccAccountId :: Lens' AccountsContainersTagsCreate Text
actccAccountId
  = lens _actccAccountId
      (\ s a -> s{_actccAccountId = a})

instance GoogleRequest AccountsContainersTagsCreate
         where
        type Rs AccountsContainersTagsCreate = Tag
        type Scopes AccountsContainersTagsCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersTagsCreate{..}
          = go _actccAccountId _actccContainerId (Just AltJSON)
              _actccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsCreateResource)
                      mempty
