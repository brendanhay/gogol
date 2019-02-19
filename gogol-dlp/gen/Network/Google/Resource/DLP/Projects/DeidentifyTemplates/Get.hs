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
-- Module      : Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.deidentifyTemplates.get@.
module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Get
    (
    -- * REST Resource
      ProjectsDeidentifyTemplatesGetResource

    -- * Creating a Request
    , projectsDeidentifyTemplatesGet
    , ProjectsDeidentifyTemplatesGet

    -- * Request Lenses
    , pdtgXgafv
    , pdtgUploadProtocol
    , pdtgAccessToken
    , pdtgUploadType
    , pdtgName
    , pdtgCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.deidentifyTemplates.get@ method which the
-- 'ProjectsDeidentifyTemplatesGet' request conforms to.
type ProjectsDeidentifyTemplatesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsDeidentifyTemplatesGet' smart constructor.
data ProjectsDeidentifyTemplatesGet =
  ProjectsDeidentifyTemplatesGet'
    { _pdtgXgafv          :: !(Maybe Xgafv)
    , _pdtgUploadProtocol :: !(Maybe Text)
    , _pdtgAccessToken    :: !(Maybe Text)
    , _pdtgUploadType     :: !(Maybe Text)
    , _pdtgName           :: !Text
    , _pdtgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsDeidentifyTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdtgXgafv'
--
-- * 'pdtgUploadProtocol'
--
-- * 'pdtgAccessToken'
--
-- * 'pdtgUploadType'
--
-- * 'pdtgName'
--
-- * 'pdtgCallback'
projectsDeidentifyTemplatesGet
    :: Text -- ^ 'pdtgName'
    -> ProjectsDeidentifyTemplatesGet
projectsDeidentifyTemplatesGet pPdtgName_ =
  ProjectsDeidentifyTemplatesGet'
    { _pdtgXgafv = Nothing
    , _pdtgUploadProtocol = Nothing
    , _pdtgAccessToken = Nothing
    , _pdtgUploadType = Nothing
    , _pdtgName = pPdtgName_
    , _pdtgCallback = Nothing
    }

-- | V1 error format.
pdtgXgafv :: Lens' ProjectsDeidentifyTemplatesGet (Maybe Xgafv)
pdtgXgafv
  = lens _pdtgXgafv (\ s a -> s{_pdtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdtgUploadProtocol :: Lens' ProjectsDeidentifyTemplatesGet (Maybe Text)
pdtgUploadProtocol
  = lens _pdtgUploadProtocol
      (\ s a -> s{_pdtgUploadProtocol = a})

-- | OAuth access token.
pdtgAccessToken :: Lens' ProjectsDeidentifyTemplatesGet (Maybe Text)
pdtgAccessToken
  = lens _pdtgAccessToken
      (\ s a -> s{_pdtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdtgUploadType :: Lens' ProjectsDeidentifyTemplatesGet (Maybe Text)
pdtgUploadType
  = lens _pdtgUploadType
      (\ s a -> s{_pdtgUploadType = a})

-- | Resource name of the organization and deidentify template to be read,
-- for example \`organizations\/433245324\/deidentifyTemplates\/432452342\`
-- or projects\/project-id\/deidentifyTemplates\/432452342.
pdtgName :: Lens' ProjectsDeidentifyTemplatesGet Text
pdtgName = lens _pdtgName (\ s a -> s{_pdtgName = a})

-- | JSONP
pdtgCallback :: Lens' ProjectsDeidentifyTemplatesGet (Maybe Text)
pdtgCallback
  = lens _pdtgCallback (\ s a -> s{_pdtgCallback = a})

instance GoogleRequest ProjectsDeidentifyTemplatesGet
         where
        type Rs ProjectsDeidentifyTemplatesGet =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes ProjectsDeidentifyTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeidentifyTemplatesGet'{..}
          = go _pdtgName _pdtgXgafv _pdtgUploadProtocol
              _pdtgAccessToken
              _pdtgUploadType
              _pdtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeidentifyTemplatesGetResource)
                      mempty
