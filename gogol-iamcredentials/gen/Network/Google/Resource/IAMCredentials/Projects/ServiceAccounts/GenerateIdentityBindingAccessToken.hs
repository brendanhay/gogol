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
-- Module      : Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdentityBindingAccessToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.generateIdentityBindingAccessToken@.
module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdentityBindingAccessToken
    (
    -- * REST Resource
      ProjectsServiceAccountsGenerateIdentityBindingAccessTokenResource

    -- * Creating a Request
    , projectsServiceAccountsGenerateIdentityBindingAccessToken
    , ProjectsServiceAccountsGenerateIdentityBindingAccessToken

    -- * Request Lenses
    , psagibatXgafv
    , psagibatUploadProtocol
    , psagibatAccessToken
    , psagibatUploadType
    , psagibatPayload
    , psagibatName
    , psagibatCallback
    ) where

import           Network.Google.IAMCredentials.Types
import           Network.Google.Prelude

-- | A resource alias for @iamcredentials.projects.serviceAccounts.generateIdentityBindingAccessToken@ method which the
-- 'ProjectsServiceAccountsGenerateIdentityBindingAccessToken' request conforms to.
type ProjectsServiceAccountsGenerateIdentityBindingAccessTokenResource
     =
     "v1" :>
       CaptureMode "name"
         "generateIdentityBindingAccessToken"
         Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GenerateIdentityBindingAccessTokenRequest
                       :>
                       Post '[JSON]
                         GenerateIdentityBindingAccessTokenResponse

-- |
--
-- /See:/ 'projectsServiceAccountsGenerateIdentityBindingAccessToken' smart constructor.
data ProjectsServiceAccountsGenerateIdentityBindingAccessToken =
  ProjectsServiceAccountsGenerateIdentityBindingAccessToken'
    { _psagibatXgafv          :: !(Maybe Xgafv)
    , _psagibatUploadProtocol :: !(Maybe Text)
    , _psagibatAccessToken    :: !(Maybe Text)
    , _psagibatUploadType     :: !(Maybe Text)
    , _psagibatPayload        :: !GenerateIdentityBindingAccessTokenRequest
    , _psagibatName           :: !Text
    , _psagibatCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsGenerateIdentityBindingAccessToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagibatXgafv'
--
-- * 'psagibatUploadProtocol'
--
-- * 'psagibatAccessToken'
--
-- * 'psagibatUploadType'
--
-- * 'psagibatPayload'
--
-- * 'psagibatName'
--
-- * 'psagibatCallback'
projectsServiceAccountsGenerateIdentityBindingAccessToken
    :: GenerateIdentityBindingAccessTokenRequest -- ^ 'psagibatPayload'
    -> Text -- ^ 'psagibatName'
    -> ProjectsServiceAccountsGenerateIdentityBindingAccessToken
projectsServiceAccountsGenerateIdentityBindingAccessToken pPsagibatPayload_ pPsagibatName_ =
  ProjectsServiceAccountsGenerateIdentityBindingAccessToken'
    { _psagibatXgafv = Nothing
    , _psagibatUploadProtocol = Nothing
    , _psagibatAccessToken = Nothing
    , _psagibatUploadType = Nothing
    , _psagibatPayload = pPsagibatPayload_
    , _psagibatName = pPsagibatName_
    , _psagibatCallback = Nothing
    }


-- | V1 error format.
psagibatXgafv :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken (Maybe Xgafv)
psagibatXgafv
  = lens _psagibatXgafv
      (\ s a -> s{_psagibatXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagibatUploadProtocol :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken (Maybe Text)
psagibatUploadProtocol
  = lens _psagibatUploadProtocol
      (\ s a -> s{_psagibatUploadProtocol = a})

-- | OAuth access token.
psagibatAccessToken :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken (Maybe Text)
psagibatAccessToken
  = lens _psagibatAccessToken
      (\ s a -> s{_psagibatAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psagibatUploadType :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken (Maybe Text)
psagibatUploadType
  = lens _psagibatUploadType
      (\ s a -> s{_psagibatUploadType = a})

-- | Multipart request metadata.
psagibatPayload :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken GenerateIdentityBindingAccessTokenRequest
psagibatPayload
  = lens _psagibatPayload
      (\ s a -> s{_psagibatPayload = a})

-- | The resource name of the service account for which the credentials are
-- requested, in the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`. The \`-\`
-- wildcard character is required; replacing it with a project ID is
-- invalid.
psagibatName :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken Text
psagibatName
  = lens _psagibatName (\ s a -> s{_psagibatName = a})

-- | JSONP
psagibatCallback :: Lens' ProjectsServiceAccountsGenerateIdentityBindingAccessToken (Maybe Text)
psagibatCallback
  = lens _psagibatCallback
      (\ s a -> s{_psagibatCallback = a})

instance GoogleRequest
           ProjectsServiceAccountsGenerateIdentityBindingAccessToken
         where
        type Rs
               ProjectsServiceAccountsGenerateIdentityBindingAccessToken
             = GenerateIdentityBindingAccessTokenResponse
        type Scopes
               ProjectsServiceAccountsGenerateIdentityBindingAccessToken
             = '[]
        requestClient
          ProjectsServiceAccountsGenerateIdentityBindingAccessToken'{..}
          = go _psagibatName _psagibatXgafv
              _psagibatUploadProtocol
              _psagibatAccessToken
              _psagibatUploadType
              _psagibatCallback
              (Just AltJSON)
              _psagibatPayload
              iAMCredentialsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsServiceAccountsGenerateIdentityBindingAccessTokenResource)
                      mempty
