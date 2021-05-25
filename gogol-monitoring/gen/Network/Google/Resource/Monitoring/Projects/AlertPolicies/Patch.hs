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
-- Module      : Network.Google.Resource.Monitoring.Projects.AlertPolicies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an alerting policy. You can either replace the entire policy
-- with a new one or replace only certain fields in the current alerting
-- policy by specifying the fields to be updated via updateMask. Returns
-- the updated alerting policy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.patch@.
module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Patch
    (
    -- * REST Resource
      ProjectsAlertPoliciesPatchResource

    -- * Creating a Request
    , projectsAlertPoliciesPatch
    , ProjectsAlertPoliciesPatch

    -- * Request Lenses
    , pAppXgafv
    , pAppUploadProtocol
    , pAppUpdateMask
    , pAppAccessToken
    , pAppUploadType
    , pAppPayload
    , pAppName
    , pAppCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.alertPolicies.patch@ method which the
-- 'ProjectsAlertPoliciesPatch' request conforms to.
type ProjectsAlertPoliciesPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AlertPolicy :>
                         Patch '[JSON] AlertPolicy

-- | Updates an alerting policy. You can either replace the entire policy
-- with a new one or replace only certain fields in the current alerting
-- policy by specifying the fields to be updated via updateMask. Returns
-- the updated alerting policy.
--
-- /See:/ 'projectsAlertPoliciesPatch' smart constructor.
data ProjectsAlertPoliciesPatch =
  ProjectsAlertPoliciesPatch'
    { _pAppXgafv :: !(Maybe Xgafv)
    , _pAppUploadProtocol :: !(Maybe Text)
    , _pAppUpdateMask :: !(Maybe GFieldMask)
    , _pAppAccessToken :: !(Maybe Text)
    , _pAppUploadType :: !(Maybe Text)
    , _pAppPayload :: !AlertPolicy
    , _pAppName :: !Text
    , _pAppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAlertPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAppXgafv'
--
-- * 'pAppUploadProtocol'
--
-- * 'pAppUpdateMask'
--
-- * 'pAppAccessToken'
--
-- * 'pAppUploadType'
--
-- * 'pAppPayload'
--
-- * 'pAppName'
--
-- * 'pAppCallback'
projectsAlertPoliciesPatch
    :: AlertPolicy -- ^ 'pAppPayload'
    -> Text -- ^ 'pAppName'
    -> ProjectsAlertPoliciesPatch
projectsAlertPoliciesPatch pPAppPayload_ pPAppName_ =
  ProjectsAlertPoliciesPatch'
    { _pAppXgafv = Nothing
    , _pAppUploadProtocol = Nothing
    , _pAppUpdateMask = Nothing
    , _pAppAccessToken = Nothing
    , _pAppUploadType = Nothing
    , _pAppPayload = pPAppPayload_
    , _pAppName = pPAppName_
    , _pAppCallback = Nothing
    }


-- | V1 error format.
pAppXgafv :: Lens' ProjectsAlertPoliciesPatch (Maybe Xgafv)
pAppXgafv
  = lens _pAppXgafv (\ s a -> s{_pAppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pAppUploadProtocol :: Lens' ProjectsAlertPoliciesPatch (Maybe Text)
pAppUploadProtocol
  = lens _pAppUploadProtocol
      (\ s a -> s{_pAppUploadProtocol = a})

-- | Optional. A list of alerting policy field names. If this field is not
-- empty, each listed field in the existing alerting policy is set to the
-- value of the corresponding field in the supplied policy (alert_policy),
-- or to the field\'s default value if the field is not in the supplied
-- alerting policy. Fields not listed retain their previous value.Examples
-- of valid field masks include display_name, documentation,
-- documentation.content, documentation.mime_type, user_labels,
-- user_label.nameofkey, enabled, conditions, combiner, etc.If this field
-- is empty, then the supplied alerting policy replaces the existing
-- policy. It is the same as deleting the existing policy and adding the
-- supplied policy, except for the following: The new policy will have the
-- same [ALERT_POLICY_ID] as the former policy. This gives you continuity
-- with the former policy in your notifications and incidents. Conditions
-- in the new policy will keep their former [CONDITION_ID] if the supplied
-- condition includes the name field with that [CONDITION_ID]. If the
-- supplied condition omits the name field, then a new [CONDITION_ID] is
-- created.
pAppUpdateMask :: Lens' ProjectsAlertPoliciesPatch (Maybe GFieldMask)
pAppUpdateMask
  = lens _pAppUpdateMask
      (\ s a -> s{_pAppUpdateMask = a})

-- | OAuth access token.
pAppAccessToken :: Lens' ProjectsAlertPoliciesPatch (Maybe Text)
pAppAccessToken
  = lens _pAppAccessToken
      (\ s a -> s{_pAppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pAppUploadType :: Lens' ProjectsAlertPoliciesPatch (Maybe Text)
pAppUploadType
  = lens _pAppUploadType
      (\ s a -> s{_pAppUploadType = a})

-- | Multipart request metadata.
pAppPayload :: Lens' ProjectsAlertPoliciesPatch AlertPolicy
pAppPayload
  = lens _pAppPayload (\ s a -> s{_pAppPayload = a})

-- | Required if the policy exists. The resource name for this policy. The
-- format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/alertPolicies\/[ALERT_POLICY_ID]
-- [ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy
-- is created. When calling the alertPolicies.create method, do not include
-- the name field in the alerting policy passed as part of the request.
pAppName :: Lens' ProjectsAlertPoliciesPatch Text
pAppName = lens _pAppName (\ s a -> s{_pAppName = a})

-- | JSONP
pAppCallback :: Lens' ProjectsAlertPoliciesPatch (Maybe Text)
pAppCallback
  = lens _pAppCallback (\ s a -> s{_pAppCallback = a})

instance GoogleRequest ProjectsAlertPoliciesPatch
         where
        type Rs ProjectsAlertPoliciesPatch = AlertPolicy
        type Scopes ProjectsAlertPoliciesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsAlertPoliciesPatch'{..}
          = go _pAppName _pAppXgafv _pAppUploadProtocol
              _pAppUpdateMask
              _pAppAccessToken
              _pAppUploadType
              _pAppCallback
              (Just AltJSON)
              _pAppPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAlertPoliciesPatchResource)
                      mempty
