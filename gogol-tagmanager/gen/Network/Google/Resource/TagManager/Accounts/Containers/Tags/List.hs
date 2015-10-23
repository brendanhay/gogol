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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
    (
    -- * REST Resource
      AccountsContainersTagsListResource

    -- * Creating a Request
    , accountsContainersTagsList
    , AccountsContainersTagsList

    -- * Request Lenses
    , actlContainerId
    , actlAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.tags.list@ method which the
-- 'AccountsContainersTagsList' request conforms to.
type AccountsContainersTagsListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersTagsList' smart constructor.
data AccountsContainersTagsList = AccountsContainersTagsList
    { _actlContainerId :: !Text
    , _actlAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlContainerId'
--
-- * 'actlAccountId'
accountsContainersTagsList
    :: Text -- ^ 'actlContainerId'
    -> Text -- ^ 'actlAccountId'
    -> AccountsContainersTagsList
accountsContainersTagsList pActlContainerId_ pActlAccountId_ =
    AccountsContainersTagsList
    { _actlContainerId = pActlContainerId_
    , _actlAccountId = pActlAccountId_
    }

-- | The GTM Container ID.
actlContainerId :: Lens' AccountsContainersTagsList Text
actlContainerId
  = lens _actlContainerId
      (\ s a -> s{_actlContainerId = a})

-- | The GTM Account ID.
actlAccountId :: Lens' AccountsContainersTagsList Text
actlAccountId
  = lens _actlAccountId
      (\ s a -> s{_actlAccountId = a})

instance GoogleRequest AccountsContainersTagsList
         where
        type Rs AccountsContainersTagsList = ListTagsResponse
        requestClient AccountsContainersTagsList{..}
          = go _actlAccountId _actlContainerId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsListResource)
                      mempty
