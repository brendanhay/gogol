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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.getIamPolicy@.
module Network.Google.Resource.SourceRepo.Projects.Repos.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsReposGetIAMPolicyResource

    -- * Creating a Request
    , projectsReposGetIAMPolicy
    , ProjectsReposGetIAMPolicy

    -- * Request Lenses
    , prgipOptionsRequestedPolicyVersion
    , prgipXgafv
    , prgipUploadProtocol
    , prgipAccessToken
    , prgipUploadType
    , prgipResource
    , prgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.getIamPolicy@ method which the
-- 'ProjectsReposGetIAMPolicy' request conforms to.
type ProjectsReposGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsReposGetIAMPolicy' smart constructor.
data ProjectsReposGetIAMPolicy =
  ProjectsReposGetIAMPolicy'
    { _prgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _prgipXgafv :: !(Maybe Xgafv)
    , _prgipUploadProtocol :: !(Maybe Text)
    , _prgipAccessToken :: !(Maybe Text)
    , _prgipUploadType :: !(Maybe Text)
    , _prgipResource :: !Text
    , _prgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prgipOptionsRequestedPolicyVersion'
--
-- * 'prgipXgafv'
--
-- * 'prgipUploadProtocol'
--
-- * 'prgipAccessToken'
--
-- * 'prgipUploadType'
--
-- * 'prgipResource'
--
-- * 'prgipCallback'
projectsReposGetIAMPolicy
    :: Text -- ^ 'prgipResource'
    -> ProjectsReposGetIAMPolicy
projectsReposGetIAMPolicy pPrgipResource_ =
  ProjectsReposGetIAMPolicy'
    { _prgipOptionsRequestedPolicyVersion = Nothing
    , _prgipXgafv = Nothing
    , _prgipUploadProtocol = Nothing
    , _prgipAccessToken = Nothing
    , _prgipUploadType = Nothing
    , _prgipResource = pPrgipResource_
    , _prgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
prgipOptionsRequestedPolicyVersion :: Lens' ProjectsReposGetIAMPolicy (Maybe Int32)
prgipOptionsRequestedPolicyVersion
  = lens _prgipOptionsRequestedPolicyVersion
      (\ s a -> s{_prgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
prgipXgafv :: Lens' ProjectsReposGetIAMPolicy (Maybe Xgafv)
prgipXgafv
  = lens _prgipXgafv (\ s a -> s{_prgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prgipUploadProtocol :: Lens' ProjectsReposGetIAMPolicy (Maybe Text)
prgipUploadProtocol
  = lens _prgipUploadProtocol
      (\ s a -> s{_prgipUploadProtocol = a})

-- | OAuth access token.
prgipAccessToken :: Lens' ProjectsReposGetIAMPolicy (Maybe Text)
prgipAccessToken
  = lens _prgipAccessToken
      (\ s a -> s{_prgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prgipUploadType :: Lens' ProjectsReposGetIAMPolicy (Maybe Text)
prgipUploadType
  = lens _prgipUploadType
      (\ s a -> s{_prgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
prgipResource :: Lens' ProjectsReposGetIAMPolicy Text
prgipResource
  = lens _prgipResource
      (\ s a -> s{_prgipResource = a})

-- | JSONP
prgipCallback :: Lens' ProjectsReposGetIAMPolicy (Maybe Text)
prgipCallback
  = lens _prgipCallback
      (\ s a -> s{_prgipCallback = a})

instance GoogleRequest ProjectsReposGetIAMPolicy
         where
        type Rs ProjectsReposGetIAMPolicy = Policy
        type Scopes ProjectsReposGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control",
               "https://www.googleapis.com/auth/source.read_only",
               "https://www.googleapis.com/auth/source.read_write"]
        requestClient ProjectsReposGetIAMPolicy'{..}
          = go _prgipResource
              _prgipOptionsRequestedPolicyVersion
              _prgipXgafv
              _prgipUploadProtocol
              _prgipAccessToken
              _prgipUploadType
              _prgipCallback
              (Just AltJSON)
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReposGetIAMPolicyResource)
                      mempty
