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
-- Module      : Network.Google.Resource.Monitoring.Projects.AlertPolicies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single alerting policy.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.alertPolicies.get@.
module Network.Google.Resource.Monitoring.Projects.AlertPolicies.Get
    (
    -- * REST Resource
      ProjectsAlertPoliciesGetResource

    -- * Creating a Request
    , projectsAlertPoliciesGet
    , ProjectsAlertPoliciesGet

    -- * Request Lenses
    , papgXgafv
    , papgUploadProtocol
    , papgAccessToken
    , papgUploadType
    , papgName
    , papgCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.alertPolicies.get@ method which the
-- 'ProjectsAlertPoliciesGet' request conforms to.
type ProjectsAlertPoliciesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AlertPolicy

-- | Gets a single alerting policy.
--
-- /See:/ 'projectsAlertPoliciesGet' smart constructor.
data ProjectsAlertPoliciesGet =
  ProjectsAlertPoliciesGet'
    { _papgXgafv          :: !(Maybe Xgafv)
    , _papgUploadProtocol :: !(Maybe Text)
    , _papgAccessToken    :: !(Maybe Text)
    , _papgUploadType     :: !(Maybe Text)
    , _papgName           :: !Text
    , _papgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAlertPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papgXgafv'
--
-- * 'papgUploadProtocol'
--
-- * 'papgAccessToken'
--
-- * 'papgUploadType'
--
-- * 'papgName'
--
-- * 'papgCallback'
projectsAlertPoliciesGet
    :: Text -- ^ 'papgName'
    -> ProjectsAlertPoliciesGet
projectsAlertPoliciesGet pPapgName_ =
  ProjectsAlertPoliciesGet'
    { _papgXgafv = Nothing
    , _papgUploadProtocol = Nothing
    , _papgAccessToken = Nothing
    , _papgUploadType = Nothing
    , _papgName = pPapgName_
    , _papgCallback = Nothing
    }

-- | V1 error format.
papgXgafv :: Lens' ProjectsAlertPoliciesGet (Maybe Xgafv)
papgXgafv
  = lens _papgXgafv (\ s a -> s{_papgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
papgUploadProtocol :: Lens' ProjectsAlertPoliciesGet (Maybe Text)
papgUploadProtocol
  = lens _papgUploadProtocol
      (\ s a -> s{_papgUploadProtocol = a})

-- | OAuth access token.
papgAccessToken :: Lens' ProjectsAlertPoliciesGet (Maybe Text)
papgAccessToken
  = lens _papgAccessToken
      (\ s a -> s{_papgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
papgUploadType :: Lens' ProjectsAlertPoliciesGet (Maybe Text)
papgUploadType
  = lens _papgUploadType
      (\ s a -> s{_papgUploadType = a})

-- | The alerting policy to retrieve. The format is
-- projects\/[PROJECT_ID]\/alertPolicies\/[ALERT_POLICY_ID]
papgName :: Lens' ProjectsAlertPoliciesGet Text
papgName = lens _papgName (\ s a -> s{_papgName = a})

-- | JSONP
papgCallback :: Lens' ProjectsAlertPoliciesGet (Maybe Text)
papgCallback
  = lens _papgCallback (\ s a -> s{_papgCallback = a})

instance GoogleRequest ProjectsAlertPoliciesGet where
        type Rs ProjectsAlertPoliciesGet = AlertPolicy
        type Scopes ProjectsAlertPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsAlertPoliciesGet'{..}
          = go _papgName _papgXgafv _papgUploadProtocol
              _papgAccessToken
              _papgUploadType
              _papgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAlertPoliciesGetResource)
                      mempty
