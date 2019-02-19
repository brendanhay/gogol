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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.setIamPolicy@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsOccurrencesSetIAMPolicyResource

    -- * Creating a Request
    , projectsOccurrencesSetIAMPolicy
    , ProjectsOccurrencesSetIAMPolicy

    -- * Request Lenses
    , posipXgafv
    , posipUploadProtocol
    , posipAccessToken
    , posipUploadType
    , posipPayload
    , posipResource
    , posipCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.setIamPolicy@ method which the
-- 'ProjectsOccurrencesSetIAMPolicy' request conforms to.
type ProjectsOccurrencesSetIAMPolicyResource =
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
-- /See:/ 'projectsOccurrencesSetIAMPolicy' smart constructor.
data ProjectsOccurrencesSetIAMPolicy =
  ProjectsOccurrencesSetIAMPolicy'
    { _posipXgafv          :: !(Maybe Xgafv)
    , _posipUploadProtocol :: !(Maybe Text)
    , _posipAccessToken    :: !(Maybe Text)
    , _posipUploadType     :: !(Maybe Text)
    , _posipPayload        :: !SetIAMPolicyRequest
    , _posipResource       :: !Text
    , _posipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsOccurrencesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posipXgafv'
--
-- * 'posipUploadProtocol'
--
-- * 'posipAccessToken'
--
-- * 'posipUploadType'
--
-- * 'posipPayload'
--
-- * 'posipResource'
--
-- * 'posipCallback'
projectsOccurrencesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'posipPayload'
    -> Text -- ^ 'posipResource'
    -> ProjectsOccurrencesSetIAMPolicy
projectsOccurrencesSetIAMPolicy pPosipPayload_ pPosipResource_ =
  ProjectsOccurrencesSetIAMPolicy'
    { _posipXgafv = Nothing
    , _posipUploadProtocol = Nothing
    , _posipAccessToken = Nothing
    , _posipUploadType = Nothing
    , _posipPayload = pPosipPayload_
    , _posipResource = pPosipResource_
    , _posipCallback = Nothing
    }

-- | V1 error format.
posipXgafv :: Lens' ProjectsOccurrencesSetIAMPolicy (Maybe Xgafv)
posipXgafv
  = lens _posipXgafv (\ s a -> s{_posipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
posipUploadProtocol :: Lens' ProjectsOccurrencesSetIAMPolicy (Maybe Text)
posipUploadProtocol
  = lens _posipUploadProtocol
      (\ s a -> s{_posipUploadProtocol = a})

-- | OAuth access token.
posipAccessToken :: Lens' ProjectsOccurrencesSetIAMPolicy (Maybe Text)
posipAccessToken
  = lens _posipAccessToken
      (\ s a -> s{_posipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
posipUploadType :: Lens' ProjectsOccurrencesSetIAMPolicy (Maybe Text)
posipUploadType
  = lens _posipUploadType
      (\ s a -> s{_posipUploadType = a})

-- | Multipart request metadata.
posipPayload :: Lens' ProjectsOccurrencesSetIAMPolicy SetIAMPolicyRequest
posipPayload
  = lens _posipPayload (\ s a -> s{_posipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
posipResource :: Lens' ProjectsOccurrencesSetIAMPolicy Text
posipResource
  = lens _posipResource
      (\ s a -> s{_posipResource = a})

-- | JSONP
posipCallback :: Lens' ProjectsOccurrencesSetIAMPolicy (Maybe Text)
posipCallback
  = lens _posipCallback
      (\ s a -> s{_posipCallback = a})

instance GoogleRequest
           ProjectsOccurrencesSetIAMPolicy
         where
        type Rs ProjectsOccurrencesSetIAMPolicy = Policy
        type Scopes ProjectsOccurrencesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesSetIAMPolicy'{..}
          = go _posipResource _posipXgafv _posipUploadProtocol
              _posipAccessToken
              _posipUploadType
              _posipCallback
              (Just AltJSON)
              _posipPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsOccurrencesSetIAMPolicyResource)
                      mempty
