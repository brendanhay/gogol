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
-- Module      : Network.Google.Resource.FirebaseRemoteConfig.Projects.GetRemoteConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the latest version Remote Configuration for a project. Returns the
-- RemoteConfig as the payload, and also the eTag as a response header.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference> for @firebaseremoteconfig.projects.getRemoteConfig@.
module Network.Google.Resource.FirebaseRemoteConfig.Projects.GetRemoteConfig
    (
    -- * REST Resource
      ProjectsGetRemoteConfigResource

    -- * Creating a Request
    , projectsGetRemoteConfig
    , ProjectsGetRemoteConfig

    -- * Request Lenses
    , pgrcXgafv
    , pgrcUploadProtocol
    , pgrcProject
    , pgrcPp
    , pgrcAccessToken
    , pgrcUploadType
    , pgrcBearerToken
    , pgrcCallback
    ) where

import Network.Google.FirebaseRemoteConfig.Types
import Network.Google.Prelude

-- | A resource alias for @firebaseremoteconfig.projects.getRemoteConfig@ method which the
-- 'ProjectsGetRemoteConfig' request conforms to.
type ProjectsGetRemoteConfigResource =
     "v1" :>
       Capture "project" Text :>
         "remoteConfig" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] RemoteConfig

-- | Get the latest version Remote Configuration for a project. Returns the
-- RemoteConfig as the payload, and also the eTag as a response header.
--
-- /See:/ 'projectsGetRemoteConfig' smart constructor.
data ProjectsGetRemoteConfig =
  ProjectsGetRemoteConfig'
    { _pgrcXgafv :: !(Maybe Xgafv)
    , _pgrcUploadProtocol :: !(Maybe Text)
    , _pgrcProject :: !Text
    , _pgrcPp :: !Bool
    , _pgrcAccessToken :: !(Maybe Text)
    , _pgrcUploadType :: !(Maybe Text)
    , _pgrcBearerToken :: !(Maybe Text)
    , _pgrcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetRemoteConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgrcXgafv'
--
-- * 'pgrcUploadProtocol'
--
-- * 'pgrcProject'
--
-- * 'pgrcPp'
--
-- * 'pgrcAccessToken'
--
-- * 'pgrcUploadType'
--
-- * 'pgrcBearerToken'
--
-- * 'pgrcCallback'
projectsGetRemoteConfig
    :: Text -- ^ 'pgrcProject'
    -> ProjectsGetRemoteConfig
projectsGetRemoteConfig pPgrcProject_ =
  ProjectsGetRemoteConfig'
    { _pgrcXgafv = Nothing
    , _pgrcUploadProtocol = Nothing
    , _pgrcProject = pPgrcProject_
    , _pgrcPp = True
    , _pgrcAccessToken = Nothing
    , _pgrcUploadType = Nothing
    , _pgrcBearerToken = Nothing
    , _pgrcCallback = Nothing
    }


-- | V1 error format.
pgrcXgafv :: Lens' ProjectsGetRemoteConfig (Maybe Xgafv)
pgrcXgafv
  = lens _pgrcXgafv (\ s a -> s{_pgrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgrcUploadProtocol :: Lens' ProjectsGetRemoteConfig (Maybe Text)
pgrcUploadProtocol
  = lens _pgrcUploadProtocol
      (\ s a -> s{_pgrcUploadProtocol = a})

-- | The GMP project identifier. Required. See note at the beginning of this
-- file regarding project ids.
pgrcProject :: Lens' ProjectsGetRemoteConfig Text
pgrcProject
  = lens _pgrcProject (\ s a -> s{_pgrcProject = a})

-- | Pretty-print response.
pgrcPp :: Lens' ProjectsGetRemoteConfig Bool
pgrcPp = lens _pgrcPp (\ s a -> s{_pgrcPp = a})

-- | OAuth access token.
pgrcAccessToken :: Lens' ProjectsGetRemoteConfig (Maybe Text)
pgrcAccessToken
  = lens _pgrcAccessToken
      (\ s a -> s{_pgrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgrcUploadType :: Lens' ProjectsGetRemoteConfig (Maybe Text)
pgrcUploadType
  = lens _pgrcUploadType
      (\ s a -> s{_pgrcUploadType = a})

-- | OAuth bearer token.
pgrcBearerToken :: Lens' ProjectsGetRemoteConfig (Maybe Text)
pgrcBearerToken
  = lens _pgrcBearerToken
      (\ s a -> s{_pgrcBearerToken = a})

-- | JSONP
pgrcCallback :: Lens' ProjectsGetRemoteConfig (Maybe Text)
pgrcCallback
  = lens _pgrcCallback (\ s a -> s{_pgrcCallback = a})

instance GoogleRequest ProjectsGetRemoteConfig where
        type Rs ProjectsGetRemoteConfig = RemoteConfig
        type Scopes ProjectsGetRemoteConfig = '[]
        requestClient ProjectsGetRemoteConfig'{..}
          = go _pgrcProject _pgrcXgafv _pgrcUploadProtocol
              (Just _pgrcPp)
              _pgrcAccessToken
              _pgrcUploadType
              _pgrcBearerToken
              _pgrcCallback
              (Just AltJSON)
              firebaseRemoteConfigService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetRemoteConfigResource)
                      mempty
