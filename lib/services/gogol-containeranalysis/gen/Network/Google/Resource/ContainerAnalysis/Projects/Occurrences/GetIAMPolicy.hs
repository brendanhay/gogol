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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.getIamPolicy@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsOccurrencesGetIAMPolicyResource

    -- * Creating a Request
    , projectsOccurrencesGetIAMPolicy
    , ProjectsOccurrencesGetIAMPolicy

    -- * Request Lenses
    , pogipXgafv
    , pogipUploadProtocol
    , pogipAccessToken
    , pogipUploadType
    , pogipPayload
    , pogipResource
    , pogipCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.getIamPolicy@ method which the
-- 'ProjectsOccurrencesGetIAMPolicy' request conforms to.
type ProjectsOccurrencesGetIAMPolicyResource =
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
-- /See:/ 'projectsOccurrencesGetIAMPolicy' smart constructor.
data ProjectsOccurrencesGetIAMPolicy =
  ProjectsOccurrencesGetIAMPolicy'
    { _pogipXgafv :: !(Maybe Xgafv)
    , _pogipUploadProtocol :: !(Maybe Text)
    , _pogipAccessToken :: !(Maybe Text)
    , _pogipUploadType :: !(Maybe Text)
    , _pogipPayload :: !GetIAMPolicyRequest
    , _pogipResource :: !Text
    , _pogipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogipXgafv'
--
-- * 'pogipUploadProtocol'
--
-- * 'pogipAccessToken'
--
-- * 'pogipUploadType'
--
-- * 'pogipPayload'
--
-- * 'pogipResource'
--
-- * 'pogipCallback'
projectsOccurrencesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pogipPayload'
    -> Text -- ^ 'pogipResource'
    -> ProjectsOccurrencesGetIAMPolicy
projectsOccurrencesGetIAMPolicy pPogipPayload_ pPogipResource_ =
  ProjectsOccurrencesGetIAMPolicy'
    { _pogipXgafv = Nothing
    , _pogipUploadProtocol = Nothing
    , _pogipAccessToken = Nothing
    , _pogipUploadType = Nothing
    , _pogipPayload = pPogipPayload_
    , _pogipResource = pPogipResource_
    , _pogipCallback = Nothing
    }


-- | V1 error format.
pogipXgafv :: Lens' ProjectsOccurrencesGetIAMPolicy (Maybe Xgafv)
pogipXgafv
  = lens _pogipXgafv (\ s a -> s{_pogipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pogipUploadProtocol :: Lens' ProjectsOccurrencesGetIAMPolicy (Maybe Text)
pogipUploadProtocol
  = lens _pogipUploadProtocol
      (\ s a -> s{_pogipUploadProtocol = a})

-- | OAuth access token.
pogipAccessToken :: Lens' ProjectsOccurrencesGetIAMPolicy (Maybe Text)
pogipAccessToken
  = lens _pogipAccessToken
      (\ s a -> s{_pogipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pogipUploadType :: Lens' ProjectsOccurrencesGetIAMPolicy (Maybe Text)
pogipUploadType
  = lens _pogipUploadType
      (\ s a -> s{_pogipUploadType = a})

-- | Multipart request metadata.
pogipPayload :: Lens' ProjectsOccurrencesGetIAMPolicy GetIAMPolicyRequest
pogipPayload
  = lens _pogipPayload (\ s a -> s{_pogipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pogipResource :: Lens' ProjectsOccurrencesGetIAMPolicy Text
pogipResource
  = lens _pogipResource
      (\ s a -> s{_pogipResource = a})

-- | JSONP
pogipCallback :: Lens' ProjectsOccurrencesGetIAMPolicy (Maybe Text)
pogipCallback
  = lens _pogipCallback
      (\ s a -> s{_pogipCallback = a})

instance GoogleRequest
           ProjectsOccurrencesGetIAMPolicy
         where
        type Rs ProjectsOccurrencesGetIAMPolicy = Policy
        type Scopes ProjectsOccurrencesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesGetIAMPolicy'{..}
          = go _pogipResource _pogipXgafv _pogipUploadProtocol
              _pogipAccessToken
              _pogipUploadType
              _pogipCallback
              (Just AltJSON)
              _pogipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsOccurrencesGetIAMPolicyResource)
                      mempty
