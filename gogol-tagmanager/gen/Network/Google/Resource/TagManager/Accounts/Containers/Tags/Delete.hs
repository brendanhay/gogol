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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersTagsDeleteResource

    -- * Creating a Request
    , accountsContainersTagsDelete
    , AccountsContainersTagsDelete

    -- * Request Lenses
    , actdcContainerId
    , actdcAccountId
    , actdcTagId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.tags.delete@ method which the
-- 'AccountsContainersTagsDelete' request conforms to.
type AccountsContainersTagsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersTagsDelete' smart constructor.
data AccountsContainersTagsDelete = AccountsContainersTagsDelete
    { _actdcContainerId :: !Text
    , _actdcAccountId   :: !Text
    , _actdcTagId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdcContainerId'
--
-- * 'actdcAccountId'
--
-- * 'actdcTagId'
accountsContainersTagsDelete
    :: Text -- ^ 'actdcContainerId'
    -> Text -- ^ 'actdcAccountId'
    -> Text -- ^ 'actdcTagId'
    -> AccountsContainersTagsDelete
accountsContainersTagsDelete pActdcContainerId_ pActdcAccountId_ pActdcTagId_ =
    AccountsContainersTagsDelete
    { _actdcContainerId = pActdcContainerId_
    , _actdcAccountId = pActdcAccountId_
    , _actdcTagId = pActdcTagId_
    }

-- | The GTM Container ID.
actdcContainerId :: Lens' AccountsContainersTagsDelete Text
actdcContainerId
  = lens _actdcContainerId
      (\ s a -> s{_actdcContainerId = a})

-- | The GTM Account ID.
actdcAccountId :: Lens' AccountsContainersTagsDelete Text
actdcAccountId
  = lens _actdcAccountId
      (\ s a -> s{_actdcAccountId = a})

-- | The GTM Tag ID.
actdcTagId :: Lens' AccountsContainersTagsDelete Text
actdcTagId
  = lens _actdcTagId (\ s a -> s{_actdcTagId = a})

instance GoogleRequest AccountsContainersTagsDelete
         where
        type Rs AccountsContainersTagsDelete = ()
        requestClient AccountsContainersTagsDelete{..}
          = go _actdcAccountId _actdcContainerId _actdcTagId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsDeleteResource)
                      mempty
