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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.get@.
module Network.Google.Resource.DFAReporting.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet
    , ReportsGet

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgAccessToken
    , rgReportId
    , rgUploadType
    , rgProFileId
    , rgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.get@ method which the
-- 'ReportsGet' request conforms to.
type ReportsGetResource =
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
                           QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Retrieves a report by its ID.
--
-- /See:/ 'reportsGet' smart constructor.
data ReportsGet =
  ReportsGet'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgAccessToken :: !(Maybe Text)
    , _rgReportId :: !(Textual Int64)
    , _rgUploadType :: !(Maybe Text)
    , _rgProFileId :: !(Textual Int64)
    , _rgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgAccessToken'
--
-- * 'rgReportId'
--
-- * 'rgUploadType'
--
-- * 'rgProFileId'
--
-- * 'rgCallback'
reportsGet
    :: Int64 -- ^ 'rgReportId'
    -> Int64 -- ^ 'rgProFileId'
    -> ReportsGet
reportsGet pRgReportId_ pRgProFileId_ =
  ReportsGet'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgAccessToken = Nothing
    , _rgReportId = _Coerce # pRgReportId_
    , _rgUploadType = Nothing
    , _rgProFileId = _Coerce # pRgProFileId_
    , _rgCallback = Nothing
    }


-- | V1 error format.
rgXgafv :: Lens' ReportsGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReportsGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReportsGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | The ID of the report.
rgReportId :: Lens' ReportsGet Int64
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReportsGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rgProFileId :: Lens' ReportsGet Int64
rgProFileId
  = lens _rgProFileId (\ s a -> s{_rgProFileId = a}) .
      _Coerce

-- | JSONP
rgCallback :: Lens' ReportsGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ReportsGet where
        type Rs ReportsGet = Report
        type Scopes ReportsGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsGet'{..}
          = go _rgProFileId _rgReportId _rgXgafv
              _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsGetResource)
                      mempty
