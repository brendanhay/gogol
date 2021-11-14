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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.Content.Reidentify
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-identifies content that has been de-identified. See
-- https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization#re-identification_in_free_text_code_example
-- to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.content.reidentify@.
module Network.Google.Resource.DLP.Projects.Locations.Content.Reidentify
    (
    -- * REST Resource
      ProjectsLocationsContentReidentifyResource

    -- * Creating a Request
    , projectsLocationsContentReidentify
    , ProjectsLocationsContentReidentify

    -- * Request Lenses
    , plcrParent
    , plcrXgafv
    , plcrUploadProtocol
    , plcrAccessToken
    , plcrUploadType
    , plcrPayload
    , plcrCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.content.reidentify@ method which the
-- 'ProjectsLocationsContentReidentify' request conforms to.
type ProjectsLocationsContentReidentifyResource =
     "v2" :>
       Capture "parent" Text :>
         "content:reidentify" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2ReidentifyContentRequest
                         :>
                         Post '[JSON]
                           GooglePrivacyDlpV2ReidentifyContentResponse

-- | Re-identifies content that has been de-identified. See
-- https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization#re-identification_in_free_text_code_example
-- to learn more.
--
-- /See:/ 'projectsLocationsContentReidentify' smart constructor.
data ProjectsLocationsContentReidentify =
  ProjectsLocationsContentReidentify'
    { _plcrParent :: !Text
    , _plcrXgafv :: !(Maybe Xgafv)
    , _plcrUploadProtocol :: !(Maybe Text)
    , _plcrAccessToken :: !(Maybe Text)
    , _plcrUploadType :: !(Maybe Text)
    , _plcrPayload :: !GooglePrivacyDlpV2ReidentifyContentRequest
    , _plcrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsContentReidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcrParent'
--
-- * 'plcrXgafv'
--
-- * 'plcrUploadProtocol'
--
-- * 'plcrAccessToken'
--
-- * 'plcrUploadType'
--
-- * 'plcrPayload'
--
-- * 'plcrCallback'
projectsLocationsContentReidentify
    :: Text -- ^ 'plcrParent'
    -> GooglePrivacyDlpV2ReidentifyContentRequest -- ^ 'plcrPayload'
    -> ProjectsLocationsContentReidentify
projectsLocationsContentReidentify pPlcrParent_ pPlcrPayload_ =
  ProjectsLocationsContentReidentify'
    { _plcrParent = pPlcrParent_
    , _plcrXgafv = Nothing
    , _plcrUploadProtocol = Nothing
    , _plcrAccessToken = Nothing
    , _plcrUploadType = Nothing
    , _plcrPayload = pPlcrPayload_
    , _plcrCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
plcrParent :: Lens' ProjectsLocationsContentReidentify Text
plcrParent
  = lens _plcrParent (\ s a -> s{_plcrParent = a})

-- | V1 error format.
plcrXgafv :: Lens' ProjectsLocationsContentReidentify (Maybe Xgafv)
plcrXgafv
  = lens _plcrXgafv (\ s a -> s{_plcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcrUploadProtocol :: Lens' ProjectsLocationsContentReidentify (Maybe Text)
plcrUploadProtocol
  = lens _plcrUploadProtocol
      (\ s a -> s{_plcrUploadProtocol = a})

-- | OAuth access token.
plcrAccessToken :: Lens' ProjectsLocationsContentReidentify (Maybe Text)
plcrAccessToken
  = lens _plcrAccessToken
      (\ s a -> s{_plcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcrUploadType :: Lens' ProjectsLocationsContentReidentify (Maybe Text)
plcrUploadType
  = lens _plcrUploadType
      (\ s a -> s{_plcrUploadType = a})

-- | Multipart request metadata.
plcrPayload :: Lens' ProjectsLocationsContentReidentify GooglePrivacyDlpV2ReidentifyContentRequest
plcrPayload
  = lens _plcrPayload (\ s a -> s{_plcrPayload = a})

-- | JSONP
plcrCallback :: Lens' ProjectsLocationsContentReidentify (Maybe Text)
plcrCallback
  = lens _plcrCallback (\ s a -> s{_plcrCallback = a})

instance GoogleRequest
           ProjectsLocationsContentReidentify
         where
        type Rs ProjectsLocationsContentReidentify =
             GooglePrivacyDlpV2ReidentifyContentResponse
        type Scopes ProjectsLocationsContentReidentify =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsContentReidentify'{..}
          = go _plcrParent _plcrXgafv _plcrUploadProtocol
              _plcrAccessToken
              _plcrUploadType
              _plcrCallback
              (Just AltJSON)
              _plcrPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsContentReidentifyResource)
                      mempty
