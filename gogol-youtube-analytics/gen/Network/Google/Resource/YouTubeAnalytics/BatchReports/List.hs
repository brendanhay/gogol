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
-- Module      : Network.Google.Resource.YouTubeAnalytics.BatchReports.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of processed batch reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.batchReports.list@.
module Network.Google.Resource.YouTubeAnalytics.BatchReports.List
    (
    -- * REST Resource
      BatchReportsListResource

    -- * Creating a Request
    , batchReportsList
    , BatchReportsList

    -- * Request Lenses
    , brlBatchReportDefinitionId
    , brlOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.batchReports.list@ method which the
-- 'BatchReportsList' request conforms to.
type BatchReportsListResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "batchReports" :>
             QueryParam "batchReportDefinitionId" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] BatchReportList

-- | Retrieves a list of processed batch reports.
--
-- /See:/ 'batchReportsList' smart constructor.
data BatchReportsList = BatchReportsList'
    { _brlBatchReportDefinitionId :: !Text
    , _brlOnBehalfOfContentOwner  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlBatchReportDefinitionId'
--
-- * 'brlOnBehalfOfContentOwner'
batchReportsList
    :: Text -- ^ 'brlBatchReportDefinitionId'
    -> Text -- ^ 'brlOnBehalfOfContentOwner'
    -> BatchReportsList
batchReportsList pBrlBatchReportDefinitionId_ pBrlOnBehalfOfContentOwner_ =
    BatchReportsList'
    { _brlBatchReportDefinitionId = pBrlBatchReportDefinitionId_
    , _brlOnBehalfOfContentOwner = pBrlOnBehalfOfContentOwner_
    }

-- | The batchReportDefinitionId parameter specifies the ID of the batch
-- reportort definition for which you are retrieving reports.
brlBatchReportDefinitionId :: Lens' BatchReportsList Text
brlBatchReportDefinitionId
  = lens _brlBatchReportDefinitionId
      (\ s a -> s{_brlBatchReportDefinitionId = a})

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brlOnBehalfOfContentOwner :: Lens' BatchReportsList Text
brlOnBehalfOfContentOwner
  = lens _brlOnBehalfOfContentOwner
      (\ s a -> s{_brlOnBehalfOfContentOwner = a})

instance GoogleRequest BatchReportsList where
        type Rs BatchReportsList = BatchReportList
        type Scopes BatchReportsList =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient BatchReportsList'{..}
          = go (Just _brlBatchReportDefinitionId)
              (Just _brlOnBehalfOfContentOwner)
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy BatchReportsListResource)
                      mempty
