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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
    (
    -- * REST Resource
      AccountsContainersTagsCreateResource

    -- * Creating a Request
    , accountsContainersTagsCreate'
    , AccountsContainersTagsCreate'

    -- * Request Lenses
    , actcContainerId
    , actcPayload
    , actcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsCreate@ method which the
-- 'AccountsContainersTagsCreate'' request conforms to.
type AccountsContainersTagsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Tag :> Post '[JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsCreate'' smart constructor.
data AccountsContainersTagsCreate' = AccountsContainersTagsCreate'
    { _actcContainerId :: !Text
    , _actcPayload     :: !Tag
    , _actcAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actcContainerId'
--
-- * 'actcPayload'
--
-- * 'actcAccountId'
accountsContainersTagsCreate'
    :: Text -- ^ 'containerId'
    -> Tag -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTagsCreate'
accountsContainersTagsCreate' pActcContainerId_ pActcPayload_ pActcAccountId_ =
    AccountsContainersTagsCreate'
    { _actcContainerId = pActcContainerId_
    , _actcPayload = pActcPayload_
    , _actcAccountId = pActcAccountId_
    }

-- | The GTM Container ID.
actcContainerId :: Lens' AccountsContainersTagsCreate' Text
actcContainerId
  = lens _actcContainerId
      (\ s a -> s{_actcContainerId = a})

-- | Multipart request metadata.
actcPayload :: Lens' AccountsContainersTagsCreate' Tag
actcPayload
  = lens _actcPayload (\ s a -> s{_actcPayload = a})

-- | The GTM Account ID.
actcAccountId :: Lens' AccountsContainersTagsCreate' Text
actcAccountId
  = lens _actcAccountId
      (\ s a -> s{_actcAccountId = a})

instance GoogleRequest AccountsContainersTagsCreate'
         where
        type Rs AccountsContainersTagsCreate' = Tag
        requestClient AccountsContainersTagsCreate'{..}
          = go _actcAccountId _actcContainerId (Just AltJSON)
              _actcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsCreateResource)
                      mempty
