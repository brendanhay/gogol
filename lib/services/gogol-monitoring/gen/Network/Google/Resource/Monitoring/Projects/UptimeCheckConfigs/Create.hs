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
-- Module      : Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Uptime check configuration.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.create@.
module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Create
    (
    -- * REST Resource
      ProjectsUptimeCheckConfigsCreateResource

    -- * Creating a Request
    , projectsUptimeCheckConfigsCreate
    , ProjectsUptimeCheckConfigsCreate

    -- * Request Lenses
    , pucccParent
    , pucccXgafv
    , pucccUploadProtocol
    , pucccAccessToken
    , pucccUploadType
    , pucccPayload
    , pucccCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.create@ method which the
-- 'ProjectsUptimeCheckConfigsCreate' request conforms to.
type ProjectsUptimeCheckConfigsCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "uptimeCheckConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UptimeCheckConfig :>
                         Post '[JSON] UptimeCheckConfig

-- | Creates a new Uptime check configuration.
--
-- /See:/ 'projectsUptimeCheckConfigsCreate' smart constructor.
data ProjectsUptimeCheckConfigsCreate =
  ProjectsUptimeCheckConfigsCreate'
    { _pucccParent :: !Text
    , _pucccXgafv :: !(Maybe Xgafv)
    , _pucccUploadProtocol :: !(Maybe Text)
    , _pucccAccessToken :: !(Maybe Text)
    , _pucccUploadType :: !(Maybe Text)
    , _pucccPayload :: !UptimeCheckConfig
    , _pucccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUptimeCheckConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucccParent'
--
-- * 'pucccXgafv'
--
-- * 'pucccUploadProtocol'
--
-- * 'pucccAccessToken'
--
-- * 'pucccUploadType'
--
-- * 'pucccPayload'
--
-- * 'pucccCallback'
projectsUptimeCheckConfigsCreate
    :: Text -- ^ 'pucccParent'
    -> UptimeCheckConfig -- ^ 'pucccPayload'
    -> ProjectsUptimeCheckConfigsCreate
projectsUptimeCheckConfigsCreate pPucccParent_ pPucccPayload_ =
  ProjectsUptimeCheckConfigsCreate'
    { _pucccParent = pPucccParent_
    , _pucccXgafv = Nothing
    , _pucccUploadProtocol = Nothing
    , _pucccAccessToken = Nothing
    , _pucccUploadType = Nothing
    , _pucccPayload = pPucccPayload_
    , _pucccCallback = Nothing
    }


-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) in which
-- to create the Uptime check. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]
pucccParent :: Lens' ProjectsUptimeCheckConfigsCreate Text
pucccParent
  = lens _pucccParent (\ s a -> s{_pucccParent = a})

-- | V1 error format.
pucccXgafv :: Lens' ProjectsUptimeCheckConfigsCreate (Maybe Xgafv)
pucccXgafv
  = lens _pucccXgafv (\ s a -> s{_pucccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucccUploadProtocol :: Lens' ProjectsUptimeCheckConfigsCreate (Maybe Text)
pucccUploadProtocol
  = lens _pucccUploadProtocol
      (\ s a -> s{_pucccUploadProtocol = a})

-- | OAuth access token.
pucccAccessToken :: Lens' ProjectsUptimeCheckConfigsCreate (Maybe Text)
pucccAccessToken
  = lens _pucccAccessToken
      (\ s a -> s{_pucccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucccUploadType :: Lens' ProjectsUptimeCheckConfigsCreate (Maybe Text)
pucccUploadType
  = lens _pucccUploadType
      (\ s a -> s{_pucccUploadType = a})

-- | Multipart request metadata.
pucccPayload :: Lens' ProjectsUptimeCheckConfigsCreate UptimeCheckConfig
pucccPayload
  = lens _pucccPayload (\ s a -> s{_pucccPayload = a})

-- | JSONP
pucccCallback :: Lens' ProjectsUptimeCheckConfigsCreate (Maybe Text)
pucccCallback
  = lens _pucccCallback
      (\ s a -> s{_pucccCallback = a})

instance GoogleRequest
           ProjectsUptimeCheckConfigsCreate
         where
        type Rs ProjectsUptimeCheckConfigsCreate =
             UptimeCheckConfig
        type Scopes ProjectsUptimeCheckConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsUptimeCheckConfigsCreate'{..}
          = go _pucccParent _pucccXgafv _pucccUploadProtocol
              _pucccAccessToken
              _pucccUploadType
              _pucccCallback
              (Just AltJSON)
              _pucccPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsUptimeCheckConfigsCreateResource)
                      mempty
