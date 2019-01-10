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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.setIamPolicy@.
module Network.Google.Resource.SourceRepo.Projects.Repos.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsReposSetIAMPolicyResource

    -- * Creating a Request
    , projectsReposSetIAMPolicy
    , ProjectsReposSetIAMPolicy

    -- * Request Lenses
    , prsipXgafv
    , prsipUploadProtocol
    , prsipAccessToken
    , prsipUploadType
    , prsipPayload
    , prsipResource
    , prsipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.setIamPolicy@ method which the
-- 'ProjectsReposSetIAMPolicy' request conforms to.
type ProjectsReposSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsReposSetIAMPolicy' smart constructor.
data ProjectsReposSetIAMPolicy = ProjectsReposSetIAMPolicy'
    { _prsipXgafv          :: !(Maybe Xgafv)
    , _prsipUploadProtocol :: !(Maybe Text)
    , _prsipAccessToken    :: !(Maybe Text)
    , _prsipUploadType     :: !(Maybe Text)
    , _prsipPayload        :: !SetIAMPolicyRequest
    , _prsipResource       :: !Text
    , _prsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsReposSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prsipXgafv'
--
-- * 'prsipUploadProtocol'
--
-- * 'prsipAccessToken'
--
-- * 'prsipUploadType'
--
-- * 'prsipPayload'
--
-- * 'prsipResource'
--
-- * 'prsipCallback'
projectsReposSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prsipPayload'
    -> Text -- ^ 'prsipResource'
    -> ProjectsReposSetIAMPolicy
projectsReposSetIAMPolicy pPrsipPayload_ pPrsipResource_ =
    ProjectsReposSetIAMPolicy'
    { _prsipXgafv = Nothing
    , _prsipUploadProtocol = Nothing
    , _prsipAccessToken = Nothing
    , _prsipUploadType = Nothing
    , _prsipPayload = pPrsipPayload_
    , _prsipResource = pPrsipResource_
    , _prsipCallback = Nothing
    }

-- | V1 error format.
prsipXgafv :: Lens' ProjectsReposSetIAMPolicy (Maybe Xgafv)
prsipXgafv
  = lens _prsipXgafv (\ s a -> s{_prsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prsipUploadProtocol :: Lens' ProjectsReposSetIAMPolicy (Maybe Text)
prsipUploadProtocol
  = lens _prsipUploadProtocol
      (\ s a -> s{_prsipUploadProtocol = a})

-- | OAuth access token.
prsipAccessToken :: Lens' ProjectsReposSetIAMPolicy (Maybe Text)
prsipAccessToken
  = lens _prsipAccessToken
      (\ s a -> s{_prsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prsipUploadType :: Lens' ProjectsReposSetIAMPolicy (Maybe Text)
prsipUploadType
  = lens _prsipUploadType
      (\ s a -> s{_prsipUploadType = a})

-- | Multipart request metadata.
prsipPayload :: Lens' ProjectsReposSetIAMPolicy SetIAMPolicyRequest
prsipPayload
  = lens _prsipPayload (\ s a -> s{_prsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prsipResource :: Lens' ProjectsReposSetIAMPolicy Text
prsipResource
  = lens _prsipResource
      (\ s a -> s{_prsipResource = a})

-- | JSONP
prsipCallback :: Lens' ProjectsReposSetIAMPolicy (Maybe Text)
prsipCallback
  = lens _prsipCallback
      (\ s a -> s{_prsipCallback = a})

instance GoogleRequest ProjectsReposSetIAMPolicy
         where
        type Rs ProjectsReposSetIAMPolicy = Policy
        type Scopes ProjectsReposSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control"]
        requestClient ProjectsReposSetIAMPolicy'{..}
          = go _prsipResource _prsipXgafv _prsipUploadProtocol
              _prsipAccessToken
              _prsipUploadType
              _prsipCallback
              (Just AltJSON)
              _prsipPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposSetIAMPolicyResource)
                      mempty
