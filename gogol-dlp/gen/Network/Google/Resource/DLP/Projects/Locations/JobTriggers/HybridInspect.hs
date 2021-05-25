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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.HybridInspect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspect hybrid content and store findings to a trigger. The inspection
-- will be processed asynchronously. To review the findings monitor the
-- jobs within the trigger.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.hybridInspect@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.HybridInspect
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersHybridInspectResource

    -- * Creating a Request
    , projectsLocationsJobTriggersHybridInspect
    , ProjectsLocationsJobTriggersHybridInspect

    -- * Request Lenses
    , pljthiXgafv
    , pljthiUploadProtocol
    , pljthiAccessToken
    , pljthiUploadType
    , pljthiPayload
    , pljthiName
    , pljthiCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.hybridInspect@ method which the
-- 'ProjectsLocationsJobTriggersHybridInspect' request conforms to.
type ProjectsLocationsJobTriggersHybridInspectResource
     =
     "v2" :>
       CaptureMode "name" "hybridInspect" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2HybridInspectJobTriggerRequest
                       :>
                       Post '[JSON] GooglePrivacyDlpV2HybridInspectResponse

-- | Inspect hybrid content and store findings to a trigger. The inspection
-- will be processed asynchronously. To review the findings monitor the
-- jobs within the trigger.
--
-- /See:/ 'projectsLocationsJobTriggersHybridInspect' smart constructor.
data ProjectsLocationsJobTriggersHybridInspect =
  ProjectsLocationsJobTriggersHybridInspect'
    { _pljthiXgafv :: !(Maybe Xgafv)
    , _pljthiUploadProtocol :: !(Maybe Text)
    , _pljthiAccessToken :: !(Maybe Text)
    , _pljthiUploadType :: !(Maybe Text)
    , _pljthiPayload :: !GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    , _pljthiName :: !Text
    , _pljthiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersHybridInspect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljthiXgafv'
--
-- * 'pljthiUploadProtocol'
--
-- * 'pljthiAccessToken'
--
-- * 'pljthiUploadType'
--
-- * 'pljthiPayload'
--
-- * 'pljthiName'
--
-- * 'pljthiCallback'
projectsLocationsJobTriggersHybridInspect
    :: GooglePrivacyDlpV2HybridInspectJobTriggerRequest -- ^ 'pljthiPayload'
    -> Text -- ^ 'pljthiName'
    -> ProjectsLocationsJobTriggersHybridInspect
projectsLocationsJobTriggersHybridInspect pPljthiPayload_ pPljthiName_ =
  ProjectsLocationsJobTriggersHybridInspect'
    { _pljthiXgafv = Nothing
    , _pljthiUploadProtocol = Nothing
    , _pljthiAccessToken = Nothing
    , _pljthiUploadType = Nothing
    , _pljthiPayload = pPljthiPayload_
    , _pljthiName = pPljthiName_
    , _pljthiCallback = Nothing
    }


-- | V1 error format.
pljthiXgafv :: Lens' ProjectsLocationsJobTriggersHybridInspect (Maybe Xgafv)
pljthiXgafv
  = lens _pljthiXgafv (\ s a -> s{_pljthiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljthiUploadProtocol :: Lens' ProjectsLocationsJobTriggersHybridInspect (Maybe Text)
pljthiUploadProtocol
  = lens _pljthiUploadProtocol
      (\ s a -> s{_pljthiUploadProtocol = a})

-- | OAuth access token.
pljthiAccessToken :: Lens' ProjectsLocationsJobTriggersHybridInspect (Maybe Text)
pljthiAccessToken
  = lens _pljthiAccessToken
      (\ s a -> s{_pljthiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljthiUploadType :: Lens' ProjectsLocationsJobTriggersHybridInspect (Maybe Text)
pljthiUploadType
  = lens _pljthiUploadType
      (\ s a -> s{_pljthiUploadType = a})

-- | Multipart request metadata.
pljthiPayload :: Lens' ProjectsLocationsJobTriggersHybridInspect GooglePrivacyDlpV2HybridInspectJobTriggerRequest
pljthiPayload
  = lens _pljthiPayload
      (\ s a -> s{_pljthiPayload = a})

-- | Required. Resource name of the trigger to execute a hybrid inspect on,
-- for example \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pljthiName :: Lens' ProjectsLocationsJobTriggersHybridInspect Text
pljthiName
  = lens _pljthiName (\ s a -> s{_pljthiName = a})

-- | JSONP
pljthiCallback :: Lens' ProjectsLocationsJobTriggersHybridInspect (Maybe Text)
pljthiCallback
  = lens _pljthiCallback
      (\ s a -> s{_pljthiCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersHybridInspect
         where
        type Rs ProjectsLocationsJobTriggersHybridInspect =
             GooglePrivacyDlpV2HybridInspectResponse
        type Scopes ProjectsLocationsJobTriggersHybridInspect
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsJobTriggersHybridInspect'{..}
          = go _pljthiName _pljthiXgafv _pljthiUploadProtocol
              _pljthiAccessToken
              _pljthiUploadType
              _pljthiCallback
              (Just AltJSON)
              _pljthiPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsJobTriggersHybridInspectResource)
                      mempty
