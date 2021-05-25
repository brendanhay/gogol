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
-- Module      : Network.Google.Resource.DLP.Projects.Content.Deidentify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies potentially sensitive info from a ContentItem. This method
-- has limits on input size and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to
-- learn more. When no InfoTypes or CustomInfoTypes are specified in this
-- request, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.content.deidentify@.
module Network.Google.Resource.DLP.Projects.Content.Deidentify
    (
    -- * REST Resource
      ProjectsContentDeidentifyResource

    -- * Creating a Request
    , projectsContentDeidentify
    , ProjectsContentDeidentify

    -- * Request Lenses
    , pcdParent
    , pcdXgafv
    , pcdUploadProtocol
    , pcdAccessToken
    , pcdUploadType
    , pcdPayload
    , pcdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.content.deidentify@ method which the
-- 'ProjectsContentDeidentify' request conforms to.
type ProjectsContentDeidentifyResource =
     "v2" :>
       Capture "parent" Text :>
         "content:deidentify" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2DeidentifyContentRequest
                         :>
                         Post '[JSON]
                           GooglePrivacyDlpV2DeidentifyContentResponse

-- | De-identifies potentially sensitive info from a ContentItem. This method
-- has limits on input size and output size. See
-- https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to
-- learn more. When no InfoTypes or CustomInfoTypes are specified in this
-- request, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ 'projectsContentDeidentify' smart constructor.
data ProjectsContentDeidentify =
  ProjectsContentDeidentify'
    { _pcdParent :: !Text
    , _pcdXgafv :: !(Maybe Xgafv)
    , _pcdUploadProtocol :: !(Maybe Text)
    , _pcdAccessToken :: !(Maybe Text)
    , _pcdUploadType :: !(Maybe Text)
    , _pcdPayload :: !GooglePrivacyDlpV2DeidentifyContentRequest
    , _pcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsContentDeidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdParent'
--
-- * 'pcdXgafv'
--
-- * 'pcdUploadProtocol'
--
-- * 'pcdAccessToken'
--
-- * 'pcdUploadType'
--
-- * 'pcdPayload'
--
-- * 'pcdCallback'
projectsContentDeidentify
    :: Text -- ^ 'pcdParent'
    -> GooglePrivacyDlpV2DeidentifyContentRequest -- ^ 'pcdPayload'
    -> ProjectsContentDeidentify
projectsContentDeidentify pPcdParent_ pPcdPayload_ =
  ProjectsContentDeidentify'
    { _pcdParent = pPcdParent_
    , _pcdXgafv = Nothing
    , _pcdUploadProtocol = Nothing
    , _pcdAccessToken = Nothing
    , _pcdUploadType = Nothing
    , _pcdPayload = pPcdPayload_
    , _pcdCallback = Nothing
    }


-- | Parent resource name. The format of this value varies depending on
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
pcdParent :: Lens' ProjectsContentDeidentify Text
pcdParent
  = lens _pcdParent (\ s a -> s{_pcdParent = a})

-- | V1 error format.
pcdXgafv :: Lens' ProjectsContentDeidentify (Maybe Xgafv)
pcdXgafv = lens _pcdXgafv (\ s a -> s{_pcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcdUploadProtocol :: Lens' ProjectsContentDeidentify (Maybe Text)
pcdUploadProtocol
  = lens _pcdUploadProtocol
      (\ s a -> s{_pcdUploadProtocol = a})

-- | OAuth access token.
pcdAccessToken :: Lens' ProjectsContentDeidentify (Maybe Text)
pcdAccessToken
  = lens _pcdAccessToken
      (\ s a -> s{_pcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcdUploadType :: Lens' ProjectsContentDeidentify (Maybe Text)
pcdUploadType
  = lens _pcdUploadType
      (\ s a -> s{_pcdUploadType = a})

-- | Multipart request metadata.
pcdPayload :: Lens' ProjectsContentDeidentify GooglePrivacyDlpV2DeidentifyContentRequest
pcdPayload
  = lens _pcdPayload (\ s a -> s{_pcdPayload = a})

-- | JSONP
pcdCallback :: Lens' ProjectsContentDeidentify (Maybe Text)
pcdCallback
  = lens _pcdCallback (\ s a -> s{_pcdCallback = a})

instance GoogleRequest ProjectsContentDeidentify
         where
        type Rs ProjectsContentDeidentify =
             GooglePrivacyDlpV2DeidentifyContentResponse
        type Scopes ProjectsContentDeidentify =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsContentDeidentify'{..}
          = go _pcdParent _pcdXgafv _pcdUploadProtocol
              _pcdAccessToken
              _pcdUploadType
              _pcdCallback
              (Just AltJSON)
              _pcdPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsContentDeidentifyResource)
                      mempty
