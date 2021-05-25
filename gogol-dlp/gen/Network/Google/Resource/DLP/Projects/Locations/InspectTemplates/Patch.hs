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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.inspectTemplates.patch@.
module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.Patch
    (
    -- * REST Resource
      ProjectsLocationsInspectTemplatesPatchResource

    -- * Creating a Request
    , projectsLocationsInspectTemplatesPatch
    , ProjectsLocationsInspectTemplatesPatch

    -- * Request Lenses
    , plitpXgafv
    , plitpUploadProtocol
    , plitpAccessToken
    , plitpUploadType
    , plitpPayload
    , plitpName
    , plitpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.inspectTemplates.patch@ method which the
-- 'ProjectsLocationsInspectTemplatesPatch' request conforms to.
type ProjectsLocationsInspectTemplatesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateInspectTemplateRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsLocationsInspectTemplatesPatch' smart constructor.
data ProjectsLocationsInspectTemplatesPatch =
  ProjectsLocationsInspectTemplatesPatch'
    { _plitpXgafv :: !(Maybe Xgafv)
    , _plitpUploadProtocol :: !(Maybe Text)
    , _plitpAccessToken :: !(Maybe Text)
    , _plitpUploadType :: !(Maybe Text)
    , _plitpPayload :: !GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , _plitpName :: !Text
    , _plitpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInspectTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitpXgafv'
--
-- * 'plitpUploadProtocol'
--
-- * 'plitpAccessToken'
--
-- * 'plitpUploadType'
--
-- * 'plitpPayload'
--
-- * 'plitpName'
--
-- * 'plitpCallback'
projectsLocationsInspectTemplatesPatch
    :: GooglePrivacyDlpV2UpdateInspectTemplateRequest -- ^ 'plitpPayload'
    -> Text -- ^ 'plitpName'
    -> ProjectsLocationsInspectTemplatesPatch
projectsLocationsInspectTemplatesPatch pPlitpPayload_ pPlitpName_ =
  ProjectsLocationsInspectTemplatesPatch'
    { _plitpXgafv = Nothing
    , _plitpUploadProtocol = Nothing
    , _plitpAccessToken = Nothing
    , _plitpUploadType = Nothing
    , _plitpPayload = pPlitpPayload_
    , _plitpName = pPlitpName_
    , _plitpCallback = Nothing
    }


-- | V1 error format.
plitpXgafv :: Lens' ProjectsLocationsInspectTemplatesPatch (Maybe Xgafv)
plitpXgafv
  = lens _plitpXgafv (\ s a -> s{_plitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitpUploadProtocol :: Lens' ProjectsLocationsInspectTemplatesPatch (Maybe Text)
plitpUploadProtocol
  = lens _plitpUploadProtocol
      (\ s a -> s{_plitpUploadProtocol = a})

-- | OAuth access token.
plitpAccessToken :: Lens' ProjectsLocationsInspectTemplatesPatch (Maybe Text)
plitpAccessToken
  = lens _plitpAccessToken
      (\ s a -> s{_plitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitpUploadType :: Lens' ProjectsLocationsInspectTemplatesPatch (Maybe Text)
plitpUploadType
  = lens _plitpUploadType
      (\ s a -> s{_plitpUploadType = a})

-- | Multipart request metadata.
plitpPayload :: Lens' ProjectsLocationsInspectTemplatesPatch GooglePrivacyDlpV2UpdateInspectTemplateRequest
plitpPayload
  = lens _plitpPayload (\ s a -> s{_plitpPayload = a})

-- | Required. Resource name of organization and inspectTemplate to be
-- updated, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
plitpName :: Lens' ProjectsLocationsInspectTemplatesPatch Text
plitpName
  = lens _plitpName (\ s a -> s{_plitpName = a})

-- | JSONP
plitpCallback :: Lens' ProjectsLocationsInspectTemplatesPatch (Maybe Text)
plitpCallback
  = lens _plitpCallback
      (\ s a -> s{_plitpCallback = a})

instance GoogleRequest
           ProjectsLocationsInspectTemplatesPatch
         where
        type Rs ProjectsLocationsInspectTemplatesPatch =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsLocationsInspectTemplatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInspectTemplatesPatch'{..}
          = go _plitpName _plitpXgafv _plitpUploadProtocol
              _plitpAccessToken
              _plitpUploadType
              _plitpCallback
              (Just AltJSON)
              _plitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInspectTemplatesPatchResource)
                      mempty
