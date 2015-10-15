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
-- Module      : Network.Google.Resource.Logging.Projects.LogServices.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log service sinks associated with a log service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogServicesSinksList@.
module Network.Google.Resource.Logging.Projects.LogServices.Sinks.List
    (
    -- * REST Resource
      ProjectsLogServicesSinksListResource

    -- * Creating a Request
    , projectsLogServicesSinksList'
    , ProjectsLogServicesSinksList'

    -- * Request Lenses
    , plsslXgafv
    , plsslUploadProtocol
    , plsslPp
    , plsslAccessToken
    , plsslUploadType
    , plsslBearerToken
    , plsslLogServicesId
    , plsslProjectsId
    , plsslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogServicesSinksList@ method which the
-- 'ProjectsLogServicesSinksList'' request conforms to.
type ProjectsLogServicesSinksListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logServices" :>
             Capture "logServicesId" Text :>
               "sinks" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListLogServiceSinksResponse

-- | Lists log service sinks associated with a log service.
--
-- /See:/ 'projectsLogServicesSinksList'' smart constructor.
data ProjectsLogServicesSinksList' = ProjectsLogServicesSinksList'
    { _plsslXgafv          :: !(Maybe Text)
    , _plsslUploadProtocol :: !(Maybe Text)
    , _plsslPp             :: !Bool
    , _plsslAccessToken    :: !(Maybe Text)
    , _plsslUploadType     :: !(Maybe Text)
    , _plsslBearerToken    :: !(Maybe Text)
    , _plsslLogServicesId  :: !Text
    , _plsslProjectsId     :: !Text
    , _plsslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogServicesSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsslXgafv'
--
-- * 'plsslUploadProtocol'
--
-- * 'plsslPp'
--
-- * 'plsslAccessToken'
--
-- * 'plsslUploadType'
--
-- * 'plsslBearerToken'
--
-- * 'plsslLogServicesId'
--
-- * 'plsslProjectsId'
--
-- * 'plsslCallback'
projectsLogServicesSinksList'
    :: Text -- ^ 'logServicesId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogServicesSinksList'
projectsLogServicesSinksList' pPlsslLogServicesId_ pPlsslProjectsId_ =
    ProjectsLogServicesSinksList'
    { _plsslXgafv = Nothing
    , _plsslUploadProtocol = Nothing
    , _plsslPp = True
    , _plsslAccessToken = Nothing
    , _plsslUploadType = Nothing
    , _plsslBearerToken = Nothing
    , _plsslLogServicesId = pPlsslLogServicesId_
    , _plsslProjectsId = pPlsslProjectsId_
    , _plsslCallback = Nothing
    }

-- | V1 error format.
plsslXgafv :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslXgafv
  = lens _plsslXgafv (\ s a -> s{_plsslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsslUploadProtocol :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslUploadProtocol
  = lens _plsslUploadProtocol
      (\ s a -> s{_plsslUploadProtocol = a})

-- | Pretty-print response.
plsslPp :: Lens' ProjectsLogServicesSinksList' Bool
plsslPp = lens _plsslPp (\ s a -> s{_plsslPp = a})

-- | OAuth access token.
plsslAccessToken :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslAccessToken
  = lens _plsslAccessToken
      (\ s a -> s{_plsslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsslUploadType :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslUploadType
  = lens _plsslUploadType
      (\ s a -> s{_plsslUploadType = a})

-- | OAuth bearer token.
plsslBearerToken :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslBearerToken
  = lens _plsslBearerToken
      (\ s a -> s{_plsslBearerToken = a})

-- | Part of \`serviceName\`. See documentation of \`projectsId\`.
plsslLogServicesId :: Lens' ProjectsLogServicesSinksList' Text
plsslLogServicesId
  = lens _plsslLogServicesId
      (\ s a -> s{_plsslLogServicesId = a})

-- | Part of \`serviceName\`. The log service whose sinks are wanted.
plsslProjectsId :: Lens' ProjectsLogServicesSinksList' Text
plsslProjectsId
  = lens _plsslProjectsId
      (\ s a -> s{_plsslProjectsId = a})

-- | JSONP
plsslCallback :: Lens' ProjectsLogServicesSinksList' (Maybe Text)
plsslCallback
  = lens _plsslCallback
      (\ s a -> s{_plsslCallback = a})

instance GoogleRequest ProjectsLogServicesSinksList'
         where
        type Rs ProjectsLogServicesSinksList' =
             ListLogServiceSinksResponse
        requestClient ProjectsLogServicesSinksList'{..}
          = go _plsslProjectsId _plsslLogServicesId _plsslXgafv
              _plsslUploadProtocol
              (Just _plsslPp)
              _plsslAccessToken
              _plsslUploadType
              _plsslBearerToken
              _plsslCallback
              (Just AltJSON)
              logging
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogServicesSinksListResource)
                      mempty
