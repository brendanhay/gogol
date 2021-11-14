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
-- Module      : Network.Google.Resource.Monitoring.Projects.AlertPolicies.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new alerting policy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.create@.
module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Create
    (
    -- * REST Resource
      ProjectsAlertPoliciesCreateResource

    -- * Creating a Request
    , projectsAlertPoliciesCreate
    , ProjectsAlertPoliciesCreate

    -- * Request Lenses
    , papcXgafv
    , papcUploadProtocol
    , papcAccessToken
    , papcUploadType
    , papcPayload
    , papcName
    , papcCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.alertPolicies.create@ method which the
-- 'ProjectsAlertPoliciesCreate' request conforms to.
type ProjectsAlertPoliciesCreateResource =
     "v3" :>
       Capture "name" Text :>
         "alertPolicies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AlertPolicy :>
                         Post '[JSON] AlertPolicy

-- | Creates a new alerting policy.
--
-- /See:/ 'projectsAlertPoliciesCreate' smart constructor.
data ProjectsAlertPoliciesCreate =
  ProjectsAlertPoliciesCreate'
    { _papcXgafv :: !(Maybe Xgafv)
    , _papcUploadProtocol :: !(Maybe Text)
    , _papcAccessToken :: !(Maybe Text)
    , _papcUploadType :: !(Maybe Text)
    , _papcPayload :: !AlertPolicy
    , _papcName :: !Text
    , _papcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAlertPoliciesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papcXgafv'
--
-- * 'papcUploadProtocol'
--
-- * 'papcAccessToken'
--
-- * 'papcUploadType'
--
-- * 'papcPayload'
--
-- * 'papcName'
--
-- * 'papcCallback'
projectsAlertPoliciesCreate
    :: AlertPolicy -- ^ 'papcPayload'
    -> Text -- ^ 'papcName'
    -> ProjectsAlertPoliciesCreate
projectsAlertPoliciesCreate pPapcPayload_ pPapcName_ =
  ProjectsAlertPoliciesCreate'
    { _papcXgafv = Nothing
    , _papcUploadProtocol = Nothing
    , _papcAccessToken = Nothing
    , _papcUploadType = Nothing
    , _papcPayload = pPapcPayload_
    , _papcName = pPapcName_
    , _papcCallback = Nothing
    }


-- | V1 error format.
papcXgafv :: Lens' ProjectsAlertPoliciesCreate (Maybe Xgafv)
papcXgafv
  = lens _papcXgafv (\ s a -> s{_papcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
papcUploadProtocol :: Lens' ProjectsAlertPoliciesCreate (Maybe Text)
papcUploadProtocol
  = lens _papcUploadProtocol
      (\ s a -> s{_papcUploadProtocol = a})

-- | OAuth access token.
papcAccessToken :: Lens' ProjectsAlertPoliciesCreate (Maybe Text)
papcAccessToken
  = lens _papcAccessToken
      (\ s a -> s{_papcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
papcUploadType :: Lens' ProjectsAlertPoliciesCreate (Maybe Text)
papcUploadType
  = lens _papcUploadType
      (\ s a -> s{_papcUploadType = a})

-- | Multipart request metadata.
papcPayload :: Lens' ProjectsAlertPoliciesCreate AlertPolicy
papcPayload
  = lens _papcPayload (\ s a -> s{_papcPayload = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) in which
-- to create the alerting policy. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER] Note that this field names the parent
-- container in which the alerting policy will be written, not the name of
-- the created policy. |name| must be a host project of a workspace,
-- otherwise INVALID_ARGUMENT error will return. The alerting policy that
-- is returned will have a name that contains a normalized representation
-- of this name as a prefix but adds a suffix of the form
-- \/alertPolicies\/[ALERT_POLICY_ID], identifying the policy in the
-- container.
papcName :: Lens' ProjectsAlertPoliciesCreate Text
papcName = lens _papcName (\ s a -> s{_papcName = a})

-- | JSONP
papcCallback :: Lens' ProjectsAlertPoliciesCreate (Maybe Text)
papcCallback
  = lens _papcCallback (\ s a -> s{_papcCallback = a})

instance GoogleRequest ProjectsAlertPoliciesCreate
         where
        type Rs ProjectsAlertPoliciesCreate = AlertPolicy
        type Scopes ProjectsAlertPoliciesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsAlertPoliciesCreate'{..}
          = go _papcName _papcXgafv _papcUploadProtocol
              _papcAccessToken
              _papcUploadType
              _papcCallback
              (Just AltJSON)
              _papcPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAlertPoliciesCreateResource)
                      mempty
