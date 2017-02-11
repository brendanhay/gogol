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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Files.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.files.get@.
module Network.Google.Resource.DFAReporting.Reports.Files.Get
    (
    -- * REST Resource
      ReportsFilesGetResource

    -- * Creating a Request
    , reportsFilesGet
    , ReportsFilesGet

    -- * Request Lenses
    , rfgReportId
    , rfgProFileId
    , rfgFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.files.get@ method which the
-- 'ReportsFilesGet' request conforms to.
type ReportsFilesGetResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 "files" :>
                   Capture "fileId" (Textual Int64) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "dfareporting" :>
         "v2.7" :>
           "userprofiles" :>
             Capture "profileId" (Textual Int64) :>
               "reports" :>
                 Capture "reportId" (Textual Int64) :>
                   "files" :>
                     Capture "fileId" (Textual Int64) :>
                       QueryParam "alt" AltMedia :>
                         Get '[OctetStream] Stream

-- | Retrieves a report file.
--
-- /See:/ 'reportsFilesGet' smart constructor.
data ReportsFilesGet = ReportsFilesGet'
    { _rfgReportId  :: !(Textual Int64)
    , _rfgProFileId :: !(Textual Int64)
    , _rfgFileId    :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfgReportId'
--
-- * 'rfgProFileId'
--
-- * 'rfgFileId'
reportsFilesGet
    :: Int64 -- ^ 'rfgReportId'
    -> Int64 -- ^ 'rfgProFileId'
    -> Int64 -- ^ 'rfgFileId'
    -> ReportsFilesGet
reportsFilesGet pRfgReportId_ pRfgProFileId_ pRfgFileId_ =
    ReportsFilesGet'
    { _rfgReportId = _Coerce # pRfgReportId_
    , _rfgProFileId = _Coerce # pRfgProFileId_
    , _rfgFileId = _Coerce # pRfgFileId_
    }

-- | The ID of the report.
rfgReportId :: Lens' ReportsFilesGet Int64
rfgReportId
  = lens _rfgReportId (\ s a -> s{_rfgReportId = a}) .
      _Coerce

-- | The DFA profile ID.
rfgProFileId :: Lens' ReportsFilesGet Int64
rfgProFileId
  = lens _rfgProFileId (\ s a -> s{_rfgProFileId = a})
      . _Coerce

-- | The ID of the report file.
rfgFileId :: Lens' ReportsFilesGet Int64
rfgFileId
  = lens _rfgFileId (\ s a -> s{_rfgFileId = a}) .
      _Coerce

instance GoogleRequest ReportsFilesGet where
        type Rs ReportsFilesGet = File
        type Scopes ReportsFilesGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsFilesGet'{..}
          = go _rfgProFileId _rfgReportId _rfgFileId
              (Just AltJSON)
              dFAReportingService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ReportsFilesGetResource)
                      mempty

instance GoogleRequest
         (MediaDownload ReportsFilesGet) where
        type Rs (MediaDownload ReportsFilesGet) = Stream
        type Scopes (MediaDownload ReportsFilesGet) =
             Scopes ReportsFilesGet
        requestClient (MediaDownload ReportsFilesGet'{..})
          = go _rfgProFileId _rfgReportId _rfgFileId
              (Just AltMedia)
              dFAReportingService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ReportsFilesGetResource)
                      mempty
