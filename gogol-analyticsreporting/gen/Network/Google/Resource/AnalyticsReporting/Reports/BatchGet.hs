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
-- Module      : Network.Google.Resource.AnalyticsReporting.Reports.BatchGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Analytics data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/core/v4/ Analytics Reporting API Reference> for @analyticsreporting.reports.batchGet@.
module Network.Google.Resource.AnalyticsReporting.Reports.BatchGet
    (
    -- * REST Resource
      ReportsBatchGetResource

    -- * Creating a Request
    , reportsBatchGet
    , ReportsBatchGet

    -- * Request Lenses
    , rbgXgafv
    , rbgUploadProtocol
    , rbgAccessToken
    , rbgUploadType
    , rbgPayload
    , rbgCallback
    ) where

import           Network.Google.AnalyticsReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @analyticsreporting.reports.batchGet@ method which the
-- 'ReportsBatchGet' request conforms to.
type ReportsBatchGetResource =
     "v4" :>
       "reports:batchGet" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetReportsRequest :>
                       Post '[JSON] GetReportsResponse

-- | Returns the Analytics data.
--
-- /See:/ 'reportsBatchGet' smart constructor.
data ReportsBatchGet =
  ReportsBatchGet'
    { _rbgXgafv          :: !(Maybe Xgafv)
    , _rbgUploadProtocol :: !(Maybe Text)
    , _rbgAccessToken    :: !(Maybe Text)
    , _rbgUploadType     :: !(Maybe Text)
    , _rbgPayload        :: !GetReportsRequest
    , _rbgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportsBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbgXgafv'
--
-- * 'rbgUploadProtocol'
--
-- * 'rbgAccessToken'
--
-- * 'rbgUploadType'
--
-- * 'rbgPayload'
--
-- * 'rbgCallback'
reportsBatchGet
    :: GetReportsRequest -- ^ 'rbgPayload'
    -> ReportsBatchGet
reportsBatchGet pRbgPayload_ =
  ReportsBatchGet'
    { _rbgXgafv = Nothing
    , _rbgUploadProtocol = Nothing
    , _rbgAccessToken = Nothing
    , _rbgUploadType = Nothing
    , _rbgPayload = pRbgPayload_
    , _rbgCallback = Nothing
    }

-- | V1 error format.
rbgXgafv :: Lens' ReportsBatchGet (Maybe Xgafv)
rbgXgafv = lens _rbgXgafv (\ s a -> s{_rbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbgUploadProtocol :: Lens' ReportsBatchGet (Maybe Text)
rbgUploadProtocol
  = lens _rbgUploadProtocol
      (\ s a -> s{_rbgUploadProtocol = a})

-- | OAuth access token.
rbgAccessToken :: Lens' ReportsBatchGet (Maybe Text)
rbgAccessToken
  = lens _rbgAccessToken
      (\ s a -> s{_rbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbgUploadType :: Lens' ReportsBatchGet (Maybe Text)
rbgUploadType
  = lens _rbgUploadType
      (\ s a -> s{_rbgUploadType = a})

-- | Multipart request metadata.
rbgPayload :: Lens' ReportsBatchGet GetReportsRequest
rbgPayload
  = lens _rbgPayload (\ s a -> s{_rbgPayload = a})

-- | JSONP
rbgCallback :: Lens' ReportsBatchGet (Maybe Text)
rbgCallback
  = lens _rbgCallback (\ s a -> s{_rbgCallback = a})

instance GoogleRequest ReportsBatchGet where
        type Rs ReportsBatchGet = GetReportsResponse
        type Scopes ReportsBatchGet =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ReportsBatchGet'{..}
          = go _rbgXgafv _rbgUploadProtocol _rbgAccessToken
              _rbgUploadType
              _rbgCallback
              (Just AltJSON)
              _rbgPayload
              analyticsReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsBatchGetResource)
                      mempty
