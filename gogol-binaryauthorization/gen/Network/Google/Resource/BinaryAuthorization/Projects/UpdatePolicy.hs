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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.UpdatePolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a project\'s policy, and returns a copy of the new
-- policy. A policy is always updated as a whole, to avoid race conditions
-- with concurrent policy enforcement (or management!) requests. Returns
-- NOT_FOUND if the project does not exist, INVALID_ARGUMENT if the request
-- is malformed.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.updatePolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.UpdatePolicy
    (
    -- * REST Resource
      ProjectsUpdatePolicyResource

    -- * Creating a Request
    , projectsUpdatePolicy
    , ProjectsUpdatePolicy

    -- * Request Lenses
    , pupXgafv
    , pupUploadProtocol
    , pupAccessToken
    , pupUploadType
    , pupPayload
    , pupName
    , pupCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.updatePolicy@ method which the
-- 'ProjectsUpdatePolicy' request conforms to.
type ProjectsUpdatePolicyResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Policy :> Put '[JSON] Policy

-- | Creates or updates a project\'s policy, and returns a copy of the new
-- policy. A policy is always updated as a whole, to avoid race conditions
-- with concurrent policy enforcement (or management!) requests. Returns
-- NOT_FOUND if the project does not exist, INVALID_ARGUMENT if the request
-- is malformed.
--
-- /See:/ 'projectsUpdatePolicy' smart constructor.
data ProjectsUpdatePolicy =
  ProjectsUpdatePolicy'
    { _pupXgafv          :: !(Maybe Xgafv)
    , _pupUploadProtocol :: !(Maybe Text)
    , _pupAccessToken    :: !(Maybe Text)
    , _pupUploadType     :: !(Maybe Text)
    , _pupPayload        :: !Policy
    , _pupName           :: !Text
    , _pupCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsUpdatePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupXgafv'
--
-- * 'pupUploadProtocol'
--
-- * 'pupAccessToken'
--
-- * 'pupUploadType'
--
-- * 'pupPayload'
--
-- * 'pupName'
--
-- * 'pupCallback'
projectsUpdatePolicy
    :: Policy -- ^ 'pupPayload'
    -> Text -- ^ 'pupName'
    -> ProjectsUpdatePolicy
projectsUpdatePolicy pPupPayload_ pPupName_ =
  ProjectsUpdatePolicy'
    { _pupXgafv = Nothing
    , _pupUploadProtocol = Nothing
    , _pupAccessToken = Nothing
    , _pupUploadType = Nothing
    , _pupPayload = pPupPayload_
    , _pupName = pPupName_
    , _pupCallback = Nothing
    }

-- | V1 error format.
pupXgafv :: Lens' ProjectsUpdatePolicy (Maybe Xgafv)
pupXgafv = lens _pupXgafv (\ s a -> s{_pupXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pupUploadProtocol :: Lens' ProjectsUpdatePolicy (Maybe Text)
pupUploadProtocol
  = lens _pupUploadProtocol
      (\ s a -> s{_pupUploadProtocol = a})

-- | OAuth access token.
pupAccessToken :: Lens' ProjectsUpdatePolicy (Maybe Text)
pupAccessToken
  = lens _pupAccessToken
      (\ s a -> s{_pupAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pupUploadType :: Lens' ProjectsUpdatePolicy (Maybe Text)
pupUploadType
  = lens _pupUploadType
      (\ s a -> s{_pupUploadType = a})

-- | Multipart request metadata.
pupPayload :: Lens' ProjectsUpdatePolicy Policy
pupPayload
  = lens _pupPayload (\ s a -> s{_pupPayload = a})

-- | Output only. The resource name, in the format \`projects\/*\/policy\`.
-- There is at most one policy per project.
pupName :: Lens' ProjectsUpdatePolicy Text
pupName = lens _pupName (\ s a -> s{_pupName = a})

-- | JSONP
pupCallback :: Lens' ProjectsUpdatePolicy (Maybe Text)
pupCallback
  = lens _pupCallback (\ s a -> s{_pupCallback = a})

instance GoogleRequest ProjectsUpdatePolicy where
        type Rs ProjectsUpdatePolicy = Policy
        type Scopes ProjectsUpdatePolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsUpdatePolicy'{..}
          = go _pupName _pupXgafv _pupUploadProtocol
              _pupAccessToken
              _pupUploadType
              _pupCallback
              (Just AltJSON)
              _pupPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUpdatePolicyResource)
                      mempty
