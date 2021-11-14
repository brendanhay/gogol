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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.update@.
module Network.Google.Resource.DFAReporting.Reports.Update
    (
    -- * REST Resource
      ReportsUpdateResource

    -- * Creating a Request
    , reportsUpdate
    , ReportsUpdate

    -- * Request Lenses
    , ruXgafv
    , ruUploadProtocol
    , ruAccessToken
    , ruReportId
    , ruUploadType
    , ruProFileId
    , ruPayload
    , ruCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.update@ method which the
-- 'ReportsUpdate' request conforms to.
type ReportsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Report :> Put '[JSON] Report

-- | Updates a report.
--
-- /See:/ 'reportsUpdate' smart constructor.
data ReportsUpdate =
  ReportsUpdate'
    { _ruXgafv :: !(Maybe Xgafv)
    , _ruUploadProtocol :: !(Maybe Text)
    , _ruAccessToken :: !(Maybe Text)
    , _ruReportId :: !(Textual Int64)
    , _ruUploadType :: !(Maybe Text)
    , _ruProFileId :: !(Textual Int64)
    , _ruPayload :: !Report
    , _ruCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruXgafv'
--
-- * 'ruUploadProtocol'
--
-- * 'ruAccessToken'
--
-- * 'ruReportId'
--
-- * 'ruUploadType'
--
-- * 'ruProFileId'
--
-- * 'ruPayload'
--
-- * 'ruCallback'
reportsUpdate
    :: Int64 -- ^ 'ruReportId'
    -> Int64 -- ^ 'ruProFileId'
    -> Report -- ^ 'ruPayload'
    -> ReportsUpdate
reportsUpdate pRuReportId_ pRuProFileId_ pRuPayload_ =
  ReportsUpdate'
    { _ruXgafv = Nothing
    , _ruUploadProtocol = Nothing
    , _ruAccessToken = Nothing
    , _ruReportId = _Coerce # pRuReportId_
    , _ruUploadType = Nothing
    , _ruProFileId = _Coerce # pRuProFileId_
    , _ruPayload = pRuPayload_
    , _ruCallback = Nothing
    }


-- | V1 error format.
ruXgafv :: Lens' ReportsUpdate (Maybe Xgafv)
ruXgafv = lens _ruXgafv (\ s a -> s{_ruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ruUploadProtocol :: Lens' ReportsUpdate (Maybe Text)
ruUploadProtocol
  = lens _ruUploadProtocol
      (\ s a -> s{_ruUploadProtocol = a})

-- | OAuth access token.
ruAccessToken :: Lens' ReportsUpdate (Maybe Text)
ruAccessToken
  = lens _ruAccessToken
      (\ s a -> s{_ruAccessToken = a})

-- | The ID of the report.
ruReportId :: Lens' ReportsUpdate Int64
ruReportId
  = lens _ruReportId (\ s a -> s{_ruReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ruUploadType :: Lens' ReportsUpdate (Maybe Text)
ruUploadType
  = lens _ruUploadType (\ s a -> s{_ruUploadType = a})

-- | The Campaign Manager 360 user profile ID.
ruProFileId :: Lens' ReportsUpdate Int64
ruProFileId
  = lens _ruProFileId (\ s a -> s{_ruProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
ruPayload :: Lens' ReportsUpdate Report
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | JSONP
ruCallback :: Lens' ReportsUpdate (Maybe Text)
ruCallback
  = lens _ruCallback (\ s a -> s{_ruCallback = a})

instance GoogleRequest ReportsUpdate where
        type Rs ReportsUpdate = Report
        type Scopes ReportsUpdate =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsUpdate'{..}
          = go _ruProFileId _ruReportId _ruXgafv
              _ruUploadProtocol
              _ruAccessToken
              _ruUploadType
              _ruCallback
              (Just AltJSON)
              _ruPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsUpdateResource)
                      mempty
