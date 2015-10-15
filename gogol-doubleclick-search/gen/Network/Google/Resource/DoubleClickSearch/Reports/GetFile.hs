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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.GetFile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchReportsGetFile@.
module Network.Google.Resource.DoubleClickSearch.Reports.GetFile
    (
    -- * REST Resource
      ReportsGetFileResource

    -- * Creating a Request
    , reportsGetFile'
    , ReportsGetFile'

    -- * Request Lenses
    , rgfReportId
    , rgfReportFragment
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchReportsGetFile@ method which the
-- 'ReportsGetFile'' request conforms to.
type ReportsGetFileResource =
     "reports" :>
       Capture "reportId" Text :>
         "files" :>
           Capture "reportFragment" Int32 :>
             QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "reports" :>
         Capture "reportId" Text :>
           "files" :>
             Capture "reportFragment" Int32 :>
               QueryParam "alt" AltMedia :>
                 Get '[OctetStream] Stream

-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ 'reportsGetFile'' smart constructor.
data ReportsGetFile' = ReportsGetFile'
    { _rgfReportId       :: !Text
    , _rgfReportFragment :: !Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGetFile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgfReportId'
--
-- * 'rgfReportFragment'
reportsGetFile'
    :: Text -- ^ 'reportId'
    -> Int32 -- ^ 'reportFragment'
    -> ReportsGetFile'
reportsGetFile' pRgfReportId_ pRgfReportFragment_ =
    ReportsGetFile'
    { _rgfReportId = pRgfReportId_
    , _rgfReportFragment = pRgfReportFragment_
    }

-- | ID of the report.
rgfReportId :: Lens' ReportsGetFile' Text
rgfReportId
  = lens _rgfReportId (\ s a -> s{_rgfReportId = a})

-- | The index of the report fragment to download.
rgfReportFragment :: Lens' ReportsGetFile' Int32
rgfReportFragment
  = lens _rgfReportFragment
      (\ s a -> s{_rgfReportFragment = a})

instance GoogleRequest ReportsGetFile' where
        type Rs ReportsGetFile' = ()
        requestClient ReportsGetFile'{..}
          = go _rgfReportId _rgfReportFragment (Just AltJSON)
              doubleClickSearch
          where go :<|> _
                  = buildClient (Proxy :: Proxy ReportsGetFileResource)
                      mempty

instance GoogleRequest
         (MediaDownload ReportsGetFile') where
        type Rs (MediaDownload ReportsGetFile') = Stream
        requestClient (MediaDownload ReportsGetFile'{..})
          = go _rgfReportId _rgfReportFragment (Just AltMedia)
              doubleClickSearch
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ReportsGetFileResource)
                      mempty
