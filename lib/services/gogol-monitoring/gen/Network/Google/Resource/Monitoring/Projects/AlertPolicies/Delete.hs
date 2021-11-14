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
-- Module      : Network.Google.Resource.Monitoring.Projects.AlertPolicies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alerting policy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.delete@.
module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Delete
    (
    -- * REST Resource
      ProjectsAlertPoliciesDeleteResource

    -- * Creating a Request
    , projectsAlertPoliciesDelete
    , ProjectsAlertPoliciesDelete

    -- * Request Lenses
    , papdXgafv
    , papdUploadProtocol
    , papdAccessToken
    , papdUploadType
    , papdName
    , papdCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.alertPolicies.delete@ method which the
-- 'ProjectsAlertPoliciesDelete' request conforms to.
type ProjectsAlertPoliciesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an alerting policy.
--
-- /See:/ 'projectsAlertPoliciesDelete' smart constructor.
data ProjectsAlertPoliciesDelete =
  ProjectsAlertPoliciesDelete'
    { _papdXgafv :: !(Maybe Xgafv)
    , _papdUploadProtocol :: !(Maybe Text)
    , _papdAccessToken :: !(Maybe Text)
    , _papdUploadType :: !(Maybe Text)
    , _papdName :: !Text
    , _papdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAlertPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papdXgafv'
--
-- * 'papdUploadProtocol'
--
-- * 'papdAccessToken'
--
-- * 'papdUploadType'
--
-- * 'papdName'
--
-- * 'papdCallback'
projectsAlertPoliciesDelete
    :: Text -- ^ 'papdName'
    -> ProjectsAlertPoliciesDelete
projectsAlertPoliciesDelete pPapdName_ =
  ProjectsAlertPoliciesDelete'
    { _papdXgafv = Nothing
    , _papdUploadProtocol = Nothing
    , _papdAccessToken = Nothing
    , _papdUploadType = Nothing
    , _papdName = pPapdName_
    , _papdCallback = Nothing
    }


-- | V1 error format.
papdXgafv :: Lens' ProjectsAlertPoliciesDelete (Maybe Xgafv)
papdXgafv
  = lens _papdXgafv (\ s a -> s{_papdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
papdUploadProtocol :: Lens' ProjectsAlertPoliciesDelete (Maybe Text)
papdUploadProtocol
  = lens _papdUploadProtocol
      (\ s a -> s{_papdUploadProtocol = a})

-- | OAuth access token.
papdAccessToken :: Lens' ProjectsAlertPoliciesDelete (Maybe Text)
papdAccessToken
  = lens _papdAccessToken
      (\ s a -> s{_papdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
papdUploadType :: Lens' ProjectsAlertPoliciesDelete (Maybe Text)
papdUploadType
  = lens _papdUploadType
      (\ s a -> s{_papdUploadType = a})

-- | Required. The alerting policy to delete. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/alertPolicies\/[ALERT_POLICY_ID] For
-- more information, see AlertPolicy.
papdName :: Lens' ProjectsAlertPoliciesDelete Text
papdName = lens _papdName (\ s a -> s{_papdName = a})

-- | JSONP
papdCallback :: Lens' ProjectsAlertPoliciesDelete (Maybe Text)
papdCallback
  = lens _papdCallback (\ s a -> s{_papdCallback = a})

instance GoogleRequest ProjectsAlertPoliciesDelete
         where
        type Rs ProjectsAlertPoliciesDelete = Empty
        type Scopes ProjectsAlertPoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsAlertPoliciesDelete'{..}
          = go _papdName _papdXgafv _papdUploadProtocol
              _papdAccessToken
              _papdUploadType
              _papdCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAlertPoliciesDeleteResource)
                      mempty
