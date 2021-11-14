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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
    (
    -- * REST Resource
      AccountsContainersVersionsDeleteResource

    -- * Creating a Request
    , accountsContainersVersionsDelete
    , AccountsContainersVersionsDelete

    -- * Request Lenses
    , acvdXgafv
    , acvdUploadProtocol
    , acvdPath
    , acvdAccessToken
    , acvdUploadType
    , acvdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.delete@ method which the
-- 'AccountsContainersVersionsDelete' request conforms to.
type AccountsContainersVersionsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsDelete' smart constructor.
data AccountsContainersVersionsDelete =
  AccountsContainersVersionsDelete'
    { _acvdXgafv :: !(Maybe Xgafv)
    , _acvdUploadProtocol :: !(Maybe Text)
    , _acvdPath :: !Text
    , _acvdAccessToken :: !(Maybe Text)
    , _acvdUploadType :: !(Maybe Text)
    , _acvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdXgafv'
--
-- * 'acvdUploadProtocol'
--
-- * 'acvdPath'
--
-- * 'acvdAccessToken'
--
-- * 'acvdUploadType'
--
-- * 'acvdCallback'
accountsContainersVersionsDelete
    :: Text -- ^ 'acvdPath'
    -> AccountsContainersVersionsDelete
accountsContainersVersionsDelete pAcvdPath_ =
  AccountsContainersVersionsDelete'
    { _acvdXgafv = Nothing
    , _acvdUploadProtocol = Nothing
    , _acvdPath = pAcvdPath_
    , _acvdAccessToken = Nothing
    , _acvdUploadType = Nothing
    , _acvdCallback = Nothing
    }


-- | V1 error format.
acvdXgafv :: Lens' AccountsContainersVersionsDelete (Maybe Xgafv)
acvdXgafv
  = lens _acvdXgafv (\ s a -> s{_acvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvdUploadProtocol :: Lens' AccountsContainersVersionsDelete (Maybe Text)
acvdUploadProtocol
  = lens _acvdUploadProtocol
      (\ s a -> s{_acvdUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvdPath :: Lens' AccountsContainersVersionsDelete Text
acvdPath = lens _acvdPath (\ s a -> s{_acvdPath = a})

-- | OAuth access token.
acvdAccessToken :: Lens' AccountsContainersVersionsDelete (Maybe Text)
acvdAccessToken
  = lens _acvdAccessToken
      (\ s a -> s{_acvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvdUploadType :: Lens' AccountsContainersVersionsDelete (Maybe Text)
acvdUploadType
  = lens _acvdUploadType
      (\ s a -> s{_acvdUploadType = a})

-- | JSONP
acvdCallback :: Lens' AccountsContainersVersionsDelete (Maybe Text)
acvdCallback
  = lens _acvdCallback (\ s a -> s{_acvdCallback = a})

instance GoogleRequest
           AccountsContainersVersionsDelete
         where
        type Rs AccountsContainersVersionsDelete = ()
        type Scopes AccountsContainersVersionsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient AccountsContainersVersionsDelete'{..}
          = go _acvdPath _acvdXgafv _acvdUploadProtocol
              _acvdAccessToken
              _acvdUploadType
              _acvdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsDeleteResource)
                      mempty
