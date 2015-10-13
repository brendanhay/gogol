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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a project sink. If the sink does not exist, it is created. The
-- destination, filter, or both may be updated.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksUpdate@.
module Network.Google.Resource.Logging.Projects.Sinks.Update
    (
    -- * REST Resource
      ProjectsSinksUpdateResource

    -- * Creating a Request
    , projectsSinksUpdate'
    , ProjectsSinksUpdate'

    -- * Request Lenses
    , psuXgafv
    , psuUploadProtocol
    , psuPp
    , psuAccessToken
    , psuUploadType
    , psuPayload
    , psuBearerToken
    , psuProjectsId
    , psuSinksId
    , psuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksUpdate@ method which the
-- 'ProjectsSinksUpdate'' request conforms to.
type ProjectsSinksUpdateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
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
                               ReqBody '[JSON] LogSink :> Put '[JSON] LogSink

-- | Updates a project sink. If the sink does not exist, it is created. The
-- destination, filter, or both may be updated.
--
-- /See:/ 'projectsSinksUpdate'' smart constructor.
data ProjectsSinksUpdate' = ProjectsSinksUpdate'
    { _psuXgafv          :: !(Maybe Text)
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuPp             :: !Bool
    , _psuAccessToken    :: !(Maybe Text)
    , _psuUploadType     :: !(Maybe Text)
    , _psuPayload        :: !LogSink
    , _psuBearerToken    :: !(Maybe Text)
    , _psuProjectsId     :: !Text
    , _psuSinksId        :: !Text
    , _psuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuUploadProtocol'
--
-- * 'psuPp'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuPayload'
--
-- * 'psuBearerToken'
--
-- * 'psuProjectsId'
--
-- * 'psuSinksId'
--
-- * 'psuCallback'
projectsSinksUpdate'
    :: LogSink -- ^ 'payload'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksUpdate'
projectsSinksUpdate' pPsuPayload_ pPsuProjectsId_ pPsuSinksId_ =
    ProjectsSinksUpdate'
    { _psuXgafv = Nothing
    , _psuUploadProtocol = Nothing
    , _psuPp = True
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuPayload = pPsuPayload_
    , _psuBearerToken = Nothing
    , _psuProjectsId = pPsuProjectsId_
    , _psuSinksId = pPsuSinksId_
    , _psuCallback = Nothing
    }

-- | V1 error format.
psuXgafv :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | Pretty-print response.
psuPp :: Lens' ProjectsSinksUpdate' Bool
psuPp = lens _psuPp (\ s a -> s{_psuPp = a})

-- | OAuth access token.
psuAccessToken :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | Multipart request metadata.
psuPayload :: Lens' ProjectsSinksUpdate' LogSink
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | OAuth bearer token.
psuBearerToken :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuBearerToken
  = lens _psuBearerToken
      (\ s a -> s{_psuBearerToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to update.
psuProjectsId :: Lens' ProjectsSinksUpdate' Text
psuProjectsId
  = lens _psuProjectsId
      (\ s a -> s{_psuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psuSinksId :: Lens' ProjectsSinksUpdate' Text
psuSinksId
  = lens _psuSinksId (\ s a -> s{_psuSinksId = a})

-- | JSONP
psuCallback :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest ProjectsSinksUpdate' where
        type Rs ProjectsSinksUpdate' = LogSink
        requestClient ProjectsSinksUpdate'{..}
          = go _psuProjectsId _psuSinksId _psuXgafv
              _psuUploadProtocol
              (Just _psuPp)
              _psuAccessToken
              _psuUploadType
              _psuBearerToken
              _psuCallback
              (Just AltJSON)
              _psuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksUpdateResource)
                      mempty
