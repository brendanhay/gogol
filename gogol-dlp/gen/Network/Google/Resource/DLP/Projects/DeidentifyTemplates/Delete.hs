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
-- Module      : Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.deidentifyTemplates.delete@.
module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.Delete
    (
    -- * REST Resource
      ProjectsDeidentifyTemplatesDeleteResource

    -- * Creating a Request
    , projectsDeidentifyTemplatesDelete
    , ProjectsDeidentifyTemplatesDelete

    -- * Request Lenses
    , pdtdXgafv
    , pdtdUploadProtocol
    , pdtdAccessToken
    , pdtdUploadType
    , pdtdName
    , pdtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.deidentifyTemplates.delete@ method which the
-- 'ProjectsDeidentifyTemplatesDelete' request conforms to.
type ProjectsDeidentifyTemplatesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsDeidentifyTemplatesDelete' smart constructor.
data ProjectsDeidentifyTemplatesDelete =
  ProjectsDeidentifyTemplatesDelete'
    { _pdtdXgafv :: !(Maybe Xgafv)
    , _pdtdUploadProtocol :: !(Maybe Text)
    , _pdtdAccessToken :: !(Maybe Text)
    , _pdtdUploadType :: !(Maybe Text)
    , _pdtdName :: !Text
    , _pdtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeidentifyTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdtdXgafv'
--
-- * 'pdtdUploadProtocol'
--
-- * 'pdtdAccessToken'
--
-- * 'pdtdUploadType'
--
-- * 'pdtdName'
--
-- * 'pdtdCallback'
projectsDeidentifyTemplatesDelete
    :: Text -- ^ 'pdtdName'
    -> ProjectsDeidentifyTemplatesDelete
projectsDeidentifyTemplatesDelete pPdtdName_ =
  ProjectsDeidentifyTemplatesDelete'
    { _pdtdXgafv = Nothing
    , _pdtdUploadProtocol = Nothing
    , _pdtdAccessToken = Nothing
    , _pdtdUploadType = Nothing
    , _pdtdName = pPdtdName_
    , _pdtdCallback = Nothing
    }


-- | V1 error format.
pdtdXgafv :: Lens' ProjectsDeidentifyTemplatesDelete (Maybe Xgafv)
pdtdXgafv
  = lens _pdtdXgafv (\ s a -> s{_pdtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdtdUploadProtocol :: Lens' ProjectsDeidentifyTemplatesDelete (Maybe Text)
pdtdUploadProtocol
  = lens _pdtdUploadProtocol
      (\ s a -> s{_pdtdUploadProtocol = a})

-- | OAuth access token.
pdtdAccessToken :: Lens' ProjectsDeidentifyTemplatesDelete (Maybe Text)
pdtdAccessToken
  = lens _pdtdAccessToken
      (\ s a -> s{_pdtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdtdUploadType :: Lens' ProjectsDeidentifyTemplatesDelete (Maybe Text)
pdtdUploadType
  = lens _pdtdUploadType
      (\ s a -> s{_pdtdUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be deleted, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
pdtdName :: Lens' ProjectsDeidentifyTemplatesDelete Text
pdtdName = lens _pdtdName (\ s a -> s{_pdtdName = a})

-- | JSONP
pdtdCallback :: Lens' ProjectsDeidentifyTemplatesDelete (Maybe Text)
pdtdCallback
  = lens _pdtdCallback (\ s a -> s{_pdtdCallback = a})

instance GoogleRequest
           ProjectsDeidentifyTemplatesDelete
         where
        type Rs ProjectsDeidentifyTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsDeidentifyTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeidentifyTemplatesDelete'{..}
          = go _pdtdName _pdtdXgafv _pdtdUploadProtocol
              _pdtdAccessToken
              _pdtdUploadType
              _pdtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeidentifyTemplatesDeleteResource)
                      mempty
