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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest container version header
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.version_headers.latest@.
module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.Latest
    (
    -- * REST Resource
      AccountsContainersVersionHeadersLatestResource

    -- * Creating a Request
    , accountsContainersVersionHeadersLatest
    , AccountsContainersVersionHeadersLatest

    -- * Request Lenses
    , acvhlParent
    , acvhlXgafv
    , acvhlUploadProtocol
    , acvhlAccessToken
    , acvhlUploadType
    , acvhlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.version_headers.latest@ method which the
-- 'AccountsContainersVersionHeadersLatest' request conforms to.
type AccountsContainersVersionHeadersLatestResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "version_headers:latest" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ContainerVersionHeader

-- | Gets the latest container version header
--
-- /See:/ 'accountsContainersVersionHeadersLatest' smart constructor.
data AccountsContainersVersionHeadersLatest =
  AccountsContainersVersionHeadersLatest'
    { _acvhlParent :: !Text
    , _acvhlXgafv :: !(Maybe Xgafv)
    , _acvhlUploadProtocol :: !(Maybe Text)
    , _acvhlAccessToken :: !(Maybe Text)
    , _acvhlUploadType :: !(Maybe Text)
    , _acvhlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionHeadersLatest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvhlParent'
--
-- * 'acvhlXgafv'
--
-- * 'acvhlUploadProtocol'
--
-- * 'acvhlAccessToken'
--
-- * 'acvhlUploadType'
--
-- * 'acvhlCallback'
accountsContainersVersionHeadersLatest
    :: Text -- ^ 'acvhlParent'
    -> AccountsContainersVersionHeadersLatest
accountsContainersVersionHeadersLatest pAcvhlParent_ =
  AccountsContainersVersionHeadersLatest'
    { _acvhlParent = pAcvhlParent_
    , _acvhlXgafv = Nothing
    , _acvhlUploadProtocol = Nothing
    , _acvhlAccessToken = Nothing
    , _acvhlUploadType = Nothing
    , _acvhlCallback = Nothing
    }


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acvhlParent :: Lens' AccountsContainersVersionHeadersLatest Text
acvhlParent
  = lens _acvhlParent (\ s a -> s{_acvhlParent = a})

-- | V1 error format.
acvhlXgafv :: Lens' AccountsContainersVersionHeadersLatest (Maybe Xgafv)
acvhlXgafv
  = lens _acvhlXgafv (\ s a -> s{_acvhlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvhlUploadProtocol :: Lens' AccountsContainersVersionHeadersLatest (Maybe Text)
acvhlUploadProtocol
  = lens _acvhlUploadProtocol
      (\ s a -> s{_acvhlUploadProtocol = a})

-- | OAuth access token.
acvhlAccessToken :: Lens' AccountsContainersVersionHeadersLatest (Maybe Text)
acvhlAccessToken
  = lens _acvhlAccessToken
      (\ s a -> s{_acvhlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvhlUploadType :: Lens' AccountsContainersVersionHeadersLatest (Maybe Text)
acvhlUploadType
  = lens _acvhlUploadType
      (\ s a -> s{_acvhlUploadType = a})

-- | JSONP
acvhlCallback :: Lens' AccountsContainersVersionHeadersLatest (Maybe Text)
acvhlCallback
  = lens _acvhlCallback
      (\ s a -> s{_acvhlCallback = a})

instance GoogleRequest
           AccountsContainersVersionHeadersLatest
         where
        type Rs AccountsContainersVersionHeadersLatest =
             ContainerVersionHeader
        type Scopes AccountsContainersVersionHeadersLatest =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersVersionHeadersLatest'{..}
          = go _acvhlParent _acvhlXgafv _acvhlUploadProtocol
              _acvhlAccessToken
              _acvhlUploadType
              _acvhlCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionHeadersLatestResource)
                      mempty
