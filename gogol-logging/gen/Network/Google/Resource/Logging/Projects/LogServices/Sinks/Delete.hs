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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a log service sink. After deletion, no new log entries are
-- written to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksDelete@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.Delete
    (
    -- * REST Resource
      ProjectsLogServicesSinksDeleteResource

    -- * Creating a Request
    , projectsLogServicesSinksDelete'
    , ProjectsLogServicesSinksDelete'

    -- * Request Lenses
    , plssdXgafv
    , plssdUploadProtocol
    , plssdPp
    , plssdAccessToken
    , plssdUploadType
    , plssdBearerToken
    , plssdLogServicesId
    , plssdProjectsId
    , plssdSinksId
    , plssdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksDelete@ method which the
-- 'ProjectsLogServicesSinksDelete'' request conforms to.
type ProjectsLogServicesSinksDeleteResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "sinks" :>
                 Capture "sinksId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Empty

-- | Deletes a log service sink. After deletion, no new log entries are
-- written to the destination.
--
-- /See:/ 'projectsLogServicesSinksDelete'' smart constructor.
data ProjectsLogServicesSinksDelete' = ProjectsLogServicesSinksDelete'
    { _plssdXgafv          :: !(Maybe Text)
    , _plssdUploadProtocol :: !(Maybe Text)
    , _plssdPp             :: !Bool
    , _plssdAccessToken    :: !(Maybe Text)
    , _plssdUploadType     :: !(Maybe Text)
    , _plssdBearerToken    :: !(Maybe Text)
    , _plssdLogServicesId  :: !Text
    , _plssdProjectsId     :: !Text
    , _plssdSinksId        :: !Text
    , _plssdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssdXgafv'
--
-- * 'plssdUploadProtocol'
--
-- * 'plssdPp'
--
-- * 'plssdAccessToken'
--
-- * 'plssdUploadType'
--
-- * 'plssdBearerToken'
--
-- * 'plssdLogServicesId'
--
-- * 'plssdProjectsId'
--
-- * 'plssdSinksId'
--
-- * 'plssdCallback'
projectsLogServicesSinksDelete'
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsLogServicesSinksDelete'
projectsLogServicesSinksDelete' pPlssdLogServicesId_ pPlssdProjectsId_ pPlssdSinksId_ =
    ProjectsLogServicesSinksDelete'
    { _plssdXgafv = Nothing
    , _plssdUploadProtocol = Nothing
    , _plssdPp = True
    , _plssdAccessToken = Nothing
    , _plssdUploadType = Nothing
    , _plssdBearerToken = Nothing
    , _plssdLogServicesId = pPlssdLogServicesId_
    , _plssdProjectsId = pPlssdProjectsId_
    , _plssdSinksId = pPlssdSinksId_
    , _plssdCallback = Nothing
    }

-- | V1 error format.
plssdXgafv :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdXgafv
  = lens _plssdXgafv (\ s a -> s{_plssdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssdUploadProtocol :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdUploadProtocol
  = lens _plssdUploadProtocol
      (\ s a -> s{_plssdUploadProtocol = a})

-- | Pretty-print response.
plssdPp :: Lens' ProjectsLogServicesSinksDelete' Bool
plssdPp = lens _plssdPp (\ s a -> s{_plssdPp = a})

-- | OAuth access token.
plssdAccessToken :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdAccessToken
  = lens _plssdAccessToken
      (\ s a -> s{_plssdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssdUploadType :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdUploadType
  = lens _plssdUploadType
      (\ s a -> s{_plssdUploadType = a})

-- | OAuth bearer token.
plssdBearerToken :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdBearerToken
  = lens _plssdBearerToken
      (\ s a -> s{_plssdBearerToken = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssdLogServicesId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdLogServicesId
  = lens _plssdLogServicesId
      (\ s a -> s{_plssdLogServicesId = a})

-- | Part of \`sinkName\`. The resource name of the log service sink to
-- delete.
plssdProjectsId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdProjectsId
  = lens _plssdProjectsId
      (\ s a -> s{_plssdProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
plssdSinksId :: Lens' ProjectsLogServicesSinksDelete' Text
plssdSinksId
  = lens _plssdSinksId (\ s a -> s{_plssdSinksId = a})

-- | JSONP
plssdCallback :: Lens' ProjectsLogServicesSinksDelete' (Maybe Text)
plssdCallback
  = lens _plssdCallback
      (\ s a -> s{_plssdCallback = a})

instance GoogleRequest
         ProjectsLogServicesSinksDelete' where
        type Rs ProjectsLogServicesSinksDelete' = Empty
        requestClient ProjectsLogServicesSinksDelete'{..}
          = go _plssdProjectsId _plssdLogServicesId
              _plssdSinksId
              _plssdXgafv
              _plssdUploadProtocol
              (Just _plssdPp)
              _plssdAccessToken
              _plssdUploadType
              _plssdBearerToken
              _plssdCallback
              (Just AltJSON)
              logging
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLogServicesSinksDeleteResource)
                      mempty
