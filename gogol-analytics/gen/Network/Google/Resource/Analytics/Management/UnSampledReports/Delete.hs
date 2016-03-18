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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.delete@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.Delete
    (
    -- * REST Resource
      ManagementUnSampledReportsDeleteResource

    -- * Creating a Request
    , managementUnSampledReportsDelete
    , ManagementUnSampledReportsDelete

    -- * Request Lenses
    , musrdWebPropertyId
    , musrdProFileId
    , musrdAccountId
    , musrdUnSampledReportId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.unsampledReports.delete@ method which the
-- 'ManagementUnSampledReportsDelete' request conforms to.
type ManagementUnSampledReportsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an unsampled report.
--
-- /See:/ 'managementUnSampledReportsDelete' smart constructor.
data ManagementUnSampledReportsDelete = ManagementUnSampledReportsDelete
    { _musrdWebPropertyId     :: !Text
    , _musrdProFileId         :: !Text
    , _musrdAccountId         :: !Text
    , _musrdUnSampledReportId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musrdWebPropertyId'
--
-- * 'musrdProFileId'
--
-- * 'musrdAccountId'
--
-- * 'musrdUnSampledReportId'
managementUnSampledReportsDelete
    :: Text -- ^ 'musrdWebPropertyId'
    -> Text -- ^ 'musrdProFileId'
    -> Text -- ^ 'musrdAccountId'
    -> Text -- ^ 'musrdUnSampledReportId'
    -> ManagementUnSampledReportsDelete
managementUnSampledReportsDelete pMusrdWebPropertyId_ pMusrdProFileId_ pMusrdAccountId_ pMusrdUnSampledReportId_ =
    ManagementUnSampledReportsDelete
    { _musrdWebPropertyId = pMusrdWebPropertyId_
    , _musrdProFileId = pMusrdProFileId_
    , _musrdAccountId = pMusrdAccountId_
    , _musrdUnSampledReportId = pMusrdUnSampledReportId_
    }

-- | Web property ID to delete the unsampled reports for.
musrdWebPropertyId :: Lens' ManagementUnSampledReportsDelete Text
musrdWebPropertyId
  = lens _musrdWebPropertyId
      (\ s a -> s{_musrdWebPropertyId = a})

-- | View (Profile) ID to delete the unsampled report for.
musrdProFileId :: Lens' ManagementUnSampledReportsDelete Text
musrdProFileId
  = lens _musrdProFileId
      (\ s a -> s{_musrdProFileId = a})

-- | Account ID to delete the unsampled report for.
musrdAccountId :: Lens' ManagementUnSampledReportsDelete Text
musrdAccountId
  = lens _musrdAccountId
      (\ s a -> s{_musrdAccountId = a})

-- | ID of the unsampled report to be deleted.
musrdUnSampledReportId :: Lens' ManagementUnSampledReportsDelete Text
musrdUnSampledReportId
  = lens _musrdUnSampledReportId
      (\ s a -> s{_musrdUnSampledReportId = a})

instance GoogleRequest
         ManagementUnSampledReportsDelete where
        type Rs ManagementUnSampledReportsDelete = ()
        requestClient ManagementUnSampledReportsDelete{..}
          = go _musrdAccountId _musrdWebPropertyId
              _musrdProFileId
              _musrdUnSampledReportId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementUnSampledReportsDeleteResource)
                      mempty
