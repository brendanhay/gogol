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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.setIamPolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsAttestorsSetIAMPolicyResource

    -- * Creating a Request
    , projectsAttestorsSetIAMPolicy
    , ProjectsAttestorsSetIAMPolicy

    -- * Request Lenses
    , pasipXgafv
    , pasipUploadProtocol
    , pasipAccessToken
    , pasipUploadType
    , pasipPayload
    , pasipResource
    , pasipCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.setIamPolicy@ method which the
-- 'ProjectsAttestorsSetIAMPolicy' request conforms to.
type ProjectsAttestorsSetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] IAMPolicy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsAttestorsSetIAMPolicy' smart constructor.
data ProjectsAttestorsSetIAMPolicy = ProjectsAttestorsSetIAMPolicy'
    { _pasipXgafv          :: !(Maybe Xgafv)
    , _pasipUploadProtocol :: !(Maybe Text)
    , _pasipAccessToken    :: !(Maybe Text)
    , _pasipUploadType     :: !(Maybe Text)
    , _pasipPayload        :: !SetIAMPolicyRequest
    , _pasipResource       :: !Text
    , _pasipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAttestorsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasipXgafv'
--
-- * 'pasipUploadProtocol'
--
-- * 'pasipAccessToken'
--
-- * 'pasipUploadType'
--
-- * 'pasipPayload'
--
-- * 'pasipResource'
--
-- * 'pasipCallback'
projectsAttestorsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pasipPayload'
    -> Text -- ^ 'pasipResource'
    -> ProjectsAttestorsSetIAMPolicy
projectsAttestorsSetIAMPolicy pPasipPayload_ pPasipResource_ =
    ProjectsAttestorsSetIAMPolicy'
    { _pasipXgafv = Nothing
    , _pasipUploadProtocol = Nothing
    , _pasipAccessToken = Nothing
    , _pasipUploadType = Nothing
    , _pasipPayload = pPasipPayload_
    , _pasipResource = pPasipResource_
    , _pasipCallback = Nothing
    }

-- | V1 error format.
pasipXgafv :: Lens' ProjectsAttestorsSetIAMPolicy (Maybe Xgafv)
pasipXgafv
  = lens _pasipXgafv (\ s a -> s{_pasipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pasipUploadProtocol :: Lens' ProjectsAttestorsSetIAMPolicy (Maybe Text)
pasipUploadProtocol
  = lens _pasipUploadProtocol
      (\ s a -> s{_pasipUploadProtocol = a})

-- | OAuth access token.
pasipAccessToken :: Lens' ProjectsAttestorsSetIAMPolicy (Maybe Text)
pasipAccessToken
  = lens _pasipAccessToken
      (\ s a -> s{_pasipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pasipUploadType :: Lens' ProjectsAttestorsSetIAMPolicy (Maybe Text)
pasipUploadType
  = lens _pasipUploadType
      (\ s a -> s{_pasipUploadType = a})

-- | Multipart request metadata.
pasipPayload :: Lens' ProjectsAttestorsSetIAMPolicy SetIAMPolicyRequest
pasipPayload
  = lens _pasipPayload (\ s a -> s{_pasipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pasipResource :: Lens' ProjectsAttestorsSetIAMPolicy Text
pasipResource
  = lens _pasipResource
      (\ s a -> s{_pasipResource = a})

-- | JSONP
pasipCallback :: Lens' ProjectsAttestorsSetIAMPolicy (Maybe Text)
pasipCallback
  = lens _pasipCallback
      (\ s a -> s{_pasipCallback = a})

instance GoogleRequest ProjectsAttestorsSetIAMPolicy
         where
        type Rs ProjectsAttestorsSetIAMPolicy = IAMPolicy
        type Scopes ProjectsAttestorsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsSetIAMPolicy'{..}
          = go _pasipResource _pasipXgafv _pasipUploadProtocol
              _pasipAccessToken
              _pasipUploadType
              _pasipCallback
              (Just AltJSON)
              _pasipPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAttestorsSetIAMPolicyResource)
                      mempty
