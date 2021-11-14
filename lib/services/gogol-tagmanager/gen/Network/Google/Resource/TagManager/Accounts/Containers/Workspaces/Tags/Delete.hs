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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsDelete
    , AccountsContainersWorkspacesTagsDelete

    -- * Request Lenses
    , acwtd1Xgafv
    , acwtd1UploadProtocol
    , acwtd1Path
    , acwtd1AccessToken
    , acwtd1UploadType
    , acwtd1Callback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.delete@ method which the
-- 'AccountsContainersWorkspacesTagsDelete' request conforms to.
type AccountsContainersWorkspacesTagsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsDelete' smart constructor.
data AccountsContainersWorkspacesTagsDelete =
  AccountsContainersWorkspacesTagsDelete'
    { _acwtd1Xgafv :: !(Maybe Xgafv)
    , _acwtd1UploadProtocol :: !(Maybe Text)
    , _acwtd1Path :: !Text
    , _acwtd1AccessToken :: !(Maybe Text)
    , _acwtd1UploadType :: !(Maybe Text)
    , _acwtd1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtd1Xgafv'
--
-- * 'acwtd1UploadProtocol'
--
-- * 'acwtd1Path'
--
-- * 'acwtd1AccessToken'
--
-- * 'acwtd1UploadType'
--
-- * 'acwtd1Callback'
accountsContainersWorkspacesTagsDelete
    :: Text -- ^ 'acwtd1Path'
    -> AccountsContainersWorkspacesTagsDelete
accountsContainersWorkspacesTagsDelete pAcwtd1Path_ =
  AccountsContainersWorkspacesTagsDelete'
    { _acwtd1Xgafv = Nothing
    , _acwtd1UploadProtocol = Nothing
    , _acwtd1Path = pAcwtd1Path_
    , _acwtd1AccessToken = Nothing
    , _acwtd1UploadType = Nothing
    , _acwtd1Callback = Nothing
    }


-- | V1 error format.
acwtd1Xgafv :: Lens' AccountsContainersWorkspacesTagsDelete (Maybe Xgafv)
acwtd1Xgafv
  = lens _acwtd1Xgafv (\ s a -> s{_acwtd1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtd1UploadProtocol :: Lens' AccountsContainersWorkspacesTagsDelete (Maybe Text)
acwtd1UploadProtocol
  = lens _acwtd1UploadProtocol
      (\ s a -> s{_acwtd1UploadProtocol = a})

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtd1Path :: Lens' AccountsContainersWorkspacesTagsDelete Text
acwtd1Path
  = lens _acwtd1Path (\ s a -> s{_acwtd1Path = a})

-- | OAuth access token.
acwtd1AccessToken :: Lens' AccountsContainersWorkspacesTagsDelete (Maybe Text)
acwtd1AccessToken
  = lens _acwtd1AccessToken
      (\ s a -> s{_acwtd1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtd1UploadType :: Lens' AccountsContainersWorkspacesTagsDelete (Maybe Text)
acwtd1UploadType
  = lens _acwtd1UploadType
      (\ s a -> s{_acwtd1UploadType = a})

-- | JSONP
acwtd1Callback :: Lens' AccountsContainersWorkspacesTagsDelete (Maybe Text)
acwtd1Callback
  = lens _acwtd1Callback
      (\ s a -> s{_acwtd1Callback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsDelete
         where
        type Rs AccountsContainersWorkspacesTagsDelete = ()
        type Scopes AccountsContainersWorkspacesTagsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsDelete'{..}
          = go _acwtd1Path _acwtd1Xgafv _acwtd1UploadProtocol
              _acwtd1AccessToken
              _acwtd1UploadType
              _acwtd1Callback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsDeleteResource)
                      mempty
