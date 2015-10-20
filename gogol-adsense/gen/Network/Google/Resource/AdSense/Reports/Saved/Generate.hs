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
-- Module      : Network.Google.Resource.AdSense.Reports.Saved.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.reports.saved.generate@.
module Network.Google.Resource.AdSense.Reports.Saved.Generate
    (
    -- * REST Resource
      ReportsSavedGenerateResource

    -- * Creating a Request
    , reportsSavedGenerate
    , ReportsSavedGenerate

    -- * Request Lenses
    , rsgLocale
    , rsgSavedReportId
    , rsgStartIndex
    , rsgMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.reports.saved.generate@ method which the
-- 'ReportsSavedGenerate' request conforms to.
type ReportsSavedGenerateResource =
     "reports" :>
       Capture "savedReportId" Text :>
         QueryParam "locale" Text :>
           QueryParam "startIndex" Int32 :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] AdsenseReportsGenerateResponse

-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ 'reportsSavedGenerate' smart constructor.
data ReportsSavedGenerate = ReportsSavedGenerate
    { _rsgLocale        :: !(Maybe Text)
    , _rsgSavedReportId :: !Text
    , _rsgStartIndex    :: !(Maybe Int32)
    , _rsgMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsSavedGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsgLocale'
--
-- * 'rsgSavedReportId'
--
-- * 'rsgStartIndex'
--
-- * 'rsgMaxResults'
reportsSavedGenerate
    :: Text -- ^ 'rsgSavedReportId'
    -> ReportsSavedGenerate
reportsSavedGenerate pRsgSavedReportId_ =
    ReportsSavedGenerate
    { _rsgLocale = Nothing
    , _rsgSavedReportId = pRsgSavedReportId_
    , _rsgStartIndex = Nothing
    , _rsgMaxResults = Nothing
    }

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
rsgLocale :: Lens' ReportsSavedGenerate (Maybe Text)
rsgLocale
  = lens _rsgLocale (\ s a -> s{_rsgLocale = a})

-- | The saved report to retrieve.
rsgSavedReportId :: Lens' ReportsSavedGenerate Text
rsgSavedReportId
  = lens _rsgSavedReportId
      (\ s a -> s{_rsgSavedReportId = a})

-- | Index of the first row of report data to return.
rsgStartIndex :: Lens' ReportsSavedGenerate (Maybe Int32)
rsgStartIndex
  = lens _rsgStartIndex
      (\ s a -> s{_rsgStartIndex = a})

-- | The maximum number of rows of report data to return.
rsgMaxResults :: Lens' ReportsSavedGenerate (Maybe Int32)
rsgMaxResults
  = lens _rsgMaxResults
      (\ s a -> s{_rsgMaxResults = a})

instance GoogleRequest ReportsSavedGenerate where
        type Rs ReportsSavedGenerate =
             AdsenseReportsGenerateResponse
        requestClient ReportsSavedGenerate{..}
          = go _rsgSavedReportId _rsgLocale _rsgStartIndex
              _rsgMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsSavedGenerateResource)
                      mempty
