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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.Activate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activate a job trigger. Causes the immediate execute of a trigger
-- instead of waiting on the trigger event to occur.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.activate@.
module Network.Google.Resource.DLP.Projects.JobTriggers.Activate
    (
    -- * REST Resource
      ProjectsJobTriggersActivateResource

    -- * Creating a Request
    , projectsJobTriggersActivate
    , ProjectsJobTriggersActivate

    -- * Request Lenses
    , pjtaXgafv
    , pjtaUploadProtocol
    , pjtaAccessToken
    , pjtaUploadType
    , pjtaPayload
    , pjtaName
    , pjtaCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.activate@ method which the
-- 'ProjectsJobTriggersActivate' request conforms to.
type ProjectsJobTriggersActivateResource =
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
-- /See:/ 'projectsJobTriggersActivate' smart constructor.
data ProjectsJobTriggersActivate =
  ProjectsJobTriggersActivate'
    { _pjtaXgafv          :: !(Maybe Xgafv)
    , _pjtaUploadProtocol :: !(Maybe Text)
    , _pjtaAccessToken    :: !(Maybe Text)
    , _pjtaUploadType     :: !(Maybe Text)
    , _pjtaPayload        :: !GooglePrivacyDlpV2ActivateJobTriggerRequest
    , _pjtaName           :: !Text
    , _pjtaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobTriggersActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtaXgafv'
--
-- * 'pjtaUploadProtocol'
--
-- * 'pjtaAccessToken'
--
-- * 'pjtaUploadType'
--
-- * 'pjtaPayload'
--
-- * 'pjtaName'
--
-- * 'pjtaCallback'
projectsJobTriggersActivate
    :: GooglePrivacyDlpV2ActivateJobTriggerRequest -- ^ 'pjtaPayload'
    -> Text -- ^ 'pjtaName'
    -> ProjectsJobTriggersActivate
projectsJobTriggersActivate pPjtaPayload_ pPjtaName_ =
  ProjectsJobTriggersActivate'
    { _pjtaXgafv = Nothing
    , _pjtaUploadProtocol = Nothing
    , _pjtaAccessToken = Nothing
    , _pjtaUploadType = Nothing
    , _pjtaPayload = pPjtaPayload_
    , _pjtaName = pPjtaName_
    , _pjtaCallback = Nothing
    }


-- | V1 error format.
pjtaXgafv :: Lens' ProjectsJobTriggersActivate (Maybe Xgafv)
pjtaXgafv
  = lens _pjtaXgafv (\ s a -> s{_pjtaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtaUploadProtocol :: Lens' ProjectsJobTriggersActivate (Maybe Text)
pjtaUploadProtocol
  = lens _pjtaUploadProtocol
      (\ s a -> s{_pjtaUploadProtocol = a})

-- | OAuth access token.
pjtaAccessToken :: Lens' ProjectsJobTriggersActivate (Maybe Text)
pjtaAccessToken
  = lens _pjtaAccessToken
      (\ s a -> s{_pjtaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtaUploadType :: Lens' ProjectsJobTriggersActivate (Maybe Text)
pjtaUploadType
  = lens _pjtaUploadType
      (\ s a -> s{_pjtaUploadType = a})

-- | Multipart request metadata.
pjtaPayload :: Lens' ProjectsJobTriggersActivate GooglePrivacyDlpV2ActivateJobTriggerRequest
pjtaPayload
  = lens _pjtaPayload (\ s a -> s{_pjtaPayload = a})

-- | Resource name of the trigger to activate, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pjtaName :: Lens' ProjectsJobTriggersActivate Text
pjtaName = lens _pjtaName (\ s a -> s{_pjtaName = a})

-- | JSONP
pjtaCallback :: Lens' ProjectsJobTriggersActivate (Maybe Text)
pjtaCallback
  = lens _pjtaCallback (\ s a -> s{_pjtaCallback = a})

instance GoogleRequest ProjectsJobTriggersActivate
         where
        type Rs ProjectsJobTriggersActivate =
             GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsJobTriggersActivate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersActivate'{..}
          = go _pjtaName _pjtaXgafv _pjtaUploadProtocol
              _pjtaAccessToken
              _pjtaUploadType
              _pjtaCallback
              (Just AltJSON)
              _pjtaPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersActivateResource)
                      mempty
