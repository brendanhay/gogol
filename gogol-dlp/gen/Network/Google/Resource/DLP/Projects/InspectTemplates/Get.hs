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
-- Module      : Network.Google.Resource.DLP.Projects.InspectTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.get@.
module Network.Google.Resource.DLP.Projects.InspectTemplates.Get
    (
    -- * REST Resource
      ProjectsInspectTemplatesGetResource

    -- * Creating a Request
    , projectsInspectTemplatesGet
    , ProjectsInspectTemplatesGet

    -- * Request Lenses
    , pitgXgafv
    , pitgUploadProtocol
    , pitgAccessToken
    , pitgUploadType
    , pitgName
    , pitgCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.inspectTemplates.get@ method which the
-- 'ProjectsInspectTemplatesGet' request conforms to.
type ProjectsInspectTemplatesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsInspectTemplatesGet' smart constructor.
data ProjectsInspectTemplatesGet = ProjectsInspectTemplatesGet'
    { _pitgXgafv          :: !(Maybe Xgafv)
    , _pitgUploadProtocol :: !(Maybe Text)
    , _pitgAccessToken    :: !(Maybe Text)
    , _pitgUploadType     :: !(Maybe Text)
    , _pitgName           :: !Text
    , _pitgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInspectTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitgXgafv'
--
-- * 'pitgUploadProtocol'
--
-- * 'pitgAccessToken'
--
-- * 'pitgUploadType'
--
-- * 'pitgName'
--
-- * 'pitgCallback'
projectsInspectTemplatesGet
    :: Text -- ^ 'pitgName'
    -> ProjectsInspectTemplatesGet
projectsInspectTemplatesGet pPitgName_ =
    ProjectsInspectTemplatesGet'
    { _pitgXgafv = Nothing
    , _pitgUploadProtocol = Nothing
    , _pitgAccessToken = Nothing
    , _pitgUploadType = Nothing
    , _pitgName = pPitgName_
    , _pitgCallback = Nothing
    }

-- | V1 error format.
pitgXgafv :: Lens' ProjectsInspectTemplatesGet (Maybe Xgafv)
pitgXgafv
  = lens _pitgXgafv (\ s a -> s{_pitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitgUploadProtocol :: Lens' ProjectsInspectTemplatesGet (Maybe Text)
pitgUploadProtocol
  = lens _pitgUploadProtocol
      (\ s a -> s{_pitgUploadProtocol = a})

-- | OAuth access token.
pitgAccessToken :: Lens' ProjectsInspectTemplatesGet (Maybe Text)
pitgAccessToken
  = lens _pitgAccessToken
      (\ s a -> s{_pitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitgUploadType :: Lens' ProjectsInspectTemplatesGet (Maybe Text)
pitgUploadType
  = lens _pitgUploadType
      (\ s a -> s{_pitgUploadType = a})

-- | Resource name of the organization and inspectTemplate to be read, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
pitgName :: Lens' ProjectsInspectTemplatesGet Text
pitgName = lens _pitgName (\ s a -> s{_pitgName = a})

-- | JSONP
pitgCallback :: Lens' ProjectsInspectTemplatesGet (Maybe Text)
pitgCallback
  = lens _pitgCallback (\ s a -> s{_pitgCallback = a})

instance GoogleRequest ProjectsInspectTemplatesGet
         where
        type Rs ProjectsInspectTemplatesGet =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes ProjectsInspectTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInspectTemplatesGet'{..}
          = go _pitgName _pitgXgafv _pitgUploadProtocol
              _pitgAccessToken
              _pitgUploadType
              _pitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInspectTemplatesGetResource)
                      mempty
