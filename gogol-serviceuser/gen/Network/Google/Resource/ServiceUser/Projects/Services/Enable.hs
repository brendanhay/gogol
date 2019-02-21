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
-- Module      : Network.Google.Resource.ServiceUser.Projects.Services.Enable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable a service so it can be used with a project. See [Cloud Auth
-- Guide](https:\/\/cloud.google.com\/docs\/authentication) for more
-- information. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.projects.services.enable@.
module Network.Google.Resource.ServiceUser.Projects.Services.Enable
    (
    -- * REST Resource
      ProjectsServicesEnableResource

    -- * Creating a Request
    , projectsServicesEnable
    , ProjectsServicesEnable

    -- * Request Lenses
    , pseXgafv
    , pseUploadProtocol
    , pseAccessToken
    , pseUploadType
    , psePayload
    , pseName
    , pseCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceUser.Types

-- | A resource alias for @serviceuser.projects.services.enable@ method which the
-- 'ProjectsServicesEnable' request conforms to.
type ProjectsServicesEnableResource =
     "v1" :>
       CaptureMode "name" "enable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EnableServiceRequest :>
                       Post '[JSON] Operation

-- | Enable a service so it can be used with a project. See [Cloud Auth
-- Guide](https:\/\/cloud.google.com\/docs\/authentication) for more
-- information. Operation
--
-- /See:/ 'projectsServicesEnable' smart constructor.
data ProjectsServicesEnable =
  ProjectsServicesEnable'
    { _pseXgafv          :: !(Maybe Xgafv)
    , _pseUploadProtocol :: !(Maybe Text)
    , _pseAccessToken    :: !(Maybe Text)
    , _pseUploadType     :: !(Maybe Text)
    , _psePayload        :: !EnableServiceRequest
    , _pseName           :: !Text
    , _pseCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServicesEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pseXgafv'
--
-- * 'pseUploadProtocol'
--
-- * 'pseAccessToken'
--
-- * 'pseUploadType'
--
-- * 'psePayload'
--
-- * 'pseName'
--
-- * 'pseCallback'
projectsServicesEnable
    :: EnableServiceRequest -- ^ 'psePayload'
    -> Text -- ^ 'pseName'
    -> ProjectsServicesEnable
projectsServicesEnable pPsePayload_ pPseName_ =
  ProjectsServicesEnable'
    { _pseXgafv = Nothing
    , _pseUploadProtocol = Nothing
    , _pseAccessToken = Nothing
    , _pseUploadType = Nothing
    , _psePayload = pPsePayload_
    , _pseName = pPseName_
    , _pseCallback = Nothing
    }


-- | V1 error format.
pseXgafv :: Lens' ProjectsServicesEnable (Maybe Xgafv)
pseXgafv = lens _pseXgafv (\ s a -> s{_pseXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pseUploadProtocol :: Lens' ProjectsServicesEnable (Maybe Text)
pseUploadProtocol
  = lens _pseUploadProtocol
      (\ s a -> s{_pseUploadProtocol = a})

-- | OAuth access token.
pseAccessToken :: Lens' ProjectsServicesEnable (Maybe Text)
pseAccessToken
  = lens _pseAccessToken
      (\ s a -> s{_pseAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pseUploadType :: Lens' ProjectsServicesEnable (Maybe Text)
pseUploadType
  = lens _pseUploadType
      (\ s a -> s{_pseUploadType = a})

-- | Multipart request metadata.
psePayload :: Lens' ProjectsServicesEnable EnableServiceRequest
psePayload
  = lens _psePayload (\ s a -> s{_psePayload = a})

-- | Name of the consumer and the service to enable for that consumer. A
-- valid path would be: -
-- projects\/my-project\/services\/servicemanagement.googleapis.com
pseName :: Lens' ProjectsServicesEnable Text
pseName = lens _pseName (\ s a -> s{_pseName = a})

-- | JSONP
pseCallback :: Lens' ProjectsServicesEnable (Maybe Text)
pseCallback
  = lens _pseCallback (\ s a -> s{_pseCallback = a})

instance GoogleRequest ProjectsServicesEnable where
        type Rs ProjectsServicesEnable = Operation
        type Scopes ProjectsServicesEnable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ProjectsServicesEnable'{..}
          = go _pseName _pseXgafv _pseUploadProtocol
              _pseAccessToken
              _pseUploadType
              _pseCallback
              (Just AltJSON)
              _psePayload
              serviceUserService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServicesEnableResource)
                      mempty
