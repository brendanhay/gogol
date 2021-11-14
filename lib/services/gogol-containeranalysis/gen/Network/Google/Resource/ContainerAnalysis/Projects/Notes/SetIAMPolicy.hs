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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified note or occurrence.
-- Requires \`containeranalysis.notes.setIamPolicy\` or
-- \`containeranalysis.occurrences.setIamPolicy\` permission if the
-- resource is a note or an occurrence, respectively. The resource takes
-- the format \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.setIamPolicy@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsNotesSetIAMPolicyResource

    -- * Creating a Request
    , projectsNotesSetIAMPolicy
    , ProjectsNotesSetIAMPolicy

    -- * Request Lenses
    , pnsipXgafv
    , pnsipUploadProtocol
    , pnsipAccessToken
    , pnsipUploadType
    , pnsipPayload
    , pnsipResource
    , pnsipCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.setIamPolicy@ method which the
-- 'ProjectsNotesSetIAMPolicy' request conforms to.
type ProjectsNotesSetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified note or occurrence.
-- Requires \`containeranalysis.notes.setIamPolicy\` or
-- \`containeranalysis.occurrences.setIamPolicy\` permission if the
-- resource is a note or an occurrence, respectively. The resource takes
-- the format \`projects\/[PROJECT_ID]\/notes\/[NOTE_ID]\` for notes and
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\` for
-- occurrences.
--
-- /See:/ 'projectsNotesSetIAMPolicy' smart constructor.
data ProjectsNotesSetIAMPolicy =
  ProjectsNotesSetIAMPolicy'
    { _pnsipXgafv :: !(Maybe Xgafv)
    , _pnsipUploadProtocol :: !(Maybe Text)
    , _pnsipAccessToken :: !(Maybe Text)
    , _pnsipUploadType :: !(Maybe Text)
    , _pnsipPayload :: !SetIAMPolicyRequest
    , _pnsipResource :: !Text
    , _pnsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsipXgafv'
--
-- * 'pnsipUploadProtocol'
--
-- * 'pnsipAccessToken'
--
-- * 'pnsipUploadType'
--
-- * 'pnsipPayload'
--
-- * 'pnsipResource'
--
-- * 'pnsipCallback'
projectsNotesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pnsipPayload'
    -> Text -- ^ 'pnsipResource'
    -> ProjectsNotesSetIAMPolicy
projectsNotesSetIAMPolicy pPnsipPayload_ pPnsipResource_ =
  ProjectsNotesSetIAMPolicy'
    { _pnsipXgafv = Nothing
    , _pnsipUploadProtocol = Nothing
    , _pnsipAccessToken = Nothing
    , _pnsipUploadType = Nothing
    , _pnsipPayload = pPnsipPayload_
    , _pnsipResource = pPnsipResource_
    , _pnsipCallback = Nothing
    }


-- | V1 error format.
pnsipXgafv :: Lens' ProjectsNotesSetIAMPolicy (Maybe Xgafv)
pnsipXgafv
  = lens _pnsipXgafv (\ s a -> s{_pnsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnsipUploadProtocol :: Lens' ProjectsNotesSetIAMPolicy (Maybe Text)
pnsipUploadProtocol
  = lens _pnsipUploadProtocol
      (\ s a -> s{_pnsipUploadProtocol = a})

-- | OAuth access token.
pnsipAccessToken :: Lens' ProjectsNotesSetIAMPolicy (Maybe Text)
pnsipAccessToken
  = lens _pnsipAccessToken
      (\ s a -> s{_pnsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnsipUploadType :: Lens' ProjectsNotesSetIAMPolicy (Maybe Text)
pnsipUploadType
  = lens _pnsipUploadType
      (\ s a -> s{_pnsipUploadType = a})

-- | Multipart request metadata.
pnsipPayload :: Lens' ProjectsNotesSetIAMPolicy SetIAMPolicyRequest
pnsipPayload
  = lens _pnsipPayload (\ s a -> s{_pnsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pnsipResource :: Lens' ProjectsNotesSetIAMPolicy Text
pnsipResource
  = lens _pnsipResource
      (\ s a -> s{_pnsipResource = a})

-- | JSONP
pnsipCallback :: Lens' ProjectsNotesSetIAMPolicy (Maybe Text)
pnsipCallback
  = lens _pnsipCallback
      (\ s a -> s{_pnsipCallback = a})

instance GoogleRequest ProjectsNotesSetIAMPolicy
         where
        type Rs ProjectsNotesSetIAMPolicy = Policy
        type Scopes ProjectsNotesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesSetIAMPolicy'{..}
          = go _pnsipResource _pnsipXgafv _pnsipUploadProtocol
              _pnsipAccessToken
              _pnsipUploadType
              _pnsipCallback
              (Just AltJSON)
              _pnsipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesSetIAMPolicyResource)
                      mempty
