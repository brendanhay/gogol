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
-- Module      : Network.Google.Resource.CloudTrace.Projects.PatchTraces
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the existing traces specified by PatchTracesRequest and inserts
-- the new traces. Any existing trace or span fields included in an update
-- are overwritten by the update, and any additional fields in an update
-- are merged with the existing trace data.
--
-- /See:/ <https://cloud.google.com/tools/cloud-trace Google Cloud Trace API Reference> for @CloudtraceProjectsPatchTraces@.
module Network.Google.Resource.CloudTrace.Projects.PatchTraces
    (
    -- * REST Resource
      ProjectsPatchTracesResource

    -- * Creating a Request
    , projectsPatchTraces'
    , ProjectsPatchTraces'

    -- * Request Lenses
    , pptXgafv
    , pptUploadProtocol
    , pptPp
    , pptAccessToken
    , pptUploadType
    , pptPayload
    , pptBearerToken
    , pptProjectId
    , pptCallback
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudtraceProjectsPatchTraces@ method which the
-- 'ProjectsPatchTraces'' request conforms to.
type ProjectsPatchTracesResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "traces" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Traces :> Patch '[JSON] Empty

-- | Updates the existing traces specified by PatchTracesRequest and inserts
-- the new traces. Any existing trace or span fields included in an update
-- are overwritten by the update, and any additional fields in an update
-- are merged with the existing trace data.
--
-- /See:/ 'projectsPatchTraces'' smart constructor.
data ProjectsPatchTraces' = ProjectsPatchTraces'
    { _pptXgafv          :: !(Maybe Text)
    , _pptUploadProtocol :: !(Maybe Text)
    , _pptPp             :: !Bool
    , _pptAccessToken    :: !(Maybe Text)
    , _pptUploadType     :: !(Maybe Text)
    , _pptPayload        :: !Traces
    , _pptBearerToken    :: !(Maybe Text)
    , _pptProjectId      :: !Text
    , _pptCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsPatchTraces'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pptXgafv'
--
-- * 'pptUploadProtocol'
--
-- * 'pptPp'
--
-- * 'pptAccessToken'
--
-- * 'pptUploadType'
--
-- * 'pptPayload'
--
-- * 'pptBearerToken'
--
-- * 'pptProjectId'
--
-- * 'pptCallback'
projectsPatchTraces'
    :: Traces -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsPatchTraces'
projectsPatchTraces' pPptPayload_ pPptProjectId_ =
    ProjectsPatchTraces'
    { _pptXgafv = Nothing
    , _pptUploadProtocol = Nothing
    , _pptPp = True
    , _pptAccessToken = Nothing
    , _pptUploadType = Nothing
    , _pptPayload = pPptPayload_
    , _pptBearerToken = Nothing
    , _pptProjectId = pPptProjectId_
    , _pptCallback = Nothing
    }

-- | V1 error format.
pptXgafv :: Lens' ProjectsPatchTraces' (Maybe Text)
pptXgafv = lens _pptXgafv (\ s a -> s{_pptXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pptUploadProtocol :: Lens' ProjectsPatchTraces' (Maybe Text)
pptUploadProtocol
  = lens _pptUploadProtocol
      (\ s a -> s{_pptUploadProtocol = a})

-- | Pretty-print response.
pptPp :: Lens' ProjectsPatchTraces' Bool
pptPp = lens _pptPp (\ s a -> s{_pptPp = a})

-- | OAuth access token.
pptAccessToken :: Lens' ProjectsPatchTraces' (Maybe Text)
pptAccessToken
  = lens _pptAccessToken
      (\ s a -> s{_pptAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pptUploadType :: Lens' ProjectsPatchTraces' (Maybe Text)
pptUploadType
  = lens _pptUploadType
      (\ s a -> s{_pptUploadType = a})

-- | Multipart request metadata.
pptPayload :: Lens' ProjectsPatchTraces' Traces
pptPayload
  = lens _pptPayload (\ s a -> s{_pptPayload = a})

-- | OAuth bearer token.
pptBearerToken :: Lens' ProjectsPatchTraces' (Maybe Text)
pptBearerToken
  = lens _pptBearerToken
      (\ s a -> s{_pptBearerToken = a})

-- | The project id of the trace to patch.
pptProjectId :: Lens' ProjectsPatchTraces' Text
pptProjectId
  = lens _pptProjectId (\ s a -> s{_pptProjectId = a})

-- | JSONP
pptCallback :: Lens' ProjectsPatchTraces' (Maybe Text)
pptCallback
  = lens _pptCallback (\ s a -> s{_pptCallback = a})

instance GoogleRequest ProjectsPatchTraces' where
        type Rs ProjectsPatchTraces' = Empty
        requestClient ProjectsPatchTraces'{..}
          = go _pptProjectId _pptXgafv _pptUploadProtocol
              (Just _pptPp)
              _pptAccessToken
              _pptUploadType
              _pptBearerToken
              _pptCallback
              (Just AltJSON)
              _pptPayload
              cloudTraceService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsPatchTracesResource)
                      mempty
