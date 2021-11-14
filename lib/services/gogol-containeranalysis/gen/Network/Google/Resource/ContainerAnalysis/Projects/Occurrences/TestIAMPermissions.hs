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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permissions that a caller has on the specified note or
-- occurrence. Requires list permission on the project (for example,
-- \`containeranalysis.notes.list\`). The resource takes the format
-- \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.testIamPermissions@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsOccurrencesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsOccurrencesTestIAMPermissions
    , ProjectsOccurrencesTestIAMPermissions

    -- * Request Lenses
    , potipXgafv
    , potipUploadProtocol
    , potipAccessToken
    , potipUploadType
    , potipPayload
    , potipResource
    , potipCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.testIamPermissions@ method which the
-- 'ProjectsOccurrencesTestIAMPermissions' request conforms to.
type ProjectsOccurrencesTestIAMPermissionsResource =
     "v1beta1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns the permissions that a caller has on the specified note or
-- occurrence. Requires list permission on the project (for example,
-- \`containeranalysis.notes.list\`). The resource takes the format
-- \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ 'projectsOccurrencesTestIAMPermissions' smart constructor.
data ProjectsOccurrencesTestIAMPermissions =
  ProjectsOccurrencesTestIAMPermissions'
    { _potipXgafv :: !(Maybe Xgafv)
    , _potipUploadProtocol :: !(Maybe Text)
    , _potipAccessToken :: !(Maybe Text)
    , _potipUploadType :: !(Maybe Text)
    , _potipPayload :: !TestIAMPermissionsRequest
    , _potipResource :: !Text
    , _potipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'potipXgafv'
--
-- * 'potipUploadProtocol'
--
-- * 'potipAccessToken'
--
-- * 'potipUploadType'
--
-- * 'potipPayload'
--
-- * 'potipResource'
--
-- * 'potipCallback'
projectsOccurrencesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'potipPayload'
    -> Text -- ^ 'potipResource'
    -> ProjectsOccurrencesTestIAMPermissions
projectsOccurrencesTestIAMPermissions pPotipPayload_ pPotipResource_ =
  ProjectsOccurrencesTestIAMPermissions'
    { _potipXgafv = Nothing
    , _potipUploadProtocol = Nothing
    , _potipAccessToken = Nothing
    , _potipUploadType = Nothing
    , _potipPayload = pPotipPayload_
    , _potipResource = pPotipResource_
    , _potipCallback = Nothing
    }


-- | V1 error format.
potipXgafv :: Lens' ProjectsOccurrencesTestIAMPermissions (Maybe Xgafv)
potipXgafv
  = lens _potipXgafv (\ s a -> s{_potipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
potipUploadProtocol :: Lens' ProjectsOccurrencesTestIAMPermissions (Maybe Text)
potipUploadProtocol
  = lens _potipUploadProtocol
      (\ s a -> s{_potipUploadProtocol = a})

-- | OAuth access token.
potipAccessToken :: Lens' ProjectsOccurrencesTestIAMPermissions (Maybe Text)
potipAccessToken
  = lens _potipAccessToken
      (\ s a -> s{_potipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
potipUploadType :: Lens' ProjectsOccurrencesTestIAMPermissions (Maybe Text)
potipUploadType
  = lens _potipUploadType
      (\ s a -> s{_potipUploadType = a})

-- | Multipart request metadata.
potipPayload :: Lens' ProjectsOccurrencesTestIAMPermissions TestIAMPermissionsRequest
potipPayload
  = lens _potipPayload (\ s a -> s{_potipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
potipResource :: Lens' ProjectsOccurrencesTestIAMPermissions Text
potipResource
  = lens _potipResource
      (\ s a -> s{_potipResource = a})

-- | JSONP
potipCallback :: Lens' ProjectsOccurrencesTestIAMPermissions (Maybe Text)
potipCallback
  = lens _potipCallback
      (\ s a -> s{_potipCallback = a})

instance GoogleRequest
           ProjectsOccurrencesTestIAMPermissions
         where
        type Rs ProjectsOccurrencesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsOccurrencesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsOccurrencesTestIAMPermissions'{..}
          = go _potipResource _potipXgafv _potipUploadProtocol
              _potipAccessToken
              _potipUploadType
              _potipCallback
              (Just AltJSON)
              _potipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsOccurrencesTestIAMPermissionsResource)
                      mempty
