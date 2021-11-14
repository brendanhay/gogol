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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing report. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.patch@.
module Network.Google.Resource.DFAReporting.Reports.Patch
    (
    -- * REST Resource
      ReportsPatchResource

    -- * Creating a Request
    , reportsPatch
    , ReportsPatch

    -- * Request Lenses
    , rpXgafv
    , rpUploadProtocol
    , rpAccessToken
    , rpReportId
    , rpUploadType
    , rpProFileId
    , rpPayload
    , rpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.patch@ method which the
-- 'ReportsPatch' request conforms to.
type ReportsPatchResource =
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
                             ReqBody '[JSON] Report :> Patch '[JSON] Report

-- | Updates an existing report. This method supports patch semantics.
--
-- /See:/ 'reportsPatch' smart constructor.
data ReportsPatch =
  ReportsPatch'
    { _rpXgafv :: !(Maybe Xgafv)
    , _rpUploadProtocol :: !(Maybe Text)
    , _rpAccessToken :: !(Maybe Text)
    , _rpReportId :: !(Textual Int64)
    , _rpUploadType :: !(Maybe Text)
    , _rpProFileId :: !(Textual Int64)
    , _rpPayload :: !Report
    , _rpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpXgafv'
--
-- * 'rpUploadProtocol'
--
-- * 'rpAccessToken'
--
-- * 'rpReportId'
--
-- * 'rpUploadType'
--
-- * 'rpProFileId'
--
-- * 'rpPayload'
--
-- * 'rpCallback'
reportsPatch
    :: Int64 -- ^ 'rpReportId'
    -> Int64 -- ^ 'rpProFileId'
    -> Report -- ^ 'rpPayload'
    -> ReportsPatch
reportsPatch pRpReportId_ pRpProFileId_ pRpPayload_ =
  ReportsPatch'
    { _rpXgafv = Nothing
    , _rpUploadProtocol = Nothing
    , _rpAccessToken = Nothing
    , _rpReportId = _Coerce # pRpReportId_
    , _rpUploadType = Nothing
    , _rpProFileId = _Coerce # pRpProFileId_
    , _rpPayload = pRpPayload_
    , _rpCallback = Nothing
    }


-- | V1 error format.
rpXgafv :: Lens' ReportsPatch (Maybe Xgafv)
rpXgafv = lens _rpXgafv (\ s a -> s{_rpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rpUploadProtocol :: Lens' ReportsPatch (Maybe Text)
rpUploadProtocol
  = lens _rpUploadProtocol
      (\ s a -> s{_rpUploadProtocol = a})

-- | OAuth access token.
rpAccessToken :: Lens' ReportsPatch (Maybe Text)
rpAccessToken
  = lens _rpAccessToken
      (\ s a -> s{_rpAccessToken = a})

-- | The ID of the report.
rpReportId :: Lens' ReportsPatch Int64
rpReportId
  = lens _rpReportId (\ s a -> s{_rpReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rpUploadType :: Lens' ReportsPatch (Maybe Text)
rpUploadType
  = lens _rpUploadType (\ s a -> s{_rpUploadType = a})

-- | The DFA user profile ID.
rpProFileId :: Lens' ReportsPatch Int64
rpProFileId
  = lens _rpProFileId (\ s a -> s{_rpProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
rpPayload :: Lens' ReportsPatch Report
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | JSONP
rpCallback :: Lens' ReportsPatch (Maybe Text)
rpCallback
  = lens _rpCallback (\ s a -> s{_rpCallback = a})

instance GoogleRequest ReportsPatch where
        type Rs ReportsPatch = Report
        type Scopes ReportsPatch =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsPatch'{..}
          = go _rpProFileId _rpReportId _rpXgafv
              _rpUploadProtocol
              _rpAccessToken
              _rpUploadType
              _rpCallback
              (Just AltJSON)
              _rpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsPatchResource)
                      mempty
