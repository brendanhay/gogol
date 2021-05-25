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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Generate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates and returns a report immediately.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.generate@.
module Network.Google.Resource.DoubleClickSearch.Reports.Generate
    (
    -- * REST Resource
      ReportsGenerateResource

    -- * Creating a Request
    , reportsGenerate
    , ReportsGenerate

    -- * Request Lenses
    , rXgafv
    , rUploadProtocol
    , rAccessToken
    , rUploadType
    , rPayload
    , rCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.reports.generate@ method which the
-- 'ReportsGenerate' request conforms to.
type ReportsGenerateResource =
     "doubleclicksearch" :>
       "v2" :>
         "reports" :>
           "generate" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReportRequest :> Post '[JSON] Report

-- | Generates and returns a report immediately.
--
-- /See:/ 'reportsGenerate' smart constructor.
data ReportsGenerate =
  ReportsGenerate'
    { _rXgafv :: !(Maybe Xgafv)
    , _rUploadProtocol :: !(Maybe Text)
    , _rAccessToken :: !(Maybe Text)
    , _rUploadType :: !(Maybe Text)
    , _rPayload :: !ReportRequest
    , _rCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rXgafv'
--
-- * 'rUploadProtocol'
--
-- * 'rAccessToken'
--
-- * 'rUploadType'
--
-- * 'rPayload'
--
-- * 'rCallback'
reportsGenerate
    :: ReportRequest -- ^ 'rPayload'
    -> ReportsGenerate
reportsGenerate pRPayload_ =
  ReportsGenerate'
    { _rXgafv = Nothing
    , _rUploadProtocol = Nothing
    , _rAccessToken = Nothing
    , _rUploadType = Nothing
    , _rPayload = pRPayload_
    , _rCallback = Nothing
    }


-- | V1 error format.
rXgafv :: Lens' ReportsGenerate (Maybe Xgafv)
rXgafv = lens _rXgafv (\ s a -> s{_rXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rUploadProtocol :: Lens' ReportsGenerate (Maybe Text)
rUploadProtocol
  = lens _rUploadProtocol
      (\ s a -> s{_rUploadProtocol = a})

-- | OAuth access token.
rAccessToken :: Lens' ReportsGenerate (Maybe Text)
rAccessToken
  = lens _rAccessToken (\ s a -> s{_rAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rUploadType :: Lens' ReportsGenerate (Maybe Text)
rUploadType
  = lens _rUploadType (\ s a -> s{_rUploadType = a})

-- | Multipart request metadata.
rPayload :: Lens' ReportsGenerate ReportRequest
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

-- | JSONP
rCallback :: Lens' ReportsGenerate (Maybe Text)
rCallback
  = lens _rCallback (\ s a -> s{_rCallback = a})

instance GoogleRequest ReportsGenerate where
        type Rs ReportsGenerate = Report
        type Scopes ReportsGenerate =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ReportsGenerate'{..}
          = go _rXgafv _rUploadProtocol _rAccessToken
              _rUploadType
              _rCallback
              (Just AltJSON)
              _rPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsGenerateResource)
                      mempty
