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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a note or an occurrence resource.
-- Requires \`containeranalysis.notes.setIamPolicy\` or
-- \`containeranalysis.occurrences.setIamPolicy\` permission if the
-- resource is a note or occurrence, respectively. The resource takes the
-- format \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.getIamPolicy@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsNotesGetIAMPolicyResource

    -- * Creating a Request
    , projectsNotesGetIAMPolicy
    , ProjectsNotesGetIAMPolicy

    -- * Request Lenses
    , pngipXgafv
    , pngipUploadProtocol
    , pngipAccessToken
    , pngipUploadType
    , pngipPayload
    , pngipResource
    , pngipCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.getIamPolicy@ method which the
-- 'ProjectsNotesGetIAMPolicy' request conforms to.
type ProjectsNotesGetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a note or an occurrence resource.
-- Requires \`containeranalysis.notes.setIamPolicy\` or
-- \`containeranalysis.occurrences.setIamPolicy\` permission if the
-- resource is a note or occurrence, respectively. The resource takes the
-- format \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ 'projectsNotesGetIAMPolicy' smart constructor.
data ProjectsNotesGetIAMPolicy =
  ProjectsNotesGetIAMPolicy'
    { _pngipXgafv :: !(Maybe Xgafv)
    , _pngipUploadProtocol :: !(Maybe Text)
    , _pngipAccessToken :: !(Maybe Text)
    , _pngipUploadType :: !(Maybe Text)
    , _pngipPayload :: !GetIAMPolicyRequest
    , _pngipResource :: !Text
    , _pngipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pngipXgafv'
--
-- * 'pngipUploadProtocol'
--
-- * 'pngipAccessToken'
--
-- * 'pngipUploadType'
--
-- * 'pngipPayload'
--
-- * 'pngipResource'
--
-- * 'pngipCallback'
projectsNotesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pngipPayload'
    -> Text -- ^ 'pngipResource'
    -> ProjectsNotesGetIAMPolicy
projectsNotesGetIAMPolicy pPngipPayload_ pPngipResource_ =
  ProjectsNotesGetIAMPolicy'
    { _pngipXgafv = Nothing
    , _pngipUploadProtocol = Nothing
    , _pngipAccessToken = Nothing
    , _pngipUploadType = Nothing
    , _pngipPayload = pPngipPayload_
    , _pngipResource = pPngipResource_
    , _pngipCallback = Nothing
    }


-- | V1 error format.
pngipXgafv :: Lens' ProjectsNotesGetIAMPolicy (Maybe Xgafv)
pngipXgafv
  = lens _pngipXgafv (\ s a -> s{_pngipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pngipUploadProtocol :: Lens' ProjectsNotesGetIAMPolicy (Maybe Text)
pngipUploadProtocol
  = lens _pngipUploadProtocol
      (\ s a -> s{_pngipUploadProtocol = a})

-- | OAuth access token.
pngipAccessToken :: Lens' ProjectsNotesGetIAMPolicy (Maybe Text)
pngipAccessToken
  = lens _pngipAccessToken
      (\ s a -> s{_pngipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pngipUploadType :: Lens' ProjectsNotesGetIAMPolicy (Maybe Text)
pngipUploadType
  = lens _pngipUploadType
      (\ s a -> s{_pngipUploadType = a})

-- | Multipart request metadata.
pngipPayload :: Lens' ProjectsNotesGetIAMPolicy GetIAMPolicyRequest
pngipPayload
  = lens _pngipPayload (\ s a -> s{_pngipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pngipResource :: Lens' ProjectsNotesGetIAMPolicy Text
pngipResource
  = lens _pngipResource
      (\ s a -> s{_pngipResource = a})

-- | JSONP
pngipCallback :: Lens' ProjectsNotesGetIAMPolicy (Maybe Text)
pngipCallback
  = lens _pngipCallback
      (\ s a -> s{_pngipCallback = a})

instance GoogleRequest ProjectsNotesGetIAMPolicy
         where
        type Rs ProjectsNotesGetIAMPolicy = Policy
        type Scopes ProjectsNotesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesGetIAMPolicy'{..}
          = go _pngipResource _pngipXgafv _pngipUploadProtocol
              _pngipAccessToken
              _pngipUploadType
              _pngipCallback
              (Just AltJSON)
              _pngipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesGetIAMPolicyResource)
                      mempty
