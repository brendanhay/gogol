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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
    (
    -- * REST Resource
      AccountsContainersVersionsGetResource

    -- * Creating a Request
    , accountsContainersVersionsGet
    , AccountsContainersVersionsGet

    -- * Request Lenses
    , acvgXgafv
    , acvgUploadProtocol
    , acvgPath
    , acvgAccessToken
    , acvgContainerVersionId
    , acvgUploadType
    , acvgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.get@ method which the
-- 'AccountsContainersVersionsGet' request conforms to.
type AccountsContainersVersionsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "containerVersionId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ContainerVersion

-- | Gets a Container Version.
--
-- /See:/ 'accountsContainersVersionsGet' smart constructor.
data AccountsContainersVersionsGet =
  AccountsContainersVersionsGet'
    { _acvgXgafv :: !(Maybe Xgafv)
    , _acvgUploadProtocol :: !(Maybe Text)
    , _acvgPath :: !Text
    , _acvgAccessToken :: !(Maybe Text)
    , _acvgContainerVersionId :: !(Maybe Text)
    , _acvgUploadType :: !(Maybe Text)
    , _acvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgXgafv'
--
-- * 'acvgUploadProtocol'
--
-- * 'acvgPath'
--
-- * 'acvgAccessToken'
--
-- * 'acvgContainerVersionId'
--
-- * 'acvgUploadType'
--
-- * 'acvgCallback'
accountsContainersVersionsGet
    :: Text -- ^ 'acvgPath'
    -> AccountsContainersVersionsGet
accountsContainersVersionsGet pAcvgPath_ =
  AccountsContainersVersionsGet'
    { _acvgXgafv = Nothing
    , _acvgUploadProtocol = Nothing
    , _acvgPath = pAcvgPath_
    , _acvgAccessToken = Nothing
    , _acvgContainerVersionId = Nothing
    , _acvgUploadType = Nothing
    , _acvgCallback = Nothing
    }


-- | V1 error format.
acvgXgafv :: Lens' AccountsContainersVersionsGet (Maybe Xgafv)
acvgXgafv
  = lens _acvgXgafv (\ s a -> s{_acvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvgUploadProtocol :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgUploadProtocol
  = lens _acvgUploadProtocol
      (\ s a -> s{_acvgUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvgPath :: Lens' AccountsContainersVersionsGet Text
acvgPath = lens _acvgPath (\ s a -> s{_acvgPath = a})

-- | OAuth access token.
acvgAccessToken :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgAccessToken
  = lens _acvgAccessToken
      (\ s a -> s{_acvgAccessToken = a})

-- | The GTM ContainerVersion ID. Specify published to retrieve the currently
-- published version.
acvgContainerVersionId :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgContainerVersionId
  = lens _acvgContainerVersionId
      (\ s a -> s{_acvgContainerVersionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvgUploadType :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgUploadType
  = lens _acvgUploadType
      (\ s a -> s{_acvgUploadType = a})

-- | JSONP
acvgCallback :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgCallback
  = lens _acvgCallback (\ s a -> s{_acvgCallback = a})

instance GoogleRequest AccountsContainersVersionsGet
         where
        type Rs AccountsContainersVersionsGet =
             ContainerVersion
        type Scopes AccountsContainersVersionsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersVersionsGet'{..}
          = go _acvgPath _acvgXgafv _acvgUploadProtocol
              _acvgAccessToken
              _acvgContainerVersionId
              _acvgUploadType
              _acvgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsGetResource)
                      mempty
