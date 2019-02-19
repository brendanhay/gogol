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
-- Module      : Network.Google.Resource.DLP.Projects.Content.Inspect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds potentially sensitive info in content. This method has limits on
-- input size, processing time, and output size. When no InfoTypes or
-- CustomInfoTypes are specified in this request, the system will
-- automatically choose what detectors to run. By default this may be all
-- types, but may change over time as detectors are updated. For how to
-- guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.content.inspect@.
module Network.Google.Resource.DLP.Projects.Content.Inspect
    (
    -- * REST Resource
      ProjectsContentInspectResource

    -- * Creating a Request
    , projectsContentInspect
    , ProjectsContentInspect

    -- * Request Lenses
    , pciParent
    , pciXgafv
    , pciUploadProtocol
    , pciAccessToken
    , pciUploadType
    , pciPayload
    , pciCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.content.inspect@ method which the
-- 'ProjectsContentInspect' request conforms to.
type ProjectsContentInspectResource =
     "v2" :>
       Capture "parent" Text :>
         "content:inspect" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2InspectContentRequest
                         :>
                         Post '[JSON] GooglePrivacyDlpV2InspectContentResponse

-- | Finds potentially sensitive info in content. This method has limits on
-- input size, processing time, and output size. When no InfoTypes or
-- CustomInfoTypes are specified in this request, the system will
-- automatically choose what detectors to run. By default this may be all
-- types, but may change over time as detectors are updated. For how to
-- guides, see https:\/\/cloud.google.com\/dlp\/docs\/inspecting-images and
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text,
--
-- /See:/ 'projectsContentInspect' smart constructor.
data ProjectsContentInspect =
  ProjectsContentInspect'
    { _pciParent         :: !Text
    , _pciXgafv          :: !(Maybe Xgafv)
    , _pciUploadProtocol :: !(Maybe Text)
    , _pciAccessToken    :: !(Maybe Text)
    , _pciUploadType     :: !(Maybe Text)
    , _pciPayload        :: !GooglePrivacyDlpV2InspectContentRequest
    , _pciCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsContentInspect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciParent'
--
-- * 'pciXgafv'
--
-- * 'pciUploadProtocol'
--
-- * 'pciAccessToken'
--
-- * 'pciUploadType'
--
-- * 'pciPayload'
--
-- * 'pciCallback'
projectsContentInspect
    :: Text -- ^ 'pciParent'
    -> GooglePrivacyDlpV2InspectContentRequest -- ^ 'pciPayload'
    -> ProjectsContentInspect
projectsContentInspect pPciParent_ pPciPayload_ =
  ProjectsContentInspect'
    { _pciParent = pPciParent_
    , _pciXgafv = Nothing
    , _pciUploadProtocol = Nothing
    , _pciAccessToken = Nothing
    , _pciUploadType = Nothing
    , _pciPayload = pPciPayload_
    , _pciCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id.
pciParent :: Lens' ProjectsContentInspect Text
pciParent
  = lens _pciParent (\ s a -> s{_pciParent = a})

-- | V1 error format.
pciXgafv :: Lens' ProjectsContentInspect (Maybe Xgafv)
pciXgafv = lens _pciXgafv (\ s a -> s{_pciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pciUploadProtocol :: Lens' ProjectsContentInspect (Maybe Text)
pciUploadProtocol
  = lens _pciUploadProtocol
      (\ s a -> s{_pciUploadProtocol = a})

-- | OAuth access token.
pciAccessToken :: Lens' ProjectsContentInspect (Maybe Text)
pciAccessToken
  = lens _pciAccessToken
      (\ s a -> s{_pciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pciUploadType :: Lens' ProjectsContentInspect (Maybe Text)
pciUploadType
  = lens _pciUploadType
      (\ s a -> s{_pciUploadType = a})

-- | Multipart request metadata.
pciPayload :: Lens' ProjectsContentInspect GooglePrivacyDlpV2InspectContentRequest
pciPayload
  = lens _pciPayload (\ s a -> s{_pciPayload = a})

-- | JSONP
pciCallback :: Lens' ProjectsContentInspect (Maybe Text)
pciCallback
  = lens _pciCallback (\ s a -> s{_pciCallback = a})

instance GoogleRequest ProjectsContentInspect where
        type Rs ProjectsContentInspect =
             GooglePrivacyDlpV2InspectContentResponse
        type Scopes ProjectsContentInspect =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsContentInspect'{..}
          = go _pciParent _pciXgafv _pciUploadProtocol
              _pciAccessToken
              _pciUploadType
              _pciCallback
              (Just AltJSON)
              _pciPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsContentInspectResource)
                      mempty
