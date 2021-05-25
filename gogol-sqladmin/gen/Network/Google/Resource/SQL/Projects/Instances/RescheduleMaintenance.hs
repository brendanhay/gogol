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
-- Module      : Network.Google.Resource.SQL.Projects.Instances.RescheduleMaintenance
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reschedules the maintenance on the given instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.rescheduleMaintenance@.
module Network.Google.Resource.SQL.Projects.Instances.RescheduleMaintenance
    (
    -- * REST Resource
      ProjectsInstancesRescheduleMaintenanceResource

    -- * Creating a Request
    , projectsInstancesRescheduleMaintenance
    , ProjectsInstancesRescheduleMaintenance

    -- * Request Lenses
    , pirmXgafv
    , pirmUploadProtocol
    , pirmProject
    , pirmAccessToken
    , pirmUploadType
    , pirmPayload
    , pirmCallback
    , pirmInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.rescheduleMaintenance@ method which the
-- 'ProjectsInstancesRescheduleMaintenance' request conforms to.
type ProjectsInstancesRescheduleMaintenanceResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "rescheduleMaintenance" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               SQLInstancesRescheduleMaintenanceRequestBody
                               :> Post '[JSON] Operation

-- | Reschedules the maintenance on the given instance.
--
-- /See:/ 'projectsInstancesRescheduleMaintenance' smart constructor.
data ProjectsInstancesRescheduleMaintenance =
  ProjectsInstancesRescheduleMaintenance'
    { _pirmXgafv :: !(Maybe Xgafv)
    , _pirmUploadProtocol :: !(Maybe Text)
    , _pirmProject :: !Text
    , _pirmAccessToken :: !(Maybe Text)
    , _pirmUploadType :: !(Maybe Text)
    , _pirmPayload :: !SQLInstancesRescheduleMaintenanceRequestBody
    , _pirmCallback :: !(Maybe Text)
    , _pirmInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesRescheduleMaintenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirmXgafv'
--
-- * 'pirmUploadProtocol'
--
-- * 'pirmProject'
--
-- * 'pirmAccessToken'
--
-- * 'pirmUploadType'
--
-- * 'pirmPayload'
--
-- * 'pirmCallback'
--
-- * 'pirmInstance'
projectsInstancesRescheduleMaintenance
    :: Text -- ^ 'pirmProject'
    -> SQLInstancesRescheduleMaintenanceRequestBody -- ^ 'pirmPayload'
    -> Text -- ^ 'pirmInstance'
    -> ProjectsInstancesRescheduleMaintenance
projectsInstancesRescheduleMaintenance pPirmProject_ pPirmPayload_ pPirmInstance_ =
  ProjectsInstancesRescheduleMaintenance'
    { _pirmXgafv = Nothing
    , _pirmUploadProtocol = Nothing
    , _pirmProject = pPirmProject_
    , _pirmAccessToken = Nothing
    , _pirmUploadType = Nothing
    , _pirmPayload = pPirmPayload_
    , _pirmCallback = Nothing
    , _pirmInstance = pPirmInstance_
    }


-- | V1 error format.
pirmXgafv :: Lens' ProjectsInstancesRescheduleMaintenance (Maybe Xgafv)
pirmXgafv
  = lens _pirmXgafv (\ s a -> s{_pirmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pirmUploadProtocol :: Lens' ProjectsInstancesRescheduleMaintenance (Maybe Text)
pirmUploadProtocol
  = lens _pirmUploadProtocol
      (\ s a -> s{_pirmUploadProtocol = a})

-- | ID of the project that contains the instance.
pirmProject :: Lens' ProjectsInstancesRescheduleMaintenance Text
pirmProject
  = lens _pirmProject (\ s a -> s{_pirmProject = a})

-- | OAuth access token.
pirmAccessToken :: Lens' ProjectsInstancesRescheduleMaintenance (Maybe Text)
pirmAccessToken
  = lens _pirmAccessToken
      (\ s a -> s{_pirmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pirmUploadType :: Lens' ProjectsInstancesRescheduleMaintenance (Maybe Text)
pirmUploadType
  = lens _pirmUploadType
      (\ s a -> s{_pirmUploadType = a})

-- | Multipart request metadata.
pirmPayload :: Lens' ProjectsInstancesRescheduleMaintenance SQLInstancesRescheduleMaintenanceRequestBody
pirmPayload
  = lens _pirmPayload (\ s a -> s{_pirmPayload = a})

-- | JSONP
pirmCallback :: Lens' ProjectsInstancesRescheduleMaintenance (Maybe Text)
pirmCallback
  = lens _pirmCallback (\ s a -> s{_pirmCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
pirmInstance :: Lens' ProjectsInstancesRescheduleMaintenance Text
pirmInstance
  = lens _pirmInstance (\ s a -> s{_pirmInstance = a})

instance GoogleRequest
           ProjectsInstancesRescheduleMaintenance
         where
        type Rs ProjectsInstancesRescheduleMaintenance =
             Operation
        type Scopes ProjectsInstancesRescheduleMaintenance =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient
          ProjectsInstancesRescheduleMaintenance'{..}
          = go _pirmProject _pirmInstance _pirmXgafv
              _pirmUploadProtocol
              _pirmAccessToken
              _pirmUploadType
              _pirmCallback
              (Just AltJSON)
              _pirmPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesRescheduleMaintenanceResource)
                      mempty
