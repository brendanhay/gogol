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
-- Module      : Network.Google.Resource.Logging.Folders.Logs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects or organizations. Only logs that have entries
-- are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.logs.list@.
module Network.Google.Resource.Logging.Folders.Logs.List
    (
    -- * REST Resource
      FoldersLogsListResource

    -- * Creating a Request
    , foldersLogsList
    , FoldersLogsList

    -- * Request Lenses
    , fllParent
    , fllXgafv
    , fllUploadProtocol
    , fllPp
    , fllAccessToken
    , fllUploadType
    , fllBearerToken
    , fllPageToken
    , fllPageSize
    , fllCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.logs.list@ method which the
-- 'FoldersLogsList' request conforms to.
type FoldersLogsListResource =
     "v2" :>
       Capture "parent" Text :>
         "logs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListLogsResponse

-- | Lists the logs in projects or organizations. Only logs that have entries
-- are listed.
--
-- /See:/ 'foldersLogsList' smart constructor.
data FoldersLogsList = FoldersLogsList'
    { _fllParent         :: !Text
    , _fllXgafv          :: !(Maybe Xgafv)
    , _fllUploadProtocol :: !(Maybe Text)
    , _fllPp             :: !Bool
    , _fllAccessToken    :: !(Maybe Text)
    , _fllUploadType     :: !(Maybe Text)
    , _fllBearerToken    :: !(Maybe Text)
    , _fllPageToken      :: !(Maybe Text)
    , _fllPageSize       :: !(Maybe (Textual Int32))
    , _fllCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fllParent'
--
-- * 'fllXgafv'
--
-- * 'fllUploadProtocol'
--
-- * 'fllPp'
--
-- * 'fllAccessToken'
--
-- * 'fllUploadType'
--
-- * 'fllBearerToken'
--
-- * 'fllPageToken'
--
-- * 'fllPageSize'
--
-- * 'fllCallback'
foldersLogsList
    :: Text -- ^ 'fllParent'
    -> FoldersLogsList
foldersLogsList pFllParent_ =
    FoldersLogsList'
    { _fllParent = pFllParent_
    , _fllXgafv = Nothing
    , _fllUploadProtocol = Nothing
    , _fllPp = True
    , _fllAccessToken = Nothing
    , _fllUploadType = Nothing
    , _fllBearerToken = Nothing
    , _fllPageToken = Nothing
    , _fllPageSize = Nothing
    , _fllCallback = Nothing
    }

-- | Required. The resource name that owns the logs:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
fllParent :: Lens' FoldersLogsList Text
fllParent
  = lens _fllParent (\ s a -> s{_fllParent = a})

-- | V1 error format.
fllXgafv :: Lens' FoldersLogsList (Maybe Xgafv)
fllXgafv = lens _fllXgafv (\ s a -> s{_fllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fllUploadProtocol :: Lens' FoldersLogsList (Maybe Text)
fllUploadProtocol
  = lens _fllUploadProtocol
      (\ s a -> s{_fllUploadProtocol = a})

-- | Pretty-print response.
fllPp :: Lens' FoldersLogsList Bool
fllPp = lens _fllPp (\ s a -> s{_fllPp = a})

-- | OAuth access token.
fllAccessToken :: Lens' FoldersLogsList (Maybe Text)
fllAccessToken
  = lens _fllAccessToken
      (\ s a -> s{_fllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fllUploadType :: Lens' FoldersLogsList (Maybe Text)
fllUploadType
  = lens _fllUploadType
      (\ s a -> s{_fllUploadType = a})

-- | OAuth bearer token.
fllBearerToken :: Lens' FoldersLogsList (Maybe Text)
fllBearerToken
  = lens _fllBearerToken
      (\ s a -> s{_fllBearerToken = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
fllPageToken :: Lens' FoldersLogsList (Maybe Text)
fllPageToken
  = lens _fllPageToken (\ s a -> s{_fllPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
fllPageSize :: Lens' FoldersLogsList (Maybe Int32)
fllPageSize
  = lens _fllPageSize (\ s a -> s{_fllPageSize = a}) .
      mapping _Coerce

-- | JSONP
fllCallback :: Lens' FoldersLogsList (Maybe Text)
fllCallback
  = lens _fllCallback (\ s a -> s{_fllCallback = a})

instance GoogleRequest FoldersLogsList where
        type Rs FoldersLogsList = ListLogsResponse
        type Scopes FoldersLogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLogsList'{..}
          = go _fllParent _fllXgafv _fllUploadProtocol
              (Just _fllPp)
              _fllAccessToken
              _fllUploadType
              _fllBearerToken
              _fllPageToken
              _fllPageSize
              _fllCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLogsListResource)
                      mempty
