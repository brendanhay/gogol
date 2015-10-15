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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists log sinks associated with a log.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsSinksList@.
module Network.Google.Resource.Logging.Projects.Logs.Sinks.List
    (
    -- * REST Resource
      ProjectsLogsSinksListResource

    -- * Creating a Request
    , projectsLogsSinksList'
    , ProjectsLogsSinksList'

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pLogsId
    , pPp
    , pAccessToken
    , pUploadType
    , pBearerToken
    , pProjectsId
    , pCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsSinksList@ method which the
-- 'ProjectsLogsSinksList'' request conforms to.
type ProjectsLogsSinksListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "sinks" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListLogSinksResponse

-- | Lists log sinks associated with a log.
--
-- /See:/ 'projectsLogsSinksList'' smart constructor.
data ProjectsLogsSinksList' = ProjectsLogsSinksList'
    { _pXgafv          :: !(Maybe Text)
    , _pUploadProtocol :: !(Maybe Text)
    , _pLogsId         :: !Text
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pBearerToken    :: !(Maybe Text)
    , _pProjectsId     :: !Text
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pLogsId'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pBearerToken'
--
-- * 'pProjectsId'
--
-- * 'pCallback'
projectsLogsSinksList'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsSinksList'
projectsLogsSinksList' pPLogsId_ pPProjectsId_ =
    ProjectsLogsSinksList'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pLogsId = pPLogsId_
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pBearerToken = Nothing
    , _pProjectsId = pPProjectsId_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsLogsSinksList' (Maybe Text)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLogsSinksList' (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
pLogsId :: Lens' ProjectsLogsSinksList' Text
pLogsId = lens _pLogsId (\ s a -> s{_pLogsId = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsLogsSinksList' Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLogsSinksList' (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsLogsSinksList' (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | Part of \`logName\`. The log whose sinks are wanted. For example,
-- \`\"compute.google.com\/syslog\"\`.
pProjectsId :: Lens' ProjectsLogsSinksList' Text
pProjectsId
  = lens _pProjectsId (\ s a -> s{_pProjectsId = a})

-- | JSONP
pCallback :: Lens' ProjectsLogsSinksList' (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLogsSinksList' where
        type Rs ProjectsLogsSinksList' = ListLogSinksResponse
        requestClient ProjectsLogsSinksList'{..}
          = go _pProjectsId _pLogsId _pXgafv _pUploadProtocol
              (Just _pPp)
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pCallback
              (Just AltJSON)
              logging
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsSinksListResource)
                      mempty
