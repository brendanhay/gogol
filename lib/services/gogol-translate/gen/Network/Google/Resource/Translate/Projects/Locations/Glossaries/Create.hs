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
-- Module      : Network.Google.Resource.Translate.Projects.Locations.Glossaries.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a glossary and returns the long-running operation. Returns
-- NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.create@.
module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Create
    (
    -- * REST Resource
      ProjectsLocationsGlossariesCreateResource

    -- * Creating a Request
    , projectsLocationsGlossariesCreate
    , ProjectsLocationsGlossariesCreate

    -- * Request Lenses
    , plgcParent
    , plgcXgafv
    , plgcUploadProtocol
    , plgcAccessToken
    , plgcUploadType
    , plgcPayload
    , plgcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.create@ method which the
-- 'ProjectsLocationsGlossariesCreate' request conforms to.
type ProjectsLocationsGlossariesCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "glossaries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Glossary :> Post '[JSON] Operation

-- | Creates a glossary and returns the long-running operation. Returns
-- NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ 'projectsLocationsGlossariesCreate' smart constructor.
data ProjectsLocationsGlossariesCreate =
  ProjectsLocationsGlossariesCreate'
    { _plgcParent :: !Text
    , _plgcXgafv :: !(Maybe Xgafv)
    , _plgcUploadProtocol :: !(Maybe Text)
    , _plgcAccessToken :: !(Maybe Text)
    , _plgcUploadType :: !(Maybe Text)
    , _plgcPayload :: !Glossary
    , _plgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGlossariesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plgcParent'
--
-- * 'plgcXgafv'
--
-- * 'plgcUploadProtocol'
--
-- * 'plgcAccessToken'
--
-- * 'plgcUploadType'
--
-- * 'plgcPayload'
--
-- * 'plgcCallback'
projectsLocationsGlossariesCreate
    :: Text -- ^ 'plgcParent'
    -> Glossary -- ^ 'plgcPayload'
    -> ProjectsLocationsGlossariesCreate
projectsLocationsGlossariesCreate pPlgcParent_ pPlgcPayload_ =
  ProjectsLocationsGlossariesCreate'
    { _plgcParent = pPlgcParent_
    , _plgcXgafv = Nothing
    , _plgcUploadProtocol = Nothing
    , _plgcAccessToken = Nothing
    , _plgcUploadType = Nothing
    , _plgcPayload = pPlgcPayload_
    , _plgcCallback = Nothing
    }


-- | Required. The project name.
plgcParent :: Lens' ProjectsLocationsGlossariesCreate Text
plgcParent
  = lens _plgcParent (\ s a -> s{_plgcParent = a})

-- | V1 error format.
plgcXgafv :: Lens' ProjectsLocationsGlossariesCreate (Maybe Xgafv)
plgcXgafv
  = lens _plgcXgafv (\ s a -> s{_plgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plgcUploadProtocol :: Lens' ProjectsLocationsGlossariesCreate (Maybe Text)
plgcUploadProtocol
  = lens _plgcUploadProtocol
      (\ s a -> s{_plgcUploadProtocol = a})

-- | OAuth access token.
plgcAccessToken :: Lens' ProjectsLocationsGlossariesCreate (Maybe Text)
plgcAccessToken
  = lens _plgcAccessToken
      (\ s a -> s{_plgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plgcUploadType :: Lens' ProjectsLocationsGlossariesCreate (Maybe Text)
plgcUploadType
  = lens _plgcUploadType
      (\ s a -> s{_plgcUploadType = a})

-- | Multipart request metadata.
plgcPayload :: Lens' ProjectsLocationsGlossariesCreate Glossary
plgcPayload
  = lens _plgcPayload (\ s a -> s{_plgcPayload = a})

-- | JSONP
plgcCallback :: Lens' ProjectsLocationsGlossariesCreate (Maybe Text)
plgcCallback
  = lens _plgcCallback (\ s a -> s{_plgcCallback = a})

instance GoogleRequest
           ProjectsLocationsGlossariesCreate
         where
        type Rs ProjectsLocationsGlossariesCreate = Operation
        type Scopes ProjectsLocationsGlossariesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsGlossariesCreate'{..}
          = go _plgcParent _plgcXgafv _plgcUploadProtocol
              _plgcAccessToken
              _plgcUploadType
              _plgcCallback
              (Just AltJSON)
              _plgcPayload
              translateService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGlossariesCreateResource)
                      mempty
