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
-- Module      : Network.Google.Resource.DLP.Projects.InspectTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.patch@.
module Network.Google.Resource.DLP.Projects.InspectTemplates.Patch
    (
    -- * REST Resource
      ProjectsInspectTemplatesPatchResource

    -- * Creating a Request
    , projectsInspectTemplatesPatch
    , ProjectsInspectTemplatesPatch

    -- * Request Lenses
    , pitpXgafv
    , pitpUploadProtocol
    , pitpAccessToken
    , pitpUploadType
    , pitpPayload
    , pitpName
    , pitpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.inspectTemplates.patch@ method which the
-- 'ProjectsInspectTemplatesPatch' request conforms to.
type ProjectsInspectTemplatesPatchResource =
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
-- /See:/ 'projectsInspectTemplatesPatch' smart constructor.
data ProjectsInspectTemplatesPatch =
  ProjectsInspectTemplatesPatch'
    { _pitpXgafv          :: !(Maybe Xgafv)
    , _pitpUploadProtocol :: !(Maybe Text)
    , _pitpAccessToken    :: !(Maybe Text)
    , _pitpUploadType     :: !(Maybe Text)
    , _pitpPayload        :: !GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , _pitpName           :: !Text
    , _pitpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInspectTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitpXgafv'
--
-- * 'pitpUploadProtocol'
--
-- * 'pitpAccessToken'
--
-- * 'pitpUploadType'
--
-- * 'pitpPayload'
--
-- * 'pitpName'
--
-- * 'pitpCallback'
projectsInspectTemplatesPatch
    :: GooglePrivacyDlpV2UpdateInspectTemplateRequest -- ^ 'pitpPayload'
    -> Text -- ^ 'pitpName'
    -> ProjectsInspectTemplatesPatch
projectsInspectTemplatesPatch pPitpPayload_ pPitpName_ =
  ProjectsInspectTemplatesPatch'
    { _pitpXgafv = Nothing
    , _pitpUploadProtocol = Nothing
    , _pitpAccessToken = Nothing
    , _pitpUploadType = Nothing
    , _pitpPayload = pPitpPayload_
    , _pitpName = pPitpName_
    , _pitpCallback = Nothing
    }


-- | V1 error format.
pitpXgafv :: Lens' ProjectsInspectTemplatesPatch (Maybe Xgafv)
pitpXgafv
  = lens _pitpXgafv (\ s a -> s{_pitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitpUploadProtocol :: Lens' ProjectsInspectTemplatesPatch (Maybe Text)
pitpUploadProtocol
  = lens _pitpUploadProtocol
      (\ s a -> s{_pitpUploadProtocol = a})

-- | OAuth access token.
pitpAccessToken :: Lens' ProjectsInspectTemplatesPatch (Maybe Text)
pitpAccessToken
  = lens _pitpAccessToken
      (\ s a -> s{_pitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitpUploadType :: Lens' ProjectsInspectTemplatesPatch (Maybe Text)
pitpUploadType
  = lens _pitpUploadType
      (\ s a -> s{_pitpUploadType = a})

-- | Multipart request metadata.
pitpPayload :: Lens' ProjectsInspectTemplatesPatch GooglePrivacyDlpV2UpdateInspectTemplateRequest
pitpPayload
  = lens _pitpPayload (\ s a -> s{_pitpPayload = a})

-- | Resource name of organization and inspectTemplate to be updated, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
pitpName :: Lens' ProjectsInspectTemplatesPatch Text
pitpName = lens _pitpName (\ s a -> s{_pitpName = a})

-- | JSONP
pitpCallback :: Lens' ProjectsInspectTemplatesPatch (Maybe Text)
pitpCallback
  = lens _pitpCallback (\ s a -> s{_pitpCallback = a})

instance GoogleRequest ProjectsInspectTemplatesPatch
         where
        type Rs ProjectsInspectTemplatesPatch =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsInspectTemplatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInspectTemplatesPatch'{..}
          = go _pitpName _pitpXgafv _pitpUploadProtocol
              _pitpAccessToken
              _pitpUploadType
              _pitpCallback
              (Just AltJSON)
              _pitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInspectTemplatesPatchResource)
                      mempty
