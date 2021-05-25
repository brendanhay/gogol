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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
    (
    -- * REST Resource
      AccountsContainersEnvironmentsUpdateResource

    -- * Creating a Request
    , accountsContainersEnvironmentsUpdate
    , AccountsContainersEnvironmentsUpdate

    -- * Request Lenses
    , aceuXgafv
    , aceuUploadProtocol
    , aceuPath
    , aceuFingerprint
    , aceuAccessToken
    , aceuUploadType
    , aceuPayload
    , aceuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.update@ method which the
-- 'AccountsContainersEnvironmentsUpdate' request conforms to.
type AccountsContainersEnvironmentsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Environment :>
                           Put '[JSON] Environment

-- | Updates a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsUpdate' smart constructor.
data AccountsContainersEnvironmentsUpdate =
  AccountsContainersEnvironmentsUpdate'
    { _aceuXgafv :: !(Maybe Xgafv)
    , _aceuUploadProtocol :: !(Maybe Text)
    , _aceuPath :: !Text
    , _aceuFingerprint :: !(Maybe Text)
    , _aceuAccessToken :: !(Maybe Text)
    , _aceuUploadType :: !(Maybe Text)
    , _aceuPayload :: !Environment
    , _aceuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aceuXgafv'
--
-- * 'aceuUploadProtocol'
--
-- * 'aceuPath'
--
-- * 'aceuFingerprint'
--
-- * 'aceuAccessToken'
--
-- * 'aceuUploadType'
--
-- * 'aceuPayload'
--
-- * 'aceuCallback'
accountsContainersEnvironmentsUpdate
    :: Text -- ^ 'aceuPath'
    -> Environment -- ^ 'aceuPayload'
    -> AccountsContainersEnvironmentsUpdate
accountsContainersEnvironmentsUpdate pAceuPath_ pAceuPayload_ =
  AccountsContainersEnvironmentsUpdate'
    { _aceuXgafv = Nothing
    , _aceuUploadProtocol = Nothing
    , _aceuPath = pAceuPath_
    , _aceuFingerprint = Nothing
    , _aceuAccessToken = Nothing
    , _aceuUploadType = Nothing
    , _aceuPayload = pAceuPayload_
    , _aceuCallback = Nothing
    }


-- | V1 error format.
aceuXgafv :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Xgafv)
aceuXgafv
  = lens _aceuXgafv (\ s a -> s{_aceuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aceuUploadProtocol :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuUploadProtocol
  = lens _aceuUploadProtocol
      (\ s a -> s{_aceuUploadProtocol = a})

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
aceuPath :: Lens' AccountsContainersEnvironmentsUpdate Text
aceuPath = lens _aceuPath (\ s a -> s{_aceuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- environment in storage.
aceuFingerprint :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuFingerprint
  = lens _aceuFingerprint
      (\ s a -> s{_aceuFingerprint = a})

-- | OAuth access token.
aceuAccessToken :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuAccessToken
  = lens _aceuAccessToken
      (\ s a -> s{_aceuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aceuUploadType :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuUploadType
  = lens _aceuUploadType
      (\ s a -> s{_aceuUploadType = a})

-- | Multipart request metadata.
aceuPayload :: Lens' AccountsContainersEnvironmentsUpdate Environment
aceuPayload
  = lens _aceuPayload (\ s a -> s{_aceuPayload = a})

-- | JSONP
aceuCallback :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuCallback
  = lens _aceuCallback (\ s a -> s{_aceuCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsUpdate
         where
        type Rs AccountsContainersEnvironmentsUpdate =
             Environment
        type Scopes AccountsContainersEnvironmentsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsUpdate'{..}
          = go _aceuPath _aceuXgafv _aceuUploadProtocol
              _aceuFingerprint
              _aceuAccessToken
              _aceuUploadType
              _aceuCallback
              (Just AltJSON)
              _aceuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsUpdateResource)
                      mempty
