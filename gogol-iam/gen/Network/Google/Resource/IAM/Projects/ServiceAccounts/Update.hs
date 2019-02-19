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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a ServiceAccount. Currently, only the following fields are
-- updatable: \`display_name\` . The \`etag\` is mandatory.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.update@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Update
    (
    -- * REST Resource
      ProjectsServiceAccountsUpdateResource

    -- * Creating a Request
    , projectsServiceAccountsUpdate
    , ProjectsServiceAccountsUpdate

    -- * Request Lenses
    , psauXgafv
    , psauUploadProtocol
    , psauAccessToken
    , psauUploadType
    , psauPayload
    , psauName
    , psauCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.update@ method which the
-- 'ProjectsServiceAccountsUpdate' request conforms to.
type ProjectsServiceAccountsUpdateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ServiceAccount :>
                       Put '[JSON] ServiceAccount

-- | Updates a ServiceAccount. Currently, only the following fields are
-- updatable: \`display_name\` . The \`etag\` is mandatory.
--
-- /See:/ 'projectsServiceAccountsUpdate' smart constructor.
data ProjectsServiceAccountsUpdate =
  ProjectsServiceAccountsUpdate'
    { _psauXgafv          :: !(Maybe Xgafv)
    , _psauUploadProtocol :: !(Maybe Text)
    , _psauAccessToken    :: !(Maybe Text)
    , _psauUploadType     :: !(Maybe Text)
    , _psauPayload        :: !ServiceAccount
    , _psauName           :: !Text
    , _psauCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psauXgafv'
--
-- * 'psauUploadProtocol'
--
-- * 'psauAccessToken'
--
-- * 'psauUploadType'
--
-- * 'psauPayload'
--
-- * 'psauName'
--
-- * 'psauCallback'
projectsServiceAccountsUpdate
    :: ServiceAccount -- ^ 'psauPayload'
    -> Text -- ^ 'psauName'
    -> ProjectsServiceAccountsUpdate
projectsServiceAccountsUpdate pPsauPayload_ pPsauName_ =
  ProjectsServiceAccountsUpdate'
    { _psauXgafv = Nothing
    , _psauUploadProtocol = Nothing
    , _psauAccessToken = Nothing
    , _psauUploadType = Nothing
    , _psauPayload = pPsauPayload_
    , _psauName = pPsauName_
    , _psauCallback = Nothing
    }


-- | V1 error format.
psauXgafv :: Lens' ProjectsServiceAccountsUpdate (Maybe Xgafv)
psauXgafv
  = lens _psauXgafv (\ s a -> s{_psauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psauUploadProtocol :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
psauUploadProtocol
  = lens _psauUploadProtocol
      (\ s a -> s{_psauUploadProtocol = a})

-- | OAuth access token.
psauAccessToken :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
psauAccessToken
  = lens _psauAccessToken
      (\ s a -> s{_psauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psauUploadType :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
psauUploadType
  = lens _psauUploadType
      (\ s a -> s{_psauUploadType = a})

-- | Multipart request metadata.
psauPayload :: Lens' ProjectsServiceAccountsUpdate ServiceAccount
psauPayload
  = lens _psauPayload (\ s a -> s{_psauPayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Requests using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the \`account\` and the \`ACCOUNT\` value can be the \`email\` address
-- or the \`unique_id\` of the service account. In responses the resource
-- name will always be in the format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`.
psauName :: Lens' ProjectsServiceAccountsUpdate Text
psauName = lens _psauName (\ s a -> s{_psauName = a})

-- | JSONP
psauCallback :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
psauCallback
  = lens _psauCallback (\ s a -> s{_psauCallback = a})

instance GoogleRequest ProjectsServiceAccountsUpdate
         where
        type Rs ProjectsServiceAccountsUpdate =
             ServiceAccount
        type Scopes ProjectsServiceAccountsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsUpdate'{..}
          = go _psauName _psauXgafv _psauUploadProtocol
              _psauAccessToken
              _psauUploadType
              _psauCallback
              (Just AltJSON)
              _psauPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsUpdateResource)
                      mempty
