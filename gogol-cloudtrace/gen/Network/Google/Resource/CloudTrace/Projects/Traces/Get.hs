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
-- Module      : Network.Google.Resource.CloudTrace.Projects.Traces.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one trace by id.
--
-- /See:/ <https://cloud.google.com/tools/cloud-trace Google Cloud Trace API Reference> for @CloudtraceProjectsTracesGet@.
module Network.Google.Resource.CloudTrace.Projects.Traces.Get
    (
    -- * REST Resource
      ProjectsTracesGetResource

    -- * Creating a Request
    , projectsTracesGet'
    , ProjectsTracesGet'

    -- * Request Lenses
    , ptgTraceId
    , ptgXgafv
    , ptgUploadProtocol
    , ptgPp
    , ptgAccessToken
    , ptgUploadType
    , ptgBearerToken
    , ptgProjectId
    , ptgCallback
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudtraceProjectsTracesGet@ method which the
-- 'ProjectsTracesGet'' request conforms to.
type ProjectsTracesGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "traces" :>
             Capture "traceId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Trace

-- | Gets one trace by id.
--
-- /See:/ 'projectsTracesGet'' smart constructor.
data ProjectsTracesGet' = ProjectsTracesGet'
    { _ptgTraceId        :: !Text
    , _ptgXgafv          :: !(Maybe Text)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgPp             :: !Bool
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgBearerToken    :: !(Maybe Text)
    , _ptgProjectId      :: !Text
    , _ptgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTracesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgTraceId'
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgPp'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgBearerToken'
--
-- * 'ptgProjectId'
--
-- * 'ptgCallback'
projectsTracesGet'
    :: Text -- ^ 'traceId'
    -> Text -- ^ 'projectId'
    -> ProjectsTracesGet'
projectsTracesGet' pPtgTraceId_ pPtgProjectId_ =
    ProjectsTracesGet'
    { _ptgTraceId = pPtgTraceId_
    , _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgPp = True
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgBearerToken = Nothing
    , _ptgProjectId = pPtgProjectId_
    , _ptgCallback = Nothing
    }

-- | The trace id of the trace to return.
ptgTraceId :: Lens' ProjectsTracesGet' Text
ptgTraceId
  = lens _ptgTraceId (\ s a -> s{_ptgTraceId = a})

-- | V1 error format.
ptgXgafv :: Lens' ProjectsTracesGet' (Maybe Text)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTracesGet' (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | Pretty-print response.
ptgPp :: Lens' ProjectsTracesGet' Bool
ptgPp = lens _ptgPp (\ s a -> s{_ptgPp = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTracesGet' (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTracesGet' (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | OAuth bearer token.
ptgBearerToken :: Lens' ProjectsTracesGet' (Maybe Text)
ptgBearerToken
  = lens _ptgBearerToken
      (\ s a -> s{_ptgBearerToken = a})

-- | The project id of the trace to return.
ptgProjectId :: Lens' ProjectsTracesGet' Text
ptgProjectId
  = lens _ptgProjectId (\ s a -> s{_ptgProjectId = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTracesGet' (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTracesGet' where
        type Rs ProjectsTracesGet' = Trace
        requestClient ProjectsTracesGet'{..}
          = go _ptgProjectId _ptgTraceId _ptgXgafv
              _ptgUploadProtocol
              (Just _ptgPp)
              _ptgAccessToken
              _ptgUploadType
              _ptgBearerToken
              _ptgCallback
              (Just AltJSON)
              cloudTraceService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesGetResource)
                      mempty
