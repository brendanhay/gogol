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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Upload
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ServiceAccountKey, using a public key that you provide.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.upload@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Upload
    (
    -- * REST Resource
      ProjectsServiceAccountsKeysUploadResource

    -- * Creating a Request
    , projectsServiceAccountsKeysUpload
    , ProjectsServiceAccountsKeysUpload

    -- * Request Lenses
    , psakuXgafv
    , psakuUploadProtocol
    , psakuAccessToken
    , psakuUploadType
    , psakuPayload
    , psakuName
    , psakuCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.upload@ method which the
-- 'ProjectsServiceAccountsKeysUpload' request conforms to.
type ProjectsServiceAccountsKeysUploadResource =
     "v1" :>
       Capture "name" Text :>
         "keys:upload" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UploadServiceAccountKeyRequest :>
                         Post '[JSON] ServiceAccountKey

-- | Creates a ServiceAccountKey, using a public key that you provide.
--
-- /See:/ 'projectsServiceAccountsKeysUpload' smart constructor.
data ProjectsServiceAccountsKeysUpload =
  ProjectsServiceAccountsKeysUpload'
    { _psakuXgafv :: !(Maybe Xgafv)
    , _psakuUploadProtocol :: !(Maybe Text)
    , _psakuAccessToken :: !(Maybe Text)
    , _psakuUploadType :: !(Maybe Text)
    , _psakuPayload :: !UploadServiceAccountKeyRequest
    , _psakuName :: !Text
    , _psakuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsKeysUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psakuXgafv'
--
-- * 'psakuUploadProtocol'
--
-- * 'psakuAccessToken'
--
-- * 'psakuUploadType'
--
-- * 'psakuPayload'
--
-- * 'psakuName'
--
-- * 'psakuCallback'
projectsServiceAccountsKeysUpload
    :: UploadServiceAccountKeyRequest -- ^ 'psakuPayload'
    -> Text -- ^ 'psakuName'
    -> ProjectsServiceAccountsKeysUpload
projectsServiceAccountsKeysUpload pPsakuPayload_ pPsakuName_ =
  ProjectsServiceAccountsKeysUpload'
    { _psakuXgafv = Nothing
    , _psakuUploadProtocol = Nothing
    , _psakuAccessToken = Nothing
    , _psakuUploadType = Nothing
    , _psakuPayload = pPsakuPayload_
    , _psakuName = pPsakuName_
    , _psakuCallback = Nothing
    }


-- | V1 error format.
psakuXgafv :: Lens' ProjectsServiceAccountsKeysUpload (Maybe Xgafv)
psakuXgafv
  = lens _psakuXgafv (\ s a -> s{_psakuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psakuUploadProtocol :: Lens' ProjectsServiceAccountsKeysUpload (Maybe Text)
psakuUploadProtocol
  = lens _psakuUploadProtocol
      (\ s a -> s{_psakuUploadProtocol = a})

-- | OAuth access token.
psakuAccessToken :: Lens' ProjectsServiceAccountsKeysUpload (Maybe Text)
psakuAccessToken
  = lens _psakuAccessToken
      (\ s a -> s{_psakuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psakuUploadType :: Lens' ProjectsServiceAccountsKeysUpload (Maybe Text)
psakuUploadType
  = lens _psakuUploadType
      (\ s a -> s{_psakuUploadType = a})

-- | Multipart request metadata.
psakuPayload :: Lens' ProjectsServiceAccountsKeysUpload UploadServiceAccountKeyRequest
psakuPayload
  = lens _psakuPayload (\ s a -> s{_psakuPayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using \`-\` as a
-- wildcard for the \`PROJECT_ID\` will infer the project from the account.
-- The \`ACCOUNT\` value can be the \`email\` address or the \`unique_id\`
-- of the service account.
psakuName :: Lens' ProjectsServiceAccountsKeysUpload Text
psakuName
  = lens _psakuName (\ s a -> s{_psakuName = a})

-- | JSONP
psakuCallback :: Lens' ProjectsServiceAccountsKeysUpload (Maybe Text)
psakuCallback
  = lens _psakuCallback
      (\ s a -> s{_psakuCallback = a})

instance GoogleRequest
           ProjectsServiceAccountsKeysUpload
         where
        type Rs ProjectsServiceAccountsKeysUpload =
             ServiceAccountKey
        type Scopes ProjectsServiceAccountsKeysUpload =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsKeysUpload'{..}
          = go _psakuName _psakuXgafv _psakuUploadProtocol
              _psakuAccessToken
              _psakuUploadType
              _psakuCallback
              (Just AltJSON)
              _psakuPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysUploadResource)
                      mempty
