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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get
    (
    -- * REST Resource
      AccountsContainersTagsGetResource

    -- * Creating a Request
    , accountsContainersTagsGet
    , AccountsContainersTagsGet

    -- * Request Lenses
    , actgContainerId
    , actgAccountId
    , actgTagId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.tags.get@ method which the
-- 'AccountsContainersTagsGet' request conforms to.
type AccountsContainersTagsGetResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   Capture "tagId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersTagsGet' smart constructor.
data AccountsContainersTagsGet = AccountsContainersTagsGet
    { _actgContainerId :: !Text
    , _actgAccountId   :: !Text
    , _actgTagId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgContainerId'
--
-- * 'actgAccountId'
--
-- * 'actgTagId'
accountsContainersTagsGet
    :: Text -- ^ 'actgContainerId'
    -> Text -- ^ 'actgAccountId'
    -> Text -- ^ 'actgTagId'
    -> AccountsContainersTagsGet
accountsContainersTagsGet pActgContainerId_ pActgAccountId_ pActgTagId_ =
    AccountsContainersTagsGet
    { _actgContainerId = pActgContainerId_
    , _actgAccountId = pActgAccountId_
    , _actgTagId = pActgTagId_
    }

-- | The GTM Container ID.
actgContainerId :: Lens' AccountsContainersTagsGet Text
actgContainerId
  = lens _actgContainerId
      (\ s a -> s{_actgContainerId = a})

-- | The GTM Account ID.
actgAccountId :: Lens' AccountsContainersTagsGet Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

-- | The GTM Tag ID.
actgTagId :: Lens' AccountsContainersTagsGet Text
actgTagId
  = lens _actgTagId (\ s a -> s{_actgTagId = a})

instance GoogleRequest AccountsContainersTagsGet
         where
        type Rs AccountsContainersTagsGet = Tag
        type Scopes AccountsContainersTagsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersTagsGet{..}
          = go _actgAccountId _actgContainerId _actgTagId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsGetResource)
                      mempty
