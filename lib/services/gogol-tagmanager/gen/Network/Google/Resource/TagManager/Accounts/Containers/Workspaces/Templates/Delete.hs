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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesDelete
    , AccountsContainersWorkspacesTemplatesDelete

    -- * Request Lenses
    , acwtdcXgafv
    , acwtdcUploadProtocol
    , acwtdcPath
    , acwtdcAccessToken
    , acwtdcUploadType
    , acwtdcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.delete@ method which the
-- 'AccountsContainersWorkspacesTemplatesDelete' request conforms to.
type AccountsContainersWorkspacesTemplatesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Template.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesDelete' smart constructor.
data AccountsContainersWorkspacesTemplatesDelete =
  AccountsContainersWorkspacesTemplatesDelete'
    { _acwtdcXgafv :: !(Maybe Xgafv)
    , _acwtdcUploadProtocol :: !(Maybe Text)
    , _acwtdcPath :: !Text
    , _acwtdcAccessToken :: !(Maybe Text)
    , _acwtdcUploadType :: !(Maybe Text)
    , _acwtdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtdcXgafv'
--
-- * 'acwtdcUploadProtocol'
--
-- * 'acwtdcPath'
--
-- * 'acwtdcAccessToken'
--
-- * 'acwtdcUploadType'
--
-- * 'acwtdcCallback'
accountsContainersWorkspacesTemplatesDelete
    :: Text -- ^ 'acwtdcPath'
    -> AccountsContainersWorkspacesTemplatesDelete
accountsContainersWorkspacesTemplatesDelete pAcwtdcPath_ =
  AccountsContainersWorkspacesTemplatesDelete'
    { _acwtdcXgafv = Nothing
    , _acwtdcUploadProtocol = Nothing
    , _acwtdcPath = pAcwtdcPath_
    , _acwtdcAccessToken = Nothing
    , _acwtdcUploadType = Nothing
    , _acwtdcCallback = Nothing
    }


-- | V1 error format.
acwtdcXgafv :: Lens' AccountsContainersWorkspacesTemplatesDelete (Maybe Xgafv)
acwtdcXgafv
  = lens _acwtdcXgafv (\ s a -> s{_acwtdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtdcUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesDelete (Maybe Text)
acwtdcUploadProtocol
  = lens _acwtdcUploadProtocol
      (\ s a -> s{_acwtdcUploadProtocol = a})

-- | GTM Custom Template\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/templates\/{template_id}
acwtdcPath :: Lens' AccountsContainersWorkspacesTemplatesDelete Text
acwtdcPath
  = lens _acwtdcPath (\ s a -> s{_acwtdcPath = a})

-- | OAuth access token.
acwtdcAccessToken :: Lens' AccountsContainersWorkspacesTemplatesDelete (Maybe Text)
acwtdcAccessToken
  = lens _acwtdcAccessToken
      (\ s a -> s{_acwtdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtdcUploadType :: Lens' AccountsContainersWorkspacesTemplatesDelete (Maybe Text)
acwtdcUploadType
  = lens _acwtdcUploadType
      (\ s a -> s{_acwtdcUploadType = a})

-- | JSONP
acwtdcCallback :: Lens' AccountsContainersWorkspacesTemplatesDelete (Maybe Text)
acwtdcCallback
  = lens _acwtdcCallback
      (\ s a -> s{_acwtdcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesDelete
         where
        type Rs AccountsContainersWorkspacesTemplatesDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesTemplatesDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTemplatesDelete'{..}
          = go _acwtdcPath _acwtdcXgafv _acwtdcUploadProtocol
              _acwtdcAccessToken
              _acwtdcUploadType
              _acwtdcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesDeleteResource)
                      mempty
