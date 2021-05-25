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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Templates of a GTM container workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesList
    , AccountsContainersWorkspacesTemplatesList

    -- * Request Lenses
    , acwtlcParent
    , acwtlcXgafv
    , acwtlcUploadProtocol
    , acwtlcAccessToken
    , acwtlcUploadType
    , acwtlcPageToken
    , acwtlcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.list@ method which the
-- 'AccountsContainersWorkspacesTemplatesList' request conforms to.
type AccountsContainersWorkspacesTemplatesListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "templates" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTemplatesResponse

-- | Lists all GTM Templates of a GTM container workspace.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesList' smart constructor.
data AccountsContainersWorkspacesTemplatesList =
  AccountsContainersWorkspacesTemplatesList'
    { _acwtlcParent :: !Text
    , _acwtlcXgafv :: !(Maybe Xgafv)
    , _acwtlcUploadProtocol :: !(Maybe Text)
    , _acwtlcAccessToken :: !(Maybe Text)
    , _acwtlcUploadType :: !(Maybe Text)
    , _acwtlcPageToken :: !(Maybe Text)
    , _acwtlcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtlcParent'
--
-- * 'acwtlcXgafv'
--
-- * 'acwtlcUploadProtocol'
--
-- * 'acwtlcAccessToken'
--
-- * 'acwtlcUploadType'
--
-- * 'acwtlcPageToken'
--
-- * 'acwtlcCallback'
accountsContainersWorkspacesTemplatesList
    :: Text -- ^ 'acwtlcParent'
    -> AccountsContainersWorkspacesTemplatesList
accountsContainersWorkspacesTemplatesList pAcwtlcParent_ =
  AccountsContainersWorkspacesTemplatesList'
    { _acwtlcParent = pAcwtlcParent_
    , _acwtlcXgafv = Nothing
    , _acwtlcUploadProtocol = Nothing
    , _acwtlcAccessToken = Nothing
    , _acwtlcUploadType = Nothing
    , _acwtlcPageToken = Nothing
    , _acwtlcCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtlcParent :: Lens' AccountsContainersWorkspacesTemplatesList Text
acwtlcParent
  = lens _acwtlcParent (\ s a -> s{_acwtlcParent = a})

-- | V1 error format.
acwtlcXgafv :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Xgafv)
acwtlcXgafv
  = lens _acwtlcXgafv (\ s a -> s{_acwtlcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtlcUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Text)
acwtlcUploadProtocol
  = lens _acwtlcUploadProtocol
      (\ s a -> s{_acwtlcUploadProtocol = a})

-- | OAuth access token.
acwtlcAccessToken :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Text)
acwtlcAccessToken
  = lens _acwtlcAccessToken
      (\ s a -> s{_acwtlcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtlcUploadType :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Text)
acwtlcUploadType
  = lens _acwtlcUploadType
      (\ s a -> s{_acwtlcUploadType = a})

-- | Continuation token for fetching the next page of results.
acwtlcPageToken :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Text)
acwtlcPageToken
  = lens _acwtlcPageToken
      (\ s a -> s{_acwtlcPageToken = a})

-- | JSONP
acwtlcCallback :: Lens' AccountsContainersWorkspacesTemplatesList (Maybe Text)
acwtlcCallback
  = lens _acwtlcCallback
      (\ s a -> s{_acwtlcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesList
         where
        type Rs AccountsContainersWorkspacesTemplatesList =
             ListTemplatesResponse
        type Scopes AccountsContainersWorkspacesTemplatesList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTemplatesList'{..}
          = go _acwtlcParent _acwtlcXgafv _acwtlcUploadProtocol
              _acwtlcAccessToken
              _acwtlcUploadType
              _acwtlcPageToken
              _acwtlcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesListResource)
                      mempty
