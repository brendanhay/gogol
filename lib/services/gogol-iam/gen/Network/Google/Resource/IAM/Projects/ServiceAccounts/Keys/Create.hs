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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ServiceAccountKey.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.create@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
    (
    -- * REST Resource
      ProjectsServiceAccountsKeysCreateResource

    -- * Creating a Request
    , projectsServiceAccountsKeysCreate
    , ProjectsServiceAccountsKeysCreate

    -- * Request Lenses
    , psakcXgafv
    , psakcUploadProtocol
    , psakcAccessToken
    , psakcUploadType
    , psakcPayload
    , psakcName
    , psakcCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.create@ method which the
-- 'ProjectsServiceAccountsKeysCreate' request conforms to.
type ProjectsServiceAccountsKeysCreateResource =
     "v1" :>
       Capture "name" Text :>
         "keys" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateServiceAccountKeyRequest :>
                         Post '[JSON] ServiceAccountKey

-- | Creates a ServiceAccountKey.
--
-- /See:/ 'projectsServiceAccountsKeysCreate' smart constructor.
data ProjectsServiceAccountsKeysCreate =
  ProjectsServiceAccountsKeysCreate'
    { _psakcXgafv :: !(Maybe Xgafv)
    , _psakcUploadProtocol :: !(Maybe Text)
    , _psakcAccessToken :: !(Maybe Text)
    , _psakcUploadType :: !(Maybe Text)
    , _psakcPayload :: !CreateServiceAccountKeyRequest
    , _psakcName :: !Text
    , _psakcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsKeysCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psakcXgafv'
--
-- * 'psakcUploadProtocol'
--
-- * 'psakcAccessToken'
--
-- * 'psakcUploadType'
--
-- * 'psakcPayload'
--
-- * 'psakcName'
--
-- * 'psakcCallback'
projectsServiceAccountsKeysCreate
    :: CreateServiceAccountKeyRequest -- ^ 'psakcPayload'
    -> Text -- ^ 'psakcName'
    -> ProjectsServiceAccountsKeysCreate
projectsServiceAccountsKeysCreate pPsakcPayload_ pPsakcName_ =
  ProjectsServiceAccountsKeysCreate'
    { _psakcXgafv = Nothing
    , _psakcUploadProtocol = Nothing
    , _psakcAccessToken = Nothing
    , _psakcUploadType = Nothing
    , _psakcPayload = pPsakcPayload_
    , _psakcName = pPsakcName_
    , _psakcCallback = Nothing
    }


-- | V1 error format.
psakcXgafv :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Xgafv)
psakcXgafv
  = lens _psakcXgafv (\ s a -> s{_psakcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psakcUploadProtocol :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcUploadProtocol
  = lens _psakcUploadProtocol
      (\ s a -> s{_psakcUploadProtocol = a})

-- | OAuth access token.
psakcAccessToken :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcAccessToken
  = lens _psakcAccessToken
      (\ s a -> s{_psakcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psakcUploadType :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcUploadType
  = lens _psakcUploadType
      (\ s a -> s{_psakcUploadType = a})

-- | Multipart request metadata.
psakcPayload :: Lens' ProjectsServiceAccountsKeysCreate CreateServiceAccountKeyRequest
psakcPayload
  = lens _psakcPayload (\ s a -> s{_psakcPayload = a})

-- | Required. The resource name of the service account in the following
-- format: \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the account. The \`ACCOUNT\` value can be the \`email\` address or the
-- \`unique_id\` of the service account.
psakcName :: Lens' ProjectsServiceAccountsKeysCreate Text
psakcName
  = lens _psakcName (\ s a -> s{_psakcName = a})

-- | JSONP
psakcCallback :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcCallback
  = lens _psakcCallback
      (\ s a -> s{_psakcCallback = a})

instance GoogleRequest
           ProjectsServiceAccountsKeysCreate
         where
        type Rs ProjectsServiceAccountsKeysCreate =
             ServiceAccountKey
        type Scopes ProjectsServiceAccountsKeysCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsKeysCreate'{..}
          = go _psakcName _psakcXgafv _psakcUploadProtocol
              _psakcAccessToken
              _psakcUploadType
              _psakcCallback
              (Just AltJSON)
              _psakcPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysCreateResource)
                      mempty
