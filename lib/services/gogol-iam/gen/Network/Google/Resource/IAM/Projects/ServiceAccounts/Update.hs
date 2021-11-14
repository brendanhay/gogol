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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- **Note:** We are in the process of deprecating this method. Use
-- PatchServiceAccount instead. Updates a ServiceAccount. You can update
-- only the \`display_name\` and \`description\` fields.
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
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proName
    , proCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

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

-- | **Note:** We are in the process of deprecating this method. Use
-- PatchServiceAccount instead. Updates a ServiceAccount. You can update
-- only the \`display_name\` and \`description\` fields.
--
-- /See:/ 'projectsServiceAccountsUpdate' smart constructor.
data ProjectsServiceAccountsUpdate =
  ProjectsServiceAccountsUpdate'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !ServiceAccount
    , _proName :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proName'
--
-- * 'proCallback'
projectsServiceAccountsUpdate
    :: ServiceAccount -- ^ 'proPayload'
    -> Text -- ^ 'proName'
    -> ProjectsServiceAccountsUpdate
projectsServiceAccountsUpdate pProPayload_ pProName_ =
  ProjectsServiceAccountsUpdate'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsServiceAccountsUpdate (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsServiceAccountsUpdate ServiceAccount
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | The resource name of the service account. Use one of the following
-- formats: * \`projects\/{PROJECT_ID}\/serviceAccounts\/{EMAIL_ADDRESS}\`
-- * \`projects\/{PROJECT_ID}\/serviceAccounts\/{UNIQUE_ID}\` As an
-- alternative, you can use the \`-\` wildcard character instead of the
-- project ID: * \`projects\/-\/serviceAccounts\/{EMAIL_ADDRESS}\` *
-- \`projects\/-\/serviceAccounts\/{UNIQUE_ID}\` When possible, avoid using
-- the \`-\` wildcard character, because it can cause response messages to
-- contain misleading error codes. For example, if you try to get the
-- service account \`projects\/-\/serviceAccounts\/fake\'example.com\`,
-- which does not exist, the response contains an HTTP \`403 Forbidden\`
-- error instead of a \`404 Not Found\` error.
proName :: Lens' ProjectsServiceAccountsUpdate Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsServiceAccountsUpdate (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsServiceAccountsUpdate
         where
        type Rs ProjectsServiceAccountsUpdate =
             ServiceAccount
        type Scopes ProjectsServiceAccountsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsUpdate'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsUpdateResource)
                      mempty
