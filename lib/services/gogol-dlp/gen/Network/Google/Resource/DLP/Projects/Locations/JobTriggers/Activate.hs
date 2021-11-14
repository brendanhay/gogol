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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Activate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activate a job trigger. Causes the immediate execute of a trigger
-- instead of waiting on the trigger event to occur.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.activate@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Activate
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersActivateResource

    -- * Creating a Request
    , projectsLocationsJobTriggersActivate
    , ProjectsLocationsJobTriggersActivate

    -- * Request Lenses
    , pljtaXgafv
    , pljtaUploadProtocol
    , pljtaAccessToken
    , pljtaUploadType
    , pljtaPayload
    , pljtaName
    , pljtaCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.activate@ method which the
-- 'ProjectsLocationsJobTriggersActivate' request conforms to.
type ProjectsLocationsJobTriggersActivateResource =
     "v2" :>
       CaptureMode "name" "activate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2ActivateJobTriggerRequest
                       :> Post '[JSON] GooglePrivacyDlpV2DlpJob

-- | Activate a job trigger. Causes the immediate execute of a trigger
-- instead of waiting on the trigger event to occur.
--
-- /See:/ 'projectsLocationsJobTriggersActivate' smart constructor.
data ProjectsLocationsJobTriggersActivate =
  ProjectsLocationsJobTriggersActivate'
    { _pljtaXgafv :: !(Maybe Xgafv)
    , _pljtaUploadProtocol :: !(Maybe Text)
    , _pljtaAccessToken :: !(Maybe Text)
    , _pljtaUploadType :: !(Maybe Text)
    , _pljtaPayload :: !GooglePrivacyDlpV2ActivateJobTriggerRequest
    , _pljtaName :: !Text
    , _pljtaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtaXgafv'
--
-- * 'pljtaUploadProtocol'
--
-- * 'pljtaAccessToken'
--
-- * 'pljtaUploadType'
--
-- * 'pljtaPayload'
--
-- * 'pljtaName'
--
-- * 'pljtaCallback'
projectsLocationsJobTriggersActivate
    :: GooglePrivacyDlpV2ActivateJobTriggerRequest -- ^ 'pljtaPayload'
    -> Text -- ^ 'pljtaName'
    -> ProjectsLocationsJobTriggersActivate
projectsLocationsJobTriggersActivate pPljtaPayload_ pPljtaName_ =
  ProjectsLocationsJobTriggersActivate'
    { _pljtaXgafv = Nothing
    , _pljtaUploadProtocol = Nothing
    , _pljtaAccessToken = Nothing
    , _pljtaUploadType = Nothing
    , _pljtaPayload = pPljtaPayload_
    , _pljtaName = pPljtaName_
    , _pljtaCallback = Nothing
    }


-- | V1 error format.
pljtaXgafv :: Lens' ProjectsLocationsJobTriggersActivate (Maybe Xgafv)
pljtaXgafv
  = lens _pljtaXgafv (\ s a -> s{_pljtaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtaUploadProtocol :: Lens' ProjectsLocationsJobTriggersActivate (Maybe Text)
pljtaUploadProtocol
  = lens _pljtaUploadProtocol
      (\ s a -> s{_pljtaUploadProtocol = a})

-- | OAuth access token.
pljtaAccessToken :: Lens' ProjectsLocationsJobTriggersActivate (Maybe Text)
pljtaAccessToken
  = lens _pljtaAccessToken
      (\ s a -> s{_pljtaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtaUploadType :: Lens' ProjectsLocationsJobTriggersActivate (Maybe Text)
pljtaUploadType
  = lens _pljtaUploadType
      (\ s a -> s{_pljtaUploadType = a})

-- | Multipart request metadata.
pljtaPayload :: Lens' ProjectsLocationsJobTriggersActivate GooglePrivacyDlpV2ActivateJobTriggerRequest
pljtaPayload
  = lens _pljtaPayload (\ s a -> s{_pljtaPayload = a})

-- | Required. Resource name of the trigger to activate, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pljtaName :: Lens' ProjectsLocationsJobTriggersActivate Text
pljtaName
  = lens _pljtaName (\ s a -> s{_pljtaName = a})

-- | JSONP
pljtaCallback :: Lens' ProjectsLocationsJobTriggersActivate (Maybe Text)
pljtaCallback
  = lens _pljtaCallback
      (\ s a -> s{_pljtaCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersActivate
         where
        type Rs ProjectsLocationsJobTriggersActivate =
             GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsLocationsJobTriggersActivate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsJobTriggersActivate'{..}
          = go _pljtaName _pljtaXgafv _pljtaUploadProtocol
              _pljtaAccessToken
              _pljtaUploadType
              _pljtaCallback
              (Just AltJSON)
              _pljtaPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersActivateResource)
                      mempty
