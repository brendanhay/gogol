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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
    (
    -- * REST Resource
      AccountsContainersTagsUpdateResource

    -- * Creating a Request
    , accountsContainersTagsUpdate
    , AccountsContainersTagsUpdate

    -- * Request Lenses
    , actucContainerId
    , actucFingerprint
    , actucPayload
    , actucAccountId
    , actucTagId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.tags.update@ method which the
-- 'AccountsContainersTagsUpdate' request conforms to.
type AccountsContainersTagsUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "tags" :>
                   Capture "tagId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Tag :> Put '[JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsUpdate' smart constructor.
data AccountsContainersTagsUpdate = AccountsContainersTagsUpdate'
    { _actucContainerId :: !Text
    , _actucFingerprint :: !(Maybe Text)
    , _actucPayload     :: !Tag
    , _actucAccountId   :: !Text
    , _actucTagId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actucContainerId'
--
-- * 'actucFingerprint'
--
-- * 'actucPayload'
--
-- * 'actucAccountId'
--
-- * 'actucTagId'
accountsContainersTagsUpdate
    :: Text -- ^ 'actucContainerId'
    -> Tag -- ^ 'actucPayload'
    -> Text -- ^ 'actucAccountId'
    -> Text -- ^ 'actucTagId'
    -> AccountsContainersTagsUpdate
accountsContainersTagsUpdate pActucContainerId_ pActucPayload_ pActucAccountId_ pActucTagId_ =
    AccountsContainersTagsUpdate'
    { _actucContainerId = pActucContainerId_
    , _actucFingerprint = Nothing
    , _actucPayload = pActucPayload_
    , _actucAccountId = pActucAccountId_
    , _actucTagId = pActucTagId_
    }

-- | The GTM Container ID.
actucContainerId :: Lens' AccountsContainersTagsUpdate Text
actucContainerId
  = lens _actucContainerId
      (\ s a -> s{_actucContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
actucFingerprint :: Lens' AccountsContainersTagsUpdate (Maybe Text)
actucFingerprint
  = lens _actucFingerprint
      (\ s a -> s{_actucFingerprint = a})

-- | Multipart request metadata.
actucPayload :: Lens' AccountsContainersTagsUpdate Tag
actucPayload
  = lens _actucPayload (\ s a -> s{_actucPayload = a})

-- | The GTM Account ID.
actucAccountId :: Lens' AccountsContainersTagsUpdate Text
actucAccountId
  = lens _actucAccountId
      (\ s a -> s{_actucAccountId = a})

-- | The GTM Tag ID.
actucTagId :: Lens' AccountsContainersTagsUpdate Text
actucTagId
  = lens _actucTagId (\ s a -> s{_actucTagId = a})

instance GoogleRequest AccountsContainersTagsUpdate
         where
        type Rs AccountsContainersTagsUpdate = Tag
        type Scopes AccountsContainersTagsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersTagsUpdate'{..}
          = go _actucAccountId _actucContainerId _actucTagId
              _actucFingerprint
              (Just AltJSON)
              _actucPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersTagsUpdateResource)
                      mempty
