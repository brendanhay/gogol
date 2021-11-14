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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Enable
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables a ServiceAccount that was disabled by DisableServiceAccount. If
-- the service account is already enabled, then this method has no effect.
-- If the service account was disabled by other means—for example, if
-- Google disabled the service account because it was compromised—you
-- cannot use this method to enable the service account.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.enable@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Enable
    (
    -- * REST Resource
      ProjectsServiceAccountsEnableResource

    -- * Creating a Request
    , projectsServiceAccountsEnable
    , ProjectsServiceAccountsEnable

    -- * Request Lenses
    , psaeXgafv
    , psaeUploadProtocol
    , psaeAccessToken
    , psaeUploadType
    , psaePayload
    , psaeName
    , psaeCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.enable@ method which the
-- 'ProjectsServiceAccountsEnable' request conforms to.
type ProjectsServiceAccountsEnableResource =
     "v1" :>
       CaptureMode "name" "enable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EnableServiceAccountRequest :>
                       Post '[JSON] Empty

-- | Enables a ServiceAccount that was disabled by DisableServiceAccount. If
-- the service account is already enabled, then this method has no effect.
-- If the service account was disabled by other means—for example, if
-- Google disabled the service account because it was compromised—you
-- cannot use this method to enable the service account.
--
-- /See:/ 'projectsServiceAccountsEnable' smart constructor.
data ProjectsServiceAccountsEnable =
  ProjectsServiceAccountsEnable'
    { _psaeXgafv :: !(Maybe Xgafv)
    , _psaeUploadProtocol :: !(Maybe Text)
    , _psaeAccessToken :: !(Maybe Text)
    , _psaeUploadType :: !(Maybe Text)
    , _psaePayload :: !EnableServiceAccountRequest
    , _psaeName :: !Text
    , _psaeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaeXgafv'
--
-- * 'psaeUploadProtocol'
--
-- * 'psaeAccessToken'
--
-- * 'psaeUploadType'
--
-- * 'psaePayload'
--
-- * 'psaeName'
--
-- * 'psaeCallback'
projectsServiceAccountsEnable
    :: EnableServiceAccountRequest -- ^ 'psaePayload'
    -> Text -- ^ 'psaeName'
    -> ProjectsServiceAccountsEnable
projectsServiceAccountsEnable pPsaePayload_ pPsaeName_ =
  ProjectsServiceAccountsEnable'
    { _psaeXgafv = Nothing
    , _psaeUploadProtocol = Nothing
    , _psaeAccessToken = Nothing
    , _psaeUploadType = Nothing
    , _psaePayload = pPsaePayload_
    , _psaeName = pPsaeName_
    , _psaeCallback = Nothing
    }


-- | V1 error format.
psaeXgafv :: Lens' ProjectsServiceAccountsEnable (Maybe Xgafv)
psaeXgafv
  = lens _psaeXgafv (\ s a -> s{_psaeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psaeUploadProtocol :: Lens' ProjectsServiceAccountsEnable (Maybe Text)
psaeUploadProtocol
  = lens _psaeUploadProtocol
      (\ s a -> s{_psaeUploadProtocol = a})

-- | OAuth access token.
psaeAccessToken :: Lens' ProjectsServiceAccountsEnable (Maybe Text)
psaeAccessToken
  = lens _psaeAccessToken
      (\ s a -> s{_psaeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psaeUploadType :: Lens' ProjectsServiceAccountsEnable (Maybe Text)
psaeUploadType
  = lens _psaeUploadType
      (\ s a -> s{_psaeUploadType = a})

-- | Multipart request metadata.
psaePayload :: Lens' ProjectsServiceAccountsEnable EnableServiceAccountRequest
psaePayload
  = lens _psaePayload (\ s a -> s{_psaePayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using \`-\` as a
-- wildcard for the \`PROJECT_ID\` will infer the project from the account.
-- The \`ACCOUNT\` value can be the \`email\` address or the \`unique_id\`
-- of the service account.
psaeName :: Lens' ProjectsServiceAccountsEnable Text
psaeName = lens _psaeName (\ s a -> s{_psaeName = a})

-- | JSONP
psaeCallback :: Lens' ProjectsServiceAccountsEnable (Maybe Text)
psaeCallback
  = lens _psaeCallback (\ s a -> s{_psaeCallback = a})

instance GoogleRequest ProjectsServiceAccountsEnable
         where
        type Rs ProjectsServiceAccountsEnable = Empty
        type Scopes ProjectsServiceAccountsEnable =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsEnable'{..}
          = go _psaeName _psaeXgafv _psaeUploadProtocol
              _psaeAccessToken
              _psaeUploadType
              _psaeCallback
              (Just AltJSON)
              _psaePayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsEnableResource)
                      mempty
