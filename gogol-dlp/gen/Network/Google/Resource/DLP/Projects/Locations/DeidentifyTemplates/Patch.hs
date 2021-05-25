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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.patch@.
module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.Patch
    (
    -- * REST Resource
      ProjectsLocationsDeidentifyTemplatesPatchResource

    -- * Creating a Request
    , projectsLocationsDeidentifyTemplatesPatch
    , ProjectsLocationsDeidentifyTemplatesPatch

    -- * Request Lenses
    , pldtpXgafv
    , pldtpUploadProtocol
    , pldtpAccessToken
    , pldtpUploadType
    , pldtpPayload
    , pldtpName
    , pldtpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.patch@ method which the
-- 'ProjectsLocationsDeidentifyTemplatesPatch' request conforms to.
type ProjectsLocationsDeidentifyTemplatesPatchResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Updates the DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsLocationsDeidentifyTemplatesPatch' smart constructor.
data ProjectsLocationsDeidentifyTemplatesPatch =
  ProjectsLocationsDeidentifyTemplatesPatch'
    { _pldtpXgafv :: !(Maybe Xgafv)
    , _pldtpUploadProtocol :: !(Maybe Text)
    , _pldtpAccessToken :: !(Maybe Text)
    , _pldtpUploadType :: !(Maybe Text)
    , _pldtpPayload :: !GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , _pldtpName :: !Text
    , _pldtpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDeidentifyTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldtpXgafv'
--
-- * 'pldtpUploadProtocol'
--
-- * 'pldtpAccessToken'
--
-- * 'pldtpUploadType'
--
-- * 'pldtpPayload'
--
-- * 'pldtpName'
--
-- * 'pldtpCallback'
projectsLocationsDeidentifyTemplatesPatch
    :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest -- ^ 'pldtpPayload'
    -> Text -- ^ 'pldtpName'
    -> ProjectsLocationsDeidentifyTemplatesPatch
projectsLocationsDeidentifyTemplatesPatch pPldtpPayload_ pPldtpName_ =
  ProjectsLocationsDeidentifyTemplatesPatch'
    { _pldtpXgafv = Nothing
    , _pldtpUploadProtocol = Nothing
    , _pldtpAccessToken = Nothing
    , _pldtpUploadType = Nothing
    , _pldtpPayload = pPldtpPayload_
    , _pldtpName = pPldtpName_
    , _pldtpCallback = Nothing
    }


-- | V1 error format.
pldtpXgafv :: Lens' ProjectsLocationsDeidentifyTemplatesPatch (Maybe Xgafv)
pldtpXgafv
  = lens _pldtpXgafv (\ s a -> s{_pldtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldtpUploadProtocol :: Lens' ProjectsLocationsDeidentifyTemplatesPatch (Maybe Text)
pldtpUploadProtocol
  = lens _pldtpUploadProtocol
      (\ s a -> s{_pldtpUploadProtocol = a})

-- | OAuth access token.
pldtpAccessToken :: Lens' ProjectsLocationsDeidentifyTemplatesPatch (Maybe Text)
pldtpAccessToken
  = lens _pldtpAccessToken
      (\ s a -> s{_pldtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldtpUploadType :: Lens' ProjectsLocationsDeidentifyTemplatesPatch (Maybe Text)
pldtpUploadType
  = lens _pldtpUploadType
      (\ s a -> s{_pldtpUploadType = a})

-- | Multipart request metadata.
pldtpPayload :: Lens' ProjectsLocationsDeidentifyTemplatesPatch GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
pldtpPayload
  = lens _pldtpPayload (\ s a -> s{_pldtpPayload = a})

-- | Required. Resource name of organization and deidentify template to be
-- updated, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
pldtpName :: Lens' ProjectsLocationsDeidentifyTemplatesPatch Text
pldtpName
  = lens _pldtpName (\ s a -> s{_pldtpName = a})

-- | JSONP
pldtpCallback :: Lens' ProjectsLocationsDeidentifyTemplatesPatch (Maybe Text)
pldtpCallback
  = lens _pldtpCallback
      (\ s a -> s{_pldtpCallback = a})

instance GoogleRequest
           ProjectsLocationsDeidentifyTemplatesPatch
         where
        type Rs ProjectsLocationsDeidentifyTemplatesPatch =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes ProjectsLocationsDeidentifyTemplatesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDeidentifyTemplatesPatch'{..}
          = go _pldtpName _pldtpXgafv _pldtpUploadProtocol
              _pldtpAccessToken
              _pldtpUploadType
              _pldtpCallback
              (Just AltJSON)
              _pldtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDeidentifyTemplatesPatchResource)
                      mempty
