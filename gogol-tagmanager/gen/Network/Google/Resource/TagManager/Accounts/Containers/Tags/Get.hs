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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get
    (
    -- * REST Resource
      AccountsContainersTagsGetResource

    -- * Creating a Request
    , accountsContainersTagsGet'
    , AccountsContainersTagsGet'

    -- * Request Lenses
    , actgcContainerId
    , actgcAccountId
    , actgcTagId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsGet@ method which the
-- 'AccountsContainersTagsGet'' request conforms to.
type AccountsContainersTagsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersTagsGet'' smart constructor.
data AccountsContainersTagsGet' = AccountsContainersTagsGet'
    { _actgcContainerId :: !Text
    , _actgcAccountId   :: !Text
    , _actgcTagId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgcContainerId'
--
-- * 'actgcAccountId'
--
-- * 'actgcTagId'
accountsContainersTagsGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsGet'
accountsContainersTagsGet' pActgcContainerId_ pActgcAccountId_ pActgcTagId_ =
    AccountsContainersTagsGet'
    { _actgcContainerId = pActgcContainerId_
    , _actgcAccountId = pActgcAccountId_
    , _actgcTagId = pActgcTagId_
    }

-- | The GTM Container ID.
actgcContainerId :: Lens' AccountsContainersTagsGet' Text
actgcContainerId
  = lens _actgcContainerId
      (\ s a -> s{_actgcContainerId = a})

-- | The GTM Account ID.
actgcAccountId :: Lens' AccountsContainersTagsGet' Text
actgcAccountId
  = lens _actgcAccountId
      (\ s a -> s{_actgcAccountId = a})

-- | The GTM Tag ID.
actgcTagId :: Lens' AccountsContainersTagsGet' Text
actgcTagId
  = lens _actgcTagId (\ s a -> s{_actgcTagId = a})

instance GoogleRequest AccountsContainersTagsGet'
         where
        type Rs AccountsContainersTagsGet' = Tag
        requestClient AccountsContainersTagsGet'{..}
          = go _actgcAccountId _actgcContainerId _actgcTagId
              (Just AltJSON)
              tagManager
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsGetResource)
                      mempty
