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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.testIamPermissions@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsNotesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsNotesTestIAMPermissions
    , ProjectsNotesTestIAMPermissions

    -- * Request Lenses
    , pntipXgafv
    , pntipUploadProtocol
    , pntipAccessToken
    , pntipUploadType
    , pntipPayload
    , pntipResource
    , pntipCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.testIamPermissions@ method which the
-- 'ProjectsNotesTestIAMPermissions' request conforms to.
type ProjectsNotesTestIAMPermissionsResource =
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
-- /See:/ 'projectsNotesTestIAMPermissions' smart constructor.
data ProjectsNotesTestIAMPermissions =
  ProjectsNotesTestIAMPermissions'
    { _pntipXgafv :: !(Maybe Xgafv)
    , _pntipUploadProtocol :: !(Maybe Text)
    , _pntipAccessToken :: !(Maybe Text)
    , _pntipUploadType :: !(Maybe Text)
    , _pntipPayload :: !TestIAMPermissionsRequest
    , _pntipResource :: !Text
    , _pntipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pntipXgafv'
--
-- * 'pntipUploadProtocol'
--
-- * 'pntipAccessToken'
--
-- * 'pntipUploadType'
--
-- * 'pntipPayload'
--
-- * 'pntipResource'
--
-- * 'pntipCallback'
projectsNotesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pntipPayload'
    -> Text -- ^ 'pntipResource'
    -> ProjectsNotesTestIAMPermissions
projectsNotesTestIAMPermissions pPntipPayload_ pPntipResource_ =
  ProjectsNotesTestIAMPermissions'
    { _pntipXgafv = Nothing
    , _pntipUploadProtocol = Nothing
    , _pntipAccessToken = Nothing
    , _pntipUploadType = Nothing
    , _pntipPayload = pPntipPayload_
    , _pntipResource = pPntipResource_
    , _pntipCallback = Nothing
    }


-- | V1 error format.
pntipXgafv :: Lens' ProjectsNotesTestIAMPermissions (Maybe Xgafv)
pntipXgafv
  = lens _pntipXgafv (\ s a -> s{_pntipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pntipUploadProtocol :: Lens' ProjectsNotesTestIAMPermissions (Maybe Text)
pntipUploadProtocol
  = lens _pntipUploadProtocol
      (\ s a -> s{_pntipUploadProtocol = a})

-- | OAuth access token.
pntipAccessToken :: Lens' ProjectsNotesTestIAMPermissions (Maybe Text)
pntipAccessToken
  = lens _pntipAccessToken
      (\ s a -> s{_pntipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pntipUploadType :: Lens' ProjectsNotesTestIAMPermissions (Maybe Text)
pntipUploadType
  = lens _pntipUploadType
      (\ s a -> s{_pntipUploadType = a})

-- | Multipart request metadata.
pntipPayload :: Lens' ProjectsNotesTestIAMPermissions TestIAMPermissionsRequest
pntipPayload
  = lens _pntipPayload (\ s a -> s{_pntipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pntipResource :: Lens' ProjectsNotesTestIAMPermissions Text
pntipResource
  = lens _pntipResource
      (\ s a -> s{_pntipResource = a})

-- | JSONP
pntipCallback :: Lens' ProjectsNotesTestIAMPermissions (Maybe Text)
pntipCallback
  = lens _pntipCallback
      (\ s a -> s{_pntipCallback = a})

instance GoogleRequest
           ProjectsNotesTestIAMPermissions
         where
        type Rs ProjectsNotesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsNotesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesTestIAMPermissions'{..}
          = go _pntipResource _pntipXgafv _pntipUploadProtocol
              _pntipAccessToken
              _pntipUploadType
              _pntipCallback
              (Just AltJSON)
              _pntipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotesTestIAMPermissionsResource)
                      mempty
