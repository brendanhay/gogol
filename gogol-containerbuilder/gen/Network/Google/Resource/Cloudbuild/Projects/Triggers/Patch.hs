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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.patch@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch
    (
    -- * REST Resource
      ProjectsTriggersPatchResource

    -- * Creating a Request
    , projectsTriggersPatch
    , ProjectsTriggersPatch

    -- * Request Lenses
    , ptpXgafv
    , ptpUploadProtocol
    , ptpTriggerId
    , ptpAccessToken
    , ptpUploadType
    , ptpPayload
    , ptpProjectId
    , ptpCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.patch@ method which the
-- 'ProjectsTriggersPatch' request conforms to.
type ProjectsTriggersPatchResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             Capture "triggerId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BuildTrigger :>
                             Patch '[JSON] BuildTrigger

-- | Updates a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ 'projectsTriggersPatch' smart constructor.
data ProjectsTriggersPatch = ProjectsTriggersPatch'
    { _ptpXgafv          :: !(Maybe Xgafv)
    , _ptpUploadProtocol :: !(Maybe Text)
    , _ptpTriggerId      :: !Text
    , _ptpAccessToken    :: !(Maybe Text)
    , _ptpUploadType     :: !(Maybe Text)
    , _ptpPayload        :: !BuildTrigger
    , _ptpProjectId      :: !Text
    , _ptpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTriggersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptpXgafv'
--
-- * 'ptpUploadProtocol'
--
-- * 'ptpTriggerId'
--
-- * 'ptpAccessToken'
--
-- * 'ptpUploadType'
--
-- * 'ptpPayload'
--
-- * 'ptpProjectId'
--
-- * 'ptpCallback'
projectsTriggersPatch
    :: Text -- ^ 'ptpTriggerId'
    -> BuildTrigger -- ^ 'ptpPayload'
    -> Text -- ^ 'ptpProjectId'
    -> ProjectsTriggersPatch
projectsTriggersPatch pPtpTriggerId_ pPtpPayload_ pPtpProjectId_ =
    ProjectsTriggersPatch'
    { _ptpXgafv = Nothing
    , _ptpUploadProtocol = Nothing
    , _ptpTriggerId = pPtpTriggerId_
    , _ptpAccessToken = Nothing
    , _ptpUploadType = Nothing
    , _ptpPayload = pPtpPayload_
    , _ptpProjectId = pPtpProjectId_
    , _ptpCallback = Nothing
    }

-- | V1 error format.
ptpXgafv :: Lens' ProjectsTriggersPatch (Maybe Xgafv)
ptpXgafv = lens _ptpXgafv (\ s a -> s{_ptpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptpUploadProtocol :: Lens' ProjectsTriggersPatch (Maybe Text)
ptpUploadProtocol
  = lens _ptpUploadProtocol
      (\ s a -> s{_ptpUploadProtocol = a})

-- | ID of the \`BuildTrigger\` to update.
ptpTriggerId :: Lens' ProjectsTriggersPatch Text
ptpTriggerId
  = lens _ptpTriggerId (\ s a -> s{_ptpTriggerId = a})

-- | OAuth access token.
ptpAccessToken :: Lens' ProjectsTriggersPatch (Maybe Text)
ptpAccessToken
  = lens _ptpAccessToken
      (\ s a -> s{_ptpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptpUploadType :: Lens' ProjectsTriggersPatch (Maybe Text)
ptpUploadType
  = lens _ptpUploadType
      (\ s a -> s{_ptpUploadType = a})

-- | Multipart request metadata.
ptpPayload :: Lens' ProjectsTriggersPatch BuildTrigger
ptpPayload
  = lens _ptpPayload (\ s a -> s{_ptpPayload = a})

-- | ID of the project that owns the trigger.
ptpProjectId :: Lens' ProjectsTriggersPatch Text
ptpProjectId
  = lens _ptpProjectId (\ s a -> s{_ptpProjectId = a})

-- | JSONP
ptpCallback :: Lens' ProjectsTriggersPatch (Maybe Text)
ptpCallback
  = lens _ptpCallback (\ s a -> s{_ptpCallback = a})

instance GoogleRequest ProjectsTriggersPatch where
        type Rs ProjectsTriggersPatch = BuildTrigger
        type Scopes ProjectsTriggersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersPatch'{..}
          = go _ptpProjectId _ptpTriggerId _ptpXgafv
              _ptpUploadProtocol
              _ptpAccessToken
              _ptpUploadType
              _ptpCallback
              (Just AltJSON)
              _ptpPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersPatchResource)
                      mempty
