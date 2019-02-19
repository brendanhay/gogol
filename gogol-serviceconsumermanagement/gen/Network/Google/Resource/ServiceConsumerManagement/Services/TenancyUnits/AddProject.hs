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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AddProject
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new tenant project to the tenancy unit. There can be at most 512
-- tenant projects in a tenancy unit. If there are previously failed
-- \`AddTenantProject\` calls, you might need to call
-- \`RemoveTenantProject\` first to clean them before you can make another
-- \`AddTenantProject\` with the same tag. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.addProject@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AddProject
    (
    -- * REST Resource
      ServicesTenancyUnitsAddProjectResource

    -- * Creating a Request
    , servicesTenancyUnitsAddProject
    , ServicesTenancyUnitsAddProject

    -- * Request Lenses
    , sParent
    , sXgafv
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sPayload
    , sCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.addProject@ method which the
-- 'ServicesTenancyUnitsAddProject' request conforms to.
type ServicesTenancyUnitsAddProjectResource =
     "v1" :>
       CaptureMode "parent" "addProject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AddTenantProjectRequest :>
                       Post '[JSON] Operation

-- | Add a new tenant project to the tenancy unit. There can be at most 512
-- tenant projects in a tenancy unit. If there are previously failed
-- \`AddTenantProject\` calls, you might need to call
-- \`RemoveTenantProject\` first to clean them before you can make another
-- \`AddTenantProject\` with the same tag. Operation.
--
-- /See:/ 'servicesTenancyUnitsAddProject' smart constructor.
data ServicesTenancyUnitsAddProject =
  ServicesTenancyUnitsAddProject'
    { _sParent         :: !Text
    , _sXgafv          :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken    :: !(Maybe Text)
    , _sUploadType     :: !(Maybe Text)
    , _sPayload        :: !AddTenantProjectRequest
    , _sCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsAddProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sParent'
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sPayload'
--
-- * 'sCallback'
servicesTenancyUnitsAddProject
    :: Text -- ^ 'sParent'
    -> AddTenantProjectRequest -- ^ 'sPayload'
    -> ServicesTenancyUnitsAddProject
servicesTenancyUnitsAddProject pSParent_ pSPayload_ =
  ServicesTenancyUnitsAddProject'
    { _sParent = pSParent_
    , _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sPayload = pSPayload_
    , _sCallback = Nothing
    }


-- | Name of the tenancy unit.
sParent :: Lens' ServicesTenancyUnitsAddProject Text
sParent = lens _sParent (\ s a -> s{_sParent = a})

-- | V1 error format.
sXgafv :: Lens' ServicesTenancyUnitsAddProject (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' ServicesTenancyUnitsAddProject (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' ServicesTenancyUnitsAddProject (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' ServicesTenancyUnitsAddProject (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | Multipart request metadata.
sPayload :: Lens' ServicesTenancyUnitsAddProject AddTenantProjectRequest
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | JSONP
sCallback :: Lens' ServicesTenancyUnitsAddProject (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest ServicesTenancyUnitsAddProject
         where
        type Rs ServicesTenancyUnitsAddProject = Operation
        type Scopes ServicesTenancyUnitsAddProject =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsAddProject'{..}
          = go _sParent _sXgafv _sUploadProtocol _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              _sPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsAddProjectResource)
                      mempty
