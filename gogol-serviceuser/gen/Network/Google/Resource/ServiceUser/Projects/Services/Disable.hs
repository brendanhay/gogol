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
-- Module      : Network.Google.Resource.ServiceUser.Projects.Services.Disable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a service so it can no longer be used with a project. This
-- prevents unintended usage that may cause unexpected billing charges or
-- security leaks. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.projects.services.disable@.
module Network.Google.Resource.ServiceUser.Projects.Services.Disable
    (
    -- * REST Resource
      ProjectsServicesDisableResource

    -- * Creating a Request
    , projectsServicesDisable
    , ProjectsServicesDisable

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdAccessToken
    , psdUploadType
    , psdPayload
    , psdName
    , psdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceUser.Types

-- | A resource alias for @serviceuser.projects.services.disable@ method which the
-- 'ProjectsServicesDisable' request conforms to.
type ProjectsServicesDisableResource =
     "v1" :>
       CaptureMode "name" "disable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DisableServiceRequest :>
                       Post '[JSON] Operation

-- | Disable a service so it can no longer be used with a project. This
-- prevents unintended usage that may cause unexpected billing charges or
-- security leaks. Operation
--
-- /See:/ 'projectsServicesDisable' smart constructor.
data ProjectsServicesDisable = ProjectsServicesDisable'
    { _psdXgafv          :: !(Maybe Xgafv)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdPayload        :: !DisableServiceRequest
    , _psdName           :: !Text
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServicesDisable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdPayload'
--
-- * 'psdName'
--
-- * 'psdCallback'
projectsServicesDisable
    :: DisableServiceRequest -- ^ 'psdPayload'
    -> Text -- ^ 'psdName'
    -> ProjectsServicesDisable
projectsServicesDisable pPsdPayload_ pPsdName_ =
    ProjectsServicesDisable'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdPayload = pPsdPayload_
    , _psdName = pPsdName_
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsServicesDisable (Maybe Xgafv)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsServicesDisable (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsServicesDisable (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsServicesDisable (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | Multipart request metadata.
psdPayload :: Lens' ProjectsServicesDisable DisableServiceRequest
psdPayload
  = lens _psdPayload (\ s a -> s{_psdPayload = a})

-- | Name of the consumer and the service to disable for that consumer. The
-- Service User implementation accepts the following forms for consumer: -
-- \"project:\" A valid path would be: -
-- projects\/my-project\/services\/servicemanagement.googleapis.com
psdName :: Lens' ProjectsServicesDisable Text
psdName = lens _psdName (\ s a -> s{_psdName = a})

-- | JSONP
psdCallback :: Lens' ProjectsServicesDisable (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsServicesDisable where
        type Rs ProjectsServicesDisable = Operation
        type Scopes ProjectsServicesDisable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ProjectsServicesDisable'{..}
          = go _psdName _psdXgafv _psdUploadProtocol
              _psdAccessToken
              _psdUploadType
              _psdCallback
              (Just AltJSON)
              _psdPayload
              serviceUserService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServicesDisableResource)
                      mempty
