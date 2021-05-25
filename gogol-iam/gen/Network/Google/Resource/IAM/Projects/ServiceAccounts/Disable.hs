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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Disable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables a ServiceAccount immediately. If an application uses the
-- service account to authenticate, that application can no longer call
-- Google APIs or access Google Cloud resources. Existing access tokens for
-- the service account are rejected, and requests for new access tokens
-- will fail. To re-enable the service account, use EnableServiceAccount.
-- After you re-enable the service account, its existing access tokens will
-- be accepted, and you can request new access tokens. To help avoid
-- unplanned outages, we recommend that you disable the service account
-- before you delete it. Use this method to disable the service account,
-- then wait at least 24 hours and watch for unintended consequences. If
-- there are no unintended consequences, you can delete the service account
-- with DeleteServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.disable@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Disable
    (
    -- * REST Resource
      ProjectsServiceAccountsDisableResource

    -- * Creating a Request
    , projectsServiceAccountsDisable
    , ProjectsServiceAccountsDisable

    -- * Request Lenses
    , psadXgafv
    , psadUploadProtocol
    , psadAccessToken
    , psadUploadType
    , psadPayload
    , psadName
    , psadCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.disable@ method which the
-- 'ProjectsServiceAccountsDisable' request conforms to.
type ProjectsServiceAccountsDisableResource =
     "v1" :>
       CaptureMode "name" "disable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DisableServiceAccountRequest :>
                       Post '[JSON] Empty

-- | Disables a ServiceAccount immediately. If an application uses the
-- service account to authenticate, that application can no longer call
-- Google APIs or access Google Cloud resources. Existing access tokens for
-- the service account are rejected, and requests for new access tokens
-- will fail. To re-enable the service account, use EnableServiceAccount.
-- After you re-enable the service account, its existing access tokens will
-- be accepted, and you can request new access tokens. To help avoid
-- unplanned outages, we recommend that you disable the service account
-- before you delete it. Use this method to disable the service account,
-- then wait at least 24 hours and watch for unintended consequences. If
-- there are no unintended consequences, you can delete the service account
-- with DeleteServiceAccount.
--
-- /See:/ 'projectsServiceAccountsDisable' smart constructor.
data ProjectsServiceAccountsDisable =
  ProjectsServiceAccountsDisable'
    { _psadXgafv :: !(Maybe Xgafv)
    , _psadUploadProtocol :: !(Maybe Text)
    , _psadAccessToken :: !(Maybe Text)
    , _psadUploadType :: !(Maybe Text)
    , _psadPayload :: !DisableServiceAccountRequest
    , _psadName :: !Text
    , _psadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsDisable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psadXgafv'
--
-- * 'psadUploadProtocol'
--
-- * 'psadAccessToken'
--
-- * 'psadUploadType'
--
-- * 'psadPayload'
--
-- * 'psadName'
--
-- * 'psadCallback'
projectsServiceAccountsDisable
    :: DisableServiceAccountRequest -- ^ 'psadPayload'
    -> Text -- ^ 'psadName'
    -> ProjectsServiceAccountsDisable
projectsServiceAccountsDisable pPsadPayload_ pPsadName_ =
  ProjectsServiceAccountsDisable'
    { _psadXgafv = Nothing
    , _psadUploadProtocol = Nothing
    , _psadAccessToken = Nothing
    , _psadUploadType = Nothing
    , _psadPayload = pPsadPayload_
    , _psadName = pPsadName_
    , _psadCallback = Nothing
    }


-- | V1 error format.
psadXgafv :: Lens' ProjectsServiceAccountsDisable (Maybe Xgafv)
psadXgafv
  = lens _psadXgafv (\ s a -> s{_psadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psadUploadProtocol :: Lens' ProjectsServiceAccountsDisable (Maybe Text)
psadUploadProtocol
  = lens _psadUploadProtocol
      (\ s a -> s{_psadUploadProtocol = a})

-- | OAuth access token.
psadAccessToken :: Lens' ProjectsServiceAccountsDisable (Maybe Text)
psadAccessToken
  = lens _psadAccessToken
      (\ s a -> s{_psadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psadUploadType :: Lens' ProjectsServiceAccountsDisable (Maybe Text)
psadUploadType
  = lens _psadUploadType
      (\ s a -> s{_psadUploadType = a})

-- | Multipart request metadata.
psadPayload :: Lens' ProjectsServiceAccountsDisable DisableServiceAccountRequest
psadPayload
  = lens _psadPayload (\ s a -> s{_psadPayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using \`-\` as a
-- wildcard for the \`PROJECT_ID\` will infer the project from the account.
-- The \`ACCOUNT\` value can be the \`email\` address or the \`unique_id\`
-- of the service account.
psadName :: Lens' ProjectsServiceAccountsDisable Text
psadName = lens _psadName (\ s a -> s{_psadName = a})

-- | JSONP
psadCallback :: Lens' ProjectsServiceAccountsDisable (Maybe Text)
psadCallback
  = lens _psadCallback (\ s a -> s{_psadCallback = a})

instance GoogleRequest ProjectsServiceAccountsDisable
         where
        type Rs ProjectsServiceAccountsDisable = Empty
        type Scopes ProjectsServiceAccountsDisable =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsDisable'{..}
          = go _psadName _psadXgafv _psadUploadProtocol
              _psadAccessToken
              _psadUploadType
              _psadCallback
              (Just AltJSON)
              _psadPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsDisableResource)
                      mempty
