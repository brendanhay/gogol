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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.setIamPolicy@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsFunctionsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsFunctionsSetIAMPolicy
    , ProjectsLocationsFunctionsSetIAMPolicy

    -- * Request Lenses
    , plfsipXgafv
    , plfsipUploadProtocol
    , plfsipAccessToken
    , plfsipUploadType
    , plfsipPayload
    , plfsipResource
    , plfsipCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.setIamPolicy@ method which the
-- 'ProjectsLocationsFunctionsSetIAMPolicy' request conforms to.
type ProjectsLocationsFunctionsSetIAMPolicyResource =
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
-- /See:/ 'projectsLocationsFunctionsSetIAMPolicy' smart constructor.
data ProjectsLocationsFunctionsSetIAMPolicy =
  ProjectsLocationsFunctionsSetIAMPolicy'
    { _plfsipXgafv          :: !(Maybe Xgafv)
    , _plfsipUploadProtocol :: !(Maybe Text)
    , _plfsipAccessToken    :: !(Maybe Text)
    , _plfsipUploadType     :: !(Maybe Text)
    , _plfsipPayload        :: !SetIAMPolicyRequest
    , _plfsipResource       :: !Text
    , _plfsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsFunctionsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfsipXgafv'
--
-- * 'plfsipUploadProtocol'
--
-- * 'plfsipAccessToken'
--
-- * 'plfsipUploadType'
--
-- * 'plfsipPayload'
--
-- * 'plfsipResource'
--
-- * 'plfsipCallback'
projectsLocationsFunctionsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plfsipPayload'
    -> Text -- ^ 'plfsipResource'
    -> ProjectsLocationsFunctionsSetIAMPolicy
projectsLocationsFunctionsSetIAMPolicy pPlfsipPayload_ pPlfsipResource_ =
  ProjectsLocationsFunctionsSetIAMPolicy'
    { _plfsipXgafv = Nothing
    , _plfsipUploadProtocol = Nothing
    , _plfsipAccessToken = Nothing
    , _plfsipUploadType = Nothing
    , _plfsipPayload = pPlfsipPayload_
    , _plfsipResource = pPlfsipResource_
    , _plfsipCallback = Nothing
    }

-- | V1 error format.
plfsipXgafv :: Lens' ProjectsLocationsFunctionsSetIAMPolicy (Maybe Xgafv)
plfsipXgafv
  = lens _plfsipXgafv (\ s a -> s{_plfsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfsipUploadProtocol :: Lens' ProjectsLocationsFunctionsSetIAMPolicy (Maybe Text)
plfsipUploadProtocol
  = lens _plfsipUploadProtocol
      (\ s a -> s{_plfsipUploadProtocol = a})

-- | OAuth access token.
plfsipAccessToken :: Lens' ProjectsLocationsFunctionsSetIAMPolicy (Maybe Text)
plfsipAccessToken
  = lens _plfsipAccessToken
      (\ s a -> s{_plfsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfsipUploadType :: Lens' ProjectsLocationsFunctionsSetIAMPolicy (Maybe Text)
plfsipUploadType
  = lens _plfsipUploadType
      (\ s a -> s{_plfsipUploadType = a})

-- | Multipart request metadata.
plfsipPayload :: Lens' ProjectsLocationsFunctionsSetIAMPolicy SetIAMPolicyRequest
plfsipPayload
  = lens _plfsipPayload
      (\ s a -> s{_plfsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plfsipResource :: Lens' ProjectsLocationsFunctionsSetIAMPolicy Text
plfsipResource
  = lens _plfsipResource
      (\ s a -> s{_plfsipResource = a})

-- | JSONP
plfsipCallback :: Lens' ProjectsLocationsFunctionsSetIAMPolicy (Maybe Text)
plfsipCallback
  = lens _plfsipCallback
      (\ s a -> s{_plfsipCallback = a})

instance GoogleRequest
           ProjectsLocationsFunctionsSetIAMPolicy
         where
        type Rs ProjectsLocationsFunctionsSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsFunctionsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsFunctionsSetIAMPolicy'{..}
          = go _plfsipResource _plfsipXgafv
              _plfsipUploadProtocol
              _plfsipAccessToken
              _plfsipUploadType
              _plfsipCallback
              (Just AltJSON)
              _plfsipPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsSetIAMPolicyResource)
                      mempty
