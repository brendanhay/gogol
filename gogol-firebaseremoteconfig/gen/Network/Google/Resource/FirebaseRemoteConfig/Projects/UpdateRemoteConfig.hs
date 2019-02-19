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
-- Module      : Network.Google.Resource.FirebaseRemoteConfig.Projects.UpdateRemoteConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a RemoteConfig. We treat this as an always-existing resource
-- (when it is not found in our data store, we treat it as version 0, a
-- template with zero conditions and zero parameters). Hence there are no
-- Create or Delete operations. Returns the updated template when
-- successful (and the updated eTag as a response header), or an error if
-- things go wrong. Possible error messages: * VALIDATION_ERROR (HTTP
-- status 400) with additional details if the template being passed in can
-- not be validated. * AUTHENTICATION_ERROR (HTTP status 401) if the
-- request can not be authenticate (e.g. no access token, or invalid access
-- token). * AUTHORIZATION_ERROR (HTTP status 403) if the request can not
-- be authorized (e.g. the user has no access to the specified project id).
-- * VERSION_MISMATCH (HTTP status 412) when trying to update when the
-- expected eTag (passed in via the \"If-match\" header) is not specified,
-- or is specified but does does not match the current eTag. * Internal
-- error (HTTP status 500) for Database problems or other internal errors.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference> for @firebaseremoteconfig.projects.updateRemoteConfig@.
module Network.Google.Resource.FirebaseRemoteConfig.Projects.UpdateRemoteConfig
    (
    -- * REST Resource
      ProjectsUpdateRemoteConfigResource

    -- * Creating a Request
    , projectsUpdateRemoteConfig
    , ProjectsUpdateRemoteConfig

    -- * Request Lenses
    , purcXgafv
    , purcValidateOnly
    , purcUploadProtocol
    , purcProject
    , purcPp
    , purcAccessToken
    , purcUploadType
    , purcPayload
    , purcBearerToken
    , purcCallback
    ) where

import           Network.Google.FirebaseRemoteConfig.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaseremoteconfig.projects.updateRemoteConfig@ method which the
-- 'ProjectsUpdateRemoteConfig' request conforms to.
type ProjectsUpdateRemoteConfigResource =
     "v1" :>
       Capture "project" Text :>
         "remoteConfig" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "validateOnly" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RemoteConfig :>
                               Put '[JSON] RemoteConfig

-- | Update a RemoteConfig. We treat this as an always-existing resource
-- (when it is not found in our data store, we treat it as version 0, a
-- template with zero conditions and zero parameters). Hence there are no
-- Create or Delete operations. Returns the updated template when
-- successful (and the updated eTag as a response header), or an error if
-- things go wrong. Possible error messages: * VALIDATION_ERROR (HTTP
-- status 400) with additional details if the template being passed in can
-- not be validated. * AUTHENTICATION_ERROR (HTTP status 401) if the
-- request can not be authenticate (e.g. no access token, or invalid access
-- token). * AUTHORIZATION_ERROR (HTTP status 403) if the request can not
-- be authorized (e.g. the user has no access to the specified project id).
-- * VERSION_MISMATCH (HTTP status 412) when trying to update when the
-- expected eTag (passed in via the \"If-match\" header) is not specified,
-- or is specified but does does not match the current eTag. * Internal
-- error (HTTP status 500) for Database problems or other internal errors.
--
-- /See:/ 'projectsUpdateRemoteConfig' smart constructor.
data ProjectsUpdateRemoteConfig =
  ProjectsUpdateRemoteConfig'
    { _purcXgafv          :: !(Maybe Xgafv)
    , _purcValidateOnly   :: !(Maybe Bool)
    , _purcUploadProtocol :: !(Maybe Text)
    , _purcProject        :: !Text
    , _purcPp             :: !Bool
    , _purcAccessToken    :: !(Maybe Text)
    , _purcUploadType     :: !(Maybe Text)
    , _purcPayload        :: !RemoteConfig
    , _purcBearerToken    :: !(Maybe Text)
    , _purcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUpdateRemoteConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'purcXgafv'
--
-- * 'purcValidateOnly'
--
-- * 'purcUploadProtocol'
--
-- * 'purcProject'
--
-- * 'purcPp'
--
-- * 'purcAccessToken'
--
-- * 'purcUploadType'
--
-- * 'purcPayload'
--
-- * 'purcBearerToken'
--
-- * 'purcCallback'
projectsUpdateRemoteConfig
    :: Text -- ^ 'purcProject'
    -> RemoteConfig -- ^ 'purcPayload'
    -> ProjectsUpdateRemoteConfig
projectsUpdateRemoteConfig pPurcProject_ pPurcPayload_ =
  ProjectsUpdateRemoteConfig'
    { _purcXgafv = Nothing
    , _purcValidateOnly = Nothing
    , _purcUploadProtocol = Nothing
    , _purcProject = pPurcProject_
    , _purcPp = True
    , _purcAccessToken = Nothing
    , _purcUploadType = Nothing
    , _purcPayload = pPurcPayload_
    , _purcBearerToken = Nothing
    , _purcCallback = Nothing
    }


-- | V1 error format.
purcXgafv :: Lens' ProjectsUpdateRemoteConfig (Maybe Xgafv)
purcXgafv
  = lens _purcXgafv (\ s a -> s{_purcXgafv = a})

-- | Optional. Defaults to 'false' (UpdateRemoteConfig call should update the
-- backend if there are no validation\/interal errors). May be set to
-- 'true' to indicate that, should no validation errors occur, the call
-- should return a \"200 OK\" instead of performing the update. Note that
-- other error messages (500 Internal Error, 412 Version Mismatch, etc) may
-- still result after flipping to 'false', even if getting a \"200 OK\"
-- when calling with 'true'.
purcValidateOnly :: Lens' ProjectsUpdateRemoteConfig (Maybe Bool)
purcValidateOnly
  = lens _purcValidateOnly
      (\ s a -> s{_purcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
purcUploadProtocol :: Lens' ProjectsUpdateRemoteConfig (Maybe Text)
purcUploadProtocol
  = lens _purcUploadProtocol
      (\ s a -> s{_purcUploadProtocol = a})

-- | The GMP project identifier. Required. See note at the beginning of this
-- file regarding project ids.
purcProject :: Lens' ProjectsUpdateRemoteConfig Text
purcProject
  = lens _purcProject (\ s a -> s{_purcProject = a})

-- | Pretty-print response.
purcPp :: Lens' ProjectsUpdateRemoteConfig Bool
purcPp = lens _purcPp (\ s a -> s{_purcPp = a})

-- | OAuth access token.
purcAccessToken :: Lens' ProjectsUpdateRemoteConfig (Maybe Text)
purcAccessToken
  = lens _purcAccessToken
      (\ s a -> s{_purcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
purcUploadType :: Lens' ProjectsUpdateRemoteConfig (Maybe Text)
purcUploadType
  = lens _purcUploadType
      (\ s a -> s{_purcUploadType = a})

-- | Multipart request metadata.
purcPayload :: Lens' ProjectsUpdateRemoteConfig RemoteConfig
purcPayload
  = lens _purcPayload (\ s a -> s{_purcPayload = a})

-- | OAuth bearer token.
purcBearerToken :: Lens' ProjectsUpdateRemoteConfig (Maybe Text)
purcBearerToken
  = lens _purcBearerToken
      (\ s a -> s{_purcBearerToken = a})

-- | JSONP
purcCallback :: Lens' ProjectsUpdateRemoteConfig (Maybe Text)
purcCallback
  = lens _purcCallback (\ s a -> s{_purcCallback = a})

instance GoogleRequest ProjectsUpdateRemoteConfig
         where
        type Rs ProjectsUpdateRemoteConfig = RemoteConfig
        type Scopes ProjectsUpdateRemoteConfig = '[]
        requestClient ProjectsUpdateRemoteConfig'{..}
          = go _purcProject _purcXgafv _purcValidateOnly
              _purcUploadProtocol
              (Just _purcPp)
              _purcAccessToken
              _purcUploadType
              _purcBearerToken
              _purcCallback
              (Just AltJSON)
              _purcPayload
              firebaseRemoteConfigService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUpdateRemoteConfigResource)
                      mempty
