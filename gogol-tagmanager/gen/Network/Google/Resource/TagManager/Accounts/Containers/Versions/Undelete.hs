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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.undelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
    (
    -- * REST Resource
      AccountsContainersVersionsUndeleteResource

    -- * Creating a Request
    , accountsContainersVersionsUndelete
    , AccountsContainersVersionsUndelete

    -- * Request Lenses
    , acvuXgafv
    , acvuUploadProtocol
    , acvuPath
    , acvuAccessToken
    , acvuUploadType
    , acvuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.undelete@ method which the
-- 'AccountsContainersVersionsUndelete' request conforms to.
type AccountsContainersVersionsUndeleteResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "undelete" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsUndelete' smart constructor.
data AccountsContainersVersionsUndelete =
  AccountsContainersVersionsUndelete'
    { _acvuXgafv :: !(Maybe Xgafv)
    , _acvuUploadProtocol :: !(Maybe Text)
    , _acvuPath :: !Text
    , _acvuAccessToken :: !(Maybe Text)
    , _acvuUploadType :: !(Maybe Text)
    , _acvuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvuXgafv'
--
-- * 'acvuUploadProtocol'
--
-- * 'acvuPath'
--
-- * 'acvuAccessToken'
--
-- * 'acvuUploadType'
--
-- * 'acvuCallback'
accountsContainersVersionsUndelete
    :: Text -- ^ 'acvuPath'
    -> AccountsContainersVersionsUndelete
accountsContainersVersionsUndelete pAcvuPath_ =
  AccountsContainersVersionsUndelete'
    { _acvuXgafv = Nothing
    , _acvuUploadProtocol = Nothing
    , _acvuPath = pAcvuPath_
    , _acvuAccessToken = Nothing
    , _acvuUploadType = Nothing
    , _acvuCallback = Nothing
    }


-- | V1 error format.
acvuXgafv :: Lens' AccountsContainersVersionsUndelete (Maybe Xgafv)
acvuXgafv
  = lens _acvuXgafv (\ s a -> s{_acvuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvuUploadProtocol :: Lens' AccountsContainersVersionsUndelete (Maybe Text)
acvuUploadProtocol
  = lens _acvuUploadProtocol
      (\ s a -> s{_acvuUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvuPath :: Lens' AccountsContainersVersionsUndelete Text
acvuPath = lens _acvuPath (\ s a -> s{_acvuPath = a})

-- | OAuth access token.
acvuAccessToken :: Lens' AccountsContainersVersionsUndelete (Maybe Text)
acvuAccessToken
  = lens _acvuAccessToken
      (\ s a -> s{_acvuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvuUploadType :: Lens' AccountsContainersVersionsUndelete (Maybe Text)
acvuUploadType
  = lens _acvuUploadType
      (\ s a -> s{_acvuUploadType = a})

-- | JSONP
acvuCallback :: Lens' AccountsContainersVersionsUndelete (Maybe Text)
acvuCallback
  = lens _acvuCallback (\ s a -> s{_acvuCallback = a})

instance GoogleRequest
           AccountsContainersVersionsUndelete
         where
        type Rs AccountsContainersVersionsUndelete =
             ContainerVersion
        type Scopes AccountsContainersVersionsUndelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient AccountsContainersVersionsUndelete'{..}
          = go _acvuPath _acvuXgafv _acvuUploadProtocol
              _acvuAccessToken
              _acvuUploadType
              _acvuCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteResource)
                      mempty
