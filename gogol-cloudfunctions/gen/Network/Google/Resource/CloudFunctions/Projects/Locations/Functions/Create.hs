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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new function. If a function with the given name already exists
-- in the specified project, the long running operation will return
-- \`ALREADY_EXISTS\` error.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.create@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Create
    (
    -- * REST Resource
      ProjectsLocationsFunctionsCreateResource

    -- * Creating a Request
    , projectsLocationsFunctionsCreate
    , ProjectsLocationsFunctionsCreate

    -- * Request Lenses
    , plfcXgafv
    , plfcUploadProtocol
    , plfcLocation
    , plfcAccessToken
    , plfcUploadType
    , plfcPayload
    , plfcCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.create@ method which the
-- 'ProjectsLocationsFunctionsCreate' request conforms to.
type ProjectsLocationsFunctionsCreateResource =
     "v1" :>
       Capture "location" Text :>
         "functions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CloudFunction :>
                         Post '[JSON] Operation

-- | Creates a new function. If a function with the given name already exists
-- in the specified project, the long running operation will return
-- \`ALREADY_EXISTS\` error.
--
-- /See:/ 'projectsLocationsFunctionsCreate' smart constructor.
data ProjectsLocationsFunctionsCreate =
  ProjectsLocationsFunctionsCreate'
    { _plfcXgafv          :: !(Maybe Xgafv)
    , _plfcUploadProtocol :: !(Maybe Text)
    , _plfcLocation       :: !Text
    , _plfcAccessToken    :: !(Maybe Text)
    , _plfcUploadType     :: !(Maybe Text)
    , _plfcPayload        :: !CloudFunction
    , _plfcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsFunctionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfcXgafv'
--
-- * 'plfcUploadProtocol'
--
-- * 'plfcLocation'
--
-- * 'plfcAccessToken'
--
-- * 'plfcUploadType'
--
-- * 'plfcPayload'
--
-- * 'plfcCallback'
projectsLocationsFunctionsCreate
    :: Text -- ^ 'plfcLocation'
    -> CloudFunction -- ^ 'plfcPayload'
    -> ProjectsLocationsFunctionsCreate
projectsLocationsFunctionsCreate pPlfcLocation_ pPlfcPayload_ =
  ProjectsLocationsFunctionsCreate'
    { _plfcXgafv = Nothing
    , _plfcUploadProtocol = Nothing
    , _plfcLocation = pPlfcLocation_
    , _plfcAccessToken = Nothing
    , _plfcUploadType = Nothing
    , _plfcPayload = pPlfcPayload_
    , _plfcCallback = Nothing
    }

-- | V1 error format.
plfcXgafv :: Lens' ProjectsLocationsFunctionsCreate (Maybe Xgafv)
plfcXgafv
  = lens _plfcXgafv (\ s a -> s{_plfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfcUploadProtocol :: Lens' ProjectsLocationsFunctionsCreate (Maybe Text)
plfcUploadProtocol
  = lens _plfcUploadProtocol
      (\ s a -> s{_plfcUploadProtocol = a})

-- | The project and location in which the function should be created,
-- specified in the format \`projects\/*\/locations\/*\`
plfcLocation :: Lens' ProjectsLocationsFunctionsCreate Text
plfcLocation
  = lens _plfcLocation (\ s a -> s{_plfcLocation = a})

-- | OAuth access token.
plfcAccessToken :: Lens' ProjectsLocationsFunctionsCreate (Maybe Text)
plfcAccessToken
  = lens _plfcAccessToken
      (\ s a -> s{_plfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfcUploadType :: Lens' ProjectsLocationsFunctionsCreate (Maybe Text)
plfcUploadType
  = lens _plfcUploadType
      (\ s a -> s{_plfcUploadType = a})

-- | Multipart request metadata.
plfcPayload :: Lens' ProjectsLocationsFunctionsCreate CloudFunction
plfcPayload
  = lens _plfcPayload (\ s a -> s{_plfcPayload = a})

-- | JSONP
plfcCallback :: Lens' ProjectsLocationsFunctionsCreate (Maybe Text)
plfcCallback
  = lens _plfcCallback (\ s a -> s{_plfcCallback = a})

instance GoogleRequest
           ProjectsLocationsFunctionsCreate
         where
        type Rs ProjectsLocationsFunctionsCreate = Operation
        type Scopes ProjectsLocationsFunctionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsCreate'{..}
          = go _plfcLocation _plfcXgafv _plfcUploadProtocol
              _plfcAccessToken
              _plfcUploadType
              _plfcCallback
              (Just AltJSON)
              _plfcPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsCreateResource)
                      mempty
