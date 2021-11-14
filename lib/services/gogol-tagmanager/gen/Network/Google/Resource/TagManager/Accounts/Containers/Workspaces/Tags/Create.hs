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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsCreate
    , AccountsContainersWorkspacesTagsCreate

    -- * Request Lenses
    , acwtccParent
    , acwtccXgafv
    , acwtccUploadProtocol
    , acwtccAccessToken
    , acwtccUploadType
    , acwtccPayload
    , acwtccCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.create@ method which the
-- 'AccountsContainersWorkspacesTagsCreate' request conforms to.
type AccountsContainersWorkspacesTagsCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "tags" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Tag :> Post '[JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsCreate' smart constructor.
data AccountsContainersWorkspacesTagsCreate =
  AccountsContainersWorkspacesTagsCreate'
    { _acwtccParent :: !Text
    , _acwtccXgafv :: !(Maybe Xgafv)
    , _acwtccUploadProtocol :: !(Maybe Text)
    , _acwtccAccessToken :: !(Maybe Text)
    , _acwtccUploadType :: !(Maybe Text)
    , _acwtccPayload :: !Tag
    , _acwtccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtccParent'
--
-- * 'acwtccXgafv'
--
-- * 'acwtccUploadProtocol'
--
-- * 'acwtccAccessToken'
--
-- * 'acwtccUploadType'
--
-- * 'acwtccPayload'
--
-- * 'acwtccCallback'
accountsContainersWorkspacesTagsCreate
    :: Text -- ^ 'acwtccParent'
    -> Tag -- ^ 'acwtccPayload'
    -> AccountsContainersWorkspacesTagsCreate
accountsContainersWorkspacesTagsCreate pAcwtccParent_ pAcwtccPayload_ =
  AccountsContainersWorkspacesTagsCreate'
    { _acwtccParent = pAcwtccParent_
    , _acwtccXgafv = Nothing
    , _acwtccUploadProtocol = Nothing
    , _acwtccAccessToken = Nothing
    , _acwtccUploadType = Nothing
    , _acwtccPayload = pAcwtccPayload_
    , _acwtccCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtccParent :: Lens' AccountsContainersWorkspacesTagsCreate Text
acwtccParent
  = lens _acwtccParent (\ s a -> s{_acwtccParent = a})

-- | V1 error format.
acwtccXgafv :: Lens' AccountsContainersWorkspacesTagsCreate (Maybe Xgafv)
acwtccXgafv
  = lens _acwtccXgafv (\ s a -> s{_acwtccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtccUploadProtocol :: Lens' AccountsContainersWorkspacesTagsCreate (Maybe Text)
acwtccUploadProtocol
  = lens _acwtccUploadProtocol
      (\ s a -> s{_acwtccUploadProtocol = a})

-- | OAuth access token.
acwtccAccessToken :: Lens' AccountsContainersWorkspacesTagsCreate (Maybe Text)
acwtccAccessToken
  = lens _acwtccAccessToken
      (\ s a -> s{_acwtccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtccUploadType :: Lens' AccountsContainersWorkspacesTagsCreate (Maybe Text)
acwtccUploadType
  = lens _acwtccUploadType
      (\ s a -> s{_acwtccUploadType = a})

-- | Multipart request metadata.
acwtccPayload :: Lens' AccountsContainersWorkspacesTagsCreate Tag
acwtccPayload
  = lens _acwtccPayload
      (\ s a -> s{_acwtccPayload = a})

-- | JSONP
acwtccCallback :: Lens' AccountsContainersWorkspacesTagsCreate (Maybe Text)
acwtccCallback
  = lens _acwtccCallback
      (\ s a -> s{_acwtccCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsCreate
         where
        type Rs AccountsContainersWorkspacesTagsCreate = Tag
        type Scopes AccountsContainersWorkspacesTagsCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsCreate'{..}
          = go _acwtccParent _acwtccXgafv _acwtccUploadProtocol
              _acwtccAccessToken
              _acwtccUploadType
              _acwtccCallback
              (Just AltJSON)
              _acwtccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsCreateResource)
                      mempty
