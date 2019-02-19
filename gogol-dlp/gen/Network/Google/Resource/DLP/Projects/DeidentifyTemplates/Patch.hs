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
-- Module      : Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Patch
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.deidentifyTemplates.patch@.
module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Patch
    (
    -- * REST Resource
      ProjectsDeidentifyTemplatesPatchResource

    -- * Creating a Request
    , projectsDeidentifyTemplatesPatch
    , ProjectsDeidentifyTemplatesPatch

    -- * Request Lenses
    , pdtpXgafv
    , pdtpUploadProtocol
    , pdtpAccessToken
    , pdtpUploadType
    , pdtpPayload
    , pdtpName
    , pdtpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.deidentifyTemplates.patch@ method which the
-- 'ProjectsDeidentifyTemplatesPatch' request conforms to.
type ProjectsDeidentifyTemplatesPatchResource =
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
-- /See:/ 'projectsDeidentifyTemplatesPatch' smart constructor.
data ProjectsDeidentifyTemplatesPatch =
  ProjectsDeidentifyTemplatesPatch'
    { _pdtpXgafv          :: !(Maybe Xgafv)
    , _pdtpUploadProtocol :: !(Maybe Text)
    , _pdtpAccessToken    :: !(Maybe Text)
    , _pdtpUploadType     :: !(Maybe Text)
    , _pdtpPayload        :: !GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , _pdtpName           :: !Text
    , _pdtpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeidentifyTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdtpXgafv'
--
-- * 'pdtpUploadProtocol'
--
-- * 'pdtpAccessToken'
--
-- * 'pdtpUploadType'
--
-- * 'pdtpPayload'
--
-- * 'pdtpName'
--
-- * 'pdtpCallback'
projectsDeidentifyTemplatesPatch
    :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest -- ^ 'pdtpPayload'
    -> Text -- ^ 'pdtpName'
    -> ProjectsDeidentifyTemplatesPatch
projectsDeidentifyTemplatesPatch pPdtpPayload_ pPdtpName_ =
  ProjectsDeidentifyTemplatesPatch'
    { _pdtpXgafv = Nothing
    , _pdtpUploadProtocol = Nothing
    , _pdtpAccessToken = Nothing
    , _pdtpUploadType = Nothing
    , _pdtpPayload = pPdtpPayload_
    , _pdtpName = pPdtpName_
    , _pdtpCallback = Nothing
    }


-- | V1 error format.
pdtpXgafv :: Lens' ProjectsDeidentifyTemplatesPatch (Maybe Xgafv)
pdtpXgafv
  = lens _pdtpXgafv (\ s a -> s{_pdtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdtpUploadProtocol :: Lens' ProjectsDeidentifyTemplatesPatch (Maybe Text)
pdtpUploadProtocol
  = lens _pdtpUploadProtocol
      (\ s a -> s{_pdtpUploadProtocol = a})

-- | OAuth access token.
pdtpAccessToken :: Lens' ProjectsDeidentifyTemplatesPatch (Maybe Text)
pdtpAccessToken
  = lens _pdtpAccessToken
      (\ s a -> s{_pdtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdtpUploadType :: Lens' ProjectsDeidentifyTemplatesPatch (Maybe Text)
pdtpUploadType
  = lens _pdtpUploadType
      (\ s a -> s{_pdtpUploadType = a})

-- | Multipart request metadata.
pdtpPayload :: Lens' ProjectsDeidentifyTemplatesPatch GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
pdtpPayload
  = lens _pdtpPayload (\ s a -> s{_pdtpPayload = a})

-- | Resource name of organization and deidentify template to be updated, for
-- example \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
pdtpName :: Lens' ProjectsDeidentifyTemplatesPatch Text
pdtpName = lens _pdtpName (\ s a -> s{_pdtpName = a})

-- | JSONP
pdtpCallback :: Lens' ProjectsDeidentifyTemplatesPatch (Maybe Text)
pdtpCallback
  = lens _pdtpCallback (\ s a -> s{_pdtpCallback = a})

instance GoogleRequest
           ProjectsDeidentifyTemplatesPatch
         where
        type Rs ProjectsDeidentifyTemplatesPatch =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes ProjectsDeidentifyTemplatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeidentifyTemplatesPatch'{..}
          = go _pdtpName _pdtpXgafv _pdtpUploadProtocol
              _pdtpAccessToken
              _pdtpUploadType
              _pdtpCallback
              (Just AltJSON)
              _pdtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeidentifyTemplatesPatchResource)
                      mempty
