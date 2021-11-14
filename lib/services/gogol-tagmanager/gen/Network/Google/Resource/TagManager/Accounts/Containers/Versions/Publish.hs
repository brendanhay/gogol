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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.publish@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
    (
    -- * REST Resource
      AccountsContainersVersionsPublishResource

    -- * Creating a Request
    , accountsContainersVersionsPublish
    , AccountsContainersVersionsPublish

    -- * Request Lenses
    , acvpXgafv
    , acvpUploadProtocol
    , acvpPath
    , acvpFingerprint
    , acvpAccessToken
    , acvpUploadType
    , acvpCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.publish@ method which the
-- 'AccountsContainersVersionsPublish' request conforms to.
type AccountsContainersVersionsPublishResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "publish" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] PublishContainerVersionResponse

-- | Publishes a Container Version.
--
-- /See:/ 'accountsContainersVersionsPublish' smart constructor.
data AccountsContainersVersionsPublish =
  AccountsContainersVersionsPublish'
    { _acvpXgafv :: !(Maybe Xgafv)
    , _acvpUploadProtocol :: !(Maybe Text)
    , _acvpPath :: !Text
    , _acvpFingerprint :: !(Maybe Text)
    , _acvpAccessToken :: !(Maybe Text)
    , _acvpUploadType :: !(Maybe Text)
    , _acvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvpXgafv'
--
-- * 'acvpUploadProtocol'
--
-- * 'acvpPath'
--
-- * 'acvpFingerprint'
--
-- * 'acvpAccessToken'
--
-- * 'acvpUploadType'
--
-- * 'acvpCallback'
accountsContainersVersionsPublish
    :: Text -- ^ 'acvpPath'
    -> AccountsContainersVersionsPublish
accountsContainersVersionsPublish pAcvpPath_ =
  AccountsContainersVersionsPublish'
    { _acvpXgafv = Nothing
    , _acvpUploadProtocol = Nothing
    , _acvpPath = pAcvpPath_
    , _acvpFingerprint = Nothing
    , _acvpAccessToken = Nothing
    , _acvpUploadType = Nothing
    , _acvpCallback = Nothing
    }


-- | V1 error format.
acvpXgafv :: Lens' AccountsContainersVersionsPublish (Maybe Xgafv)
acvpXgafv
  = lens _acvpXgafv (\ s a -> s{_acvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvpUploadProtocol :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpUploadProtocol
  = lens _acvpUploadProtocol
      (\ s a -> s{_acvpUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvpPath :: Lens' AccountsContainersVersionsPublish Text
acvpPath = lens _acvpPath (\ s a -> s{_acvpPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvpFingerprint :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpFingerprint
  = lens _acvpFingerprint
      (\ s a -> s{_acvpFingerprint = a})

-- | OAuth access token.
acvpAccessToken :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpAccessToken
  = lens _acvpAccessToken
      (\ s a -> s{_acvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvpUploadType :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpUploadType
  = lens _acvpUploadType
      (\ s a -> s{_acvpUploadType = a})

-- | JSONP
acvpCallback :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpCallback
  = lens _acvpCallback (\ s a -> s{_acvpCallback = a})

instance GoogleRequest
           AccountsContainersVersionsPublish
         where
        type Rs AccountsContainersVersionsPublish =
             PublishContainerVersionResponse
        type Scopes AccountsContainersVersionsPublish =
             '["https://www.googleapis.com/auth/tagmanager.publish"]
        requestClient AccountsContainersVersionsPublish'{..}
          = go _acvpPath _acvpXgafv _acvpUploadProtocol
              _acvpFingerprint
              _acvpAccessToken
              _acvpUploadType
              _acvpCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsPublishResource)
                      mempty
