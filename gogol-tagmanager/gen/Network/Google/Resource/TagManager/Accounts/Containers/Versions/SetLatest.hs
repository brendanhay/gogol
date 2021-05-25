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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the latest version used for synchronization of workspaces when
-- detecting conflicts and errors.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.set_latest@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.SetLatest
    (
    -- * REST Resource
      AccountsContainersVersionsSetLatestResource

    -- * Creating a Request
    , accountsContainersVersionsSetLatest
    , AccountsContainersVersionsSetLatest

    -- * Request Lenses
    , acvslXgafv
    , acvslUploadProtocol
    , acvslPath
    , acvslAccessToken
    , acvslUploadType
    , acvslCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.set_latest@ method which the
-- 'AccountsContainersVersionsSetLatest' request conforms to.
type AccountsContainersVersionsSetLatestResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "set_latest" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] ContainerVersion

-- | Sets the latest version used for synchronization of workspaces when
-- detecting conflicts and errors.
--
-- /See:/ 'accountsContainersVersionsSetLatest' smart constructor.
data AccountsContainersVersionsSetLatest =
  AccountsContainersVersionsSetLatest'
    { _acvslXgafv :: !(Maybe Xgafv)
    , _acvslUploadProtocol :: !(Maybe Text)
    , _acvslPath :: !Text
    , _acvslAccessToken :: !(Maybe Text)
    , _acvslUploadType :: !(Maybe Text)
    , _acvslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsSetLatest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvslXgafv'
--
-- * 'acvslUploadProtocol'
--
-- * 'acvslPath'
--
-- * 'acvslAccessToken'
--
-- * 'acvslUploadType'
--
-- * 'acvslCallback'
accountsContainersVersionsSetLatest
    :: Text -- ^ 'acvslPath'
    -> AccountsContainersVersionsSetLatest
accountsContainersVersionsSetLatest pAcvslPath_ =
  AccountsContainersVersionsSetLatest'
    { _acvslXgafv = Nothing
    , _acvslUploadProtocol = Nothing
    , _acvslPath = pAcvslPath_
    , _acvslAccessToken = Nothing
    , _acvslUploadType = Nothing
    , _acvslCallback = Nothing
    }


-- | V1 error format.
acvslXgafv :: Lens' AccountsContainersVersionsSetLatest (Maybe Xgafv)
acvslXgafv
  = lens _acvslXgafv (\ s a -> s{_acvslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvslUploadProtocol :: Lens' AccountsContainersVersionsSetLatest (Maybe Text)
acvslUploadProtocol
  = lens _acvslUploadProtocol
      (\ s a -> s{_acvslUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvslPath :: Lens' AccountsContainersVersionsSetLatest Text
acvslPath
  = lens _acvslPath (\ s a -> s{_acvslPath = a})

-- | OAuth access token.
acvslAccessToken :: Lens' AccountsContainersVersionsSetLatest (Maybe Text)
acvslAccessToken
  = lens _acvslAccessToken
      (\ s a -> s{_acvslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvslUploadType :: Lens' AccountsContainersVersionsSetLatest (Maybe Text)
acvslUploadType
  = lens _acvslUploadType
      (\ s a -> s{_acvslUploadType = a})

-- | JSONP
acvslCallback :: Lens' AccountsContainersVersionsSetLatest (Maybe Text)
acvslCallback
  = lens _acvslCallback
      (\ s a -> s{_acvslCallback = a})

instance GoogleRequest
           AccountsContainersVersionsSetLatest
         where
        type Rs AccountsContainersVersionsSetLatest =
             ContainerVersion
        type Scopes AccountsContainersVersionsSetLatest =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersVersionsSetLatest'{..}
          = go _acvslPath _acvslXgafv _acvslUploadProtocol
              _acvslAccessToken
              _acvslUploadType
              _acvslCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsSetLatestResource)
                      mempty
