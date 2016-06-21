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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.get@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.Get
    (
    -- * REST Resource
      ManagementUnSampledReportsGetResource

    -- * Creating a Request
    , managementUnSampledReportsGet
    , ManagementUnSampledReportsGet

    -- * Request Lenses
    , musrgWebPropertyId
    , musrgProFileId
    , musrgAccountId
    , musrgUnSampledReportId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.unsampledReports.get@ method which the
-- 'ManagementUnSampledReportsGet' request conforms to.
type ManagementUnSampledReportsGetResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "unsampledReports" :>
                         Capture "unsampledReportId" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UnSampledReport

-- | Returns a single unsampled report.
--
-- /See:/ 'managementUnSampledReportsGet' smart constructor.
data ManagementUnSampledReportsGet = ManagementUnSampledReportsGet'
    { _musrgWebPropertyId     :: !Text
    , _musrgProFileId         :: !Text
    , _musrgAccountId         :: !Text
    , _musrgUnSampledReportId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musrgWebPropertyId'
--
-- * 'musrgProFileId'
--
-- * 'musrgAccountId'
--
-- * 'musrgUnSampledReportId'
managementUnSampledReportsGet
    :: Text -- ^ 'musrgWebPropertyId'
    -> Text -- ^ 'musrgProFileId'
    -> Text -- ^ 'musrgAccountId'
    -> Text -- ^ 'musrgUnSampledReportId'
    -> ManagementUnSampledReportsGet
managementUnSampledReportsGet pMusrgWebPropertyId_ pMusrgProFileId_ pMusrgAccountId_ pMusrgUnSampledReportId_ =
    ManagementUnSampledReportsGet'
    { _musrgWebPropertyId = pMusrgWebPropertyId_
    , _musrgProFileId = pMusrgProFileId_
    , _musrgAccountId = pMusrgAccountId_
    , _musrgUnSampledReportId = pMusrgUnSampledReportId_
    }

-- | Web property ID to retrieve unsampled reports for.
musrgWebPropertyId :: Lens' ManagementUnSampledReportsGet Text
musrgWebPropertyId
  = lens _musrgWebPropertyId
      (\ s a -> s{_musrgWebPropertyId = a})

-- | View (Profile) ID to retrieve unsampled report for.
musrgProFileId :: Lens' ManagementUnSampledReportsGet Text
musrgProFileId
  = lens _musrgProFileId
      (\ s a -> s{_musrgProFileId = a})

-- | Account ID to retrieve unsampled report for.
musrgAccountId :: Lens' ManagementUnSampledReportsGet Text
musrgAccountId
  = lens _musrgAccountId
      (\ s a -> s{_musrgAccountId = a})

-- | ID of the unsampled report to retrieve.
musrgUnSampledReportId :: Lens' ManagementUnSampledReportsGet Text
musrgUnSampledReportId
  = lens _musrgUnSampledReportId
      (\ s a -> s{_musrgUnSampledReportId = a})

instance GoogleRequest ManagementUnSampledReportsGet
         where
        type Rs ManagementUnSampledReportsGet =
             UnSampledReport
        type Scopes ManagementUnSampledReportsGet =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementUnSampledReportsGet'{..}
          = go _musrgAccountId _musrgWebPropertyId
              _musrgProFileId
              _musrgUnSampledReportId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementUnSampledReportsGetResource)
                      mempty
