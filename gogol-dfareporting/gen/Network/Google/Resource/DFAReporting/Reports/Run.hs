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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.run@.
module Network.Google.Resource.DFAReporting.Reports.Run
    (
    -- * REST Resource
      ReportsRunResource

    -- * Creating a Request
    , reportsRun
    , ReportsRun

    -- * Request Lenses
    , rrXgafv
    , rrUploadProtocol
    , rrSynchronous
    , rrAccessToken
    , rrReportId
    , rrUploadType
    , rrProFileId
    , rrCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.run@ method which the
-- 'ReportsRun' request conforms to.
type ReportsRunResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 "run" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "synchronous" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Runs a report.
--
-- /See:/ 'reportsRun' smart constructor.
data ReportsRun =
  ReportsRun'
    { _rrXgafv :: !(Maybe Xgafv)
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrSynchronous :: !Bool
    , _rrAccessToken :: !(Maybe Text)
    , _rrReportId :: !(Textual Int64)
    , _rrUploadType :: !(Maybe Text)
    , _rrProFileId :: !(Textual Int64)
    , _rrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrUploadProtocol'
--
-- * 'rrSynchronous'
--
-- * 'rrAccessToken'
--
-- * 'rrReportId'
--
-- * 'rrUploadType'
--
-- * 'rrProFileId'
--
-- * 'rrCallback'
reportsRun
    :: Int64 -- ^ 'rrReportId'
    -> Int64 -- ^ 'rrProFileId'
    -> ReportsRun
reportsRun pRrReportId_ pRrProFileId_ =
  ReportsRun'
    { _rrXgafv = Nothing
    , _rrUploadProtocol = Nothing
    , _rrSynchronous = False
    , _rrAccessToken = Nothing
    , _rrReportId = _Coerce # pRrReportId_
    , _rrUploadType = Nothing
    , _rrProFileId = _Coerce # pRrProFileId_
    , _rrCallback = Nothing
    }


-- | V1 error format.
rrXgafv :: Lens' ReportsRun (Maybe Xgafv)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ReportsRun (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | If set and true, tries to run the report synchronously.
rrSynchronous :: Lens' ReportsRun Bool
rrSynchronous
  = lens _rrSynchronous
      (\ s a -> s{_rrSynchronous = a})

-- | OAuth access token.
rrAccessToken :: Lens' ReportsRun (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | The ID of the report.
rrReportId :: Lens' ReportsRun Int64
rrReportId
  = lens _rrReportId (\ s a -> s{_rrReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ReportsRun (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rrProFileId :: Lens' ReportsRun Int64
rrProFileId
  = lens _rrProFileId (\ s a -> s{_rrProFileId = a}) .
      _Coerce

-- | JSONP
rrCallback :: Lens' ReportsRun (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ReportsRun where
        type Rs ReportsRun = File
        type Scopes ReportsRun =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsRun'{..}
          = go _rrProFileId _rrReportId _rrXgafv
              _rrUploadProtocol
              (Just _rrSynchronous)
              _rrAccessToken
              _rrUploadType
              _rrCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsRunResource)
                      mempty
