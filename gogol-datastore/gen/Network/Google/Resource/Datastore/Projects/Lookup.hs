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
-- Module      : Network.Google.Resource.Datastore.Projects.Lookup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up entities by key.
--
-- /See:/ <https://cloud.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.projects.lookup@.
module Network.Google.Resource.Datastore.Projects.Lookup
    (
    -- * REST Resource
      ProjectsLookupResource

    -- * Creating a Request
    , projectsLookup
    , ProjectsLookup

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plPp
    , plAccessToken
    , plUploadType
    , plPayload
    , plBearerToken
    , plProjectId
    , plCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.lookup@ method which the
-- 'ProjectsLookup' request conforms to.
type ProjectsLookupResource =
     "v1beta3" :>
       "projects" :>
         CaptureMode "projectId" "lookup" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LookupRequest :>
                             Post '[JSON] LookupResponse

-- | Looks up entities by key.
--
-- /See:/ 'projectsLookup' smart constructor.
data ProjectsLookup = ProjectsLookup'
    { _plXgafv          :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plPp             :: !Bool
    , _plAccessToken    :: !(Maybe Text)
    , _plUploadType     :: !(Maybe Text)
    , _plPayload        :: !LookupRequest
    , _plBearerToken    :: !(Maybe Text)
    , _plProjectId      :: !Text
    , _plCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plPp'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plPayload'
--
-- * 'plBearerToken'
--
-- * 'plProjectId'
--
-- * 'plCallback'
projectsLookup
    :: LookupRequest -- ^ 'plPayload'
    -> Text -- ^ 'plProjectId'
    -> ProjectsLookup
projectsLookup pPlPayload_ pPlProjectId_ =
    ProjectsLookup'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plPp = True
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plPayload = pPlPayload_
    , _plBearerToken = Nothing
    , _plProjectId = pPlProjectId_
    , _plCallback = Nothing
    }

-- | V1 error format.
plXgafv :: Lens' ProjectsLookup (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProjectsLookup (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | Pretty-print response.
plPp :: Lens' ProjectsLookup Bool
plPp = lens _plPp (\ s a -> s{_plPp = a})

-- | OAuth access token.
plAccessToken :: Lens' ProjectsLookup (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProjectsLookup (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Multipart request metadata.
plPayload :: Lens' ProjectsLookup LookupRequest
plPayload
  = lens _plPayload (\ s a -> s{_plPayload = a})

-- | OAuth bearer token.
plBearerToken :: Lens' ProjectsLookup (Maybe Text)
plBearerToken
  = lens _plBearerToken
      (\ s a -> s{_plBearerToken = a})

-- | The ID of the project against which to make the request.
plProjectId :: Lens' ProjectsLookup Text
plProjectId
  = lens _plProjectId (\ s a -> s{_plProjectId = a})

-- | JSONP
plCallback :: Lens' ProjectsLookup (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest ProjectsLookup where
        type Rs ProjectsLookup = LookupResponse
        type Scopes ProjectsLookup =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsLookup'{..}
          = go _plProjectId _plXgafv _plUploadProtocol
              (Just _plPp)
              _plAccessToken
              _plUploadType
              _plBearerToken
              _plCallback
              (Just AltJSON)
              _plPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy ProjectsLookupResource)
                      mempty
