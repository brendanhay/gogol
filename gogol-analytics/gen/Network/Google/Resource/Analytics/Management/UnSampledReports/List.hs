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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists unsampled reports to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.list@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.List
    (
    -- * REST Resource
      ManagementUnSampledReportsListResource

    -- * Creating a Request
    , managementUnSampledReportsList
    , ManagementUnSampledReportsList

    -- * Request Lenses
    , musrlWebPropertyId
    , musrlProFileId
    , musrlAccountId
    , musrlStartIndex
    , musrlMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.unsampledReports.list@ method which the
-- 'ManagementUnSampledReportsList' request conforms to.
type ManagementUnSampledReportsListResource =
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
                         QueryParam "start-index" Int32 :>
                           QueryParam "max-results" Int32 :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] UnSampledReports

-- | Lists unsampled reports to which the user has access.
--
-- /See:/ 'managementUnSampledReportsList' smart constructor.
data ManagementUnSampledReportsList = ManagementUnSampledReportsList
    { _musrlWebPropertyId :: !Text
    , _musrlProFileId     :: !Text
    , _musrlAccountId     :: !Text
    , _musrlStartIndex    :: !(Maybe Int32)
    , _musrlMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musrlWebPropertyId'
--
-- * 'musrlProFileId'
--
-- * 'musrlAccountId'
--
-- * 'musrlStartIndex'
--
-- * 'musrlMaxResults'
managementUnSampledReportsList
    :: Text -- ^ 'musrlWebPropertyId'
    -> Text -- ^ 'musrlProFileId'
    -> Text -- ^ 'musrlAccountId'
    -> ManagementUnSampledReportsList
managementUnSampledReportsList pMusrlWebPropertyId_ pMusrlProFileId_ pMusrlAccountId_ =
    ManagementUnSampledReportsList
    { _musrlWebPropertyId = pMusrlWebPropertyId_
    , _musrlProFileId = pMusrlProFileId_
    , _musrlAccountId = pMusrlAccountId_
    , _musrlStartIndex = Nothing
    , _musrlMaxResults = Nothing
    }

-- | Web property ID to retrieve unsampled reports for. Must be a specific
-- web property ID, ~all is not supported.
musrlWebPropertyId :: Lens' ManagementUnSampledReportsList Text
musrlWebPropertyId
  = lens _musrlWebPropertyId
      (\ s a -> s{_musrlWebPropertyId = a})

-- | View (Profile) ID to retrieve unsampled reports for. Must be a specific
-- view (profile) ID, ~all is not supported.
musrlProFileId :: Lens' ManagementUnSampledReportsList Text
musrlProFileId
  = lens _musrlProFileId
      (\ s a -> s{_musrlProFileId = a})

-- | Account ID to retrieve unsampled reports for. Must be a specific account
-- ID, ~all is not supported.
musrlAccountId :: Lens' ManagementUnSampledReportsList Text
musrlAccountId
  = lens _musrlAccountId
      (\ s a -> s{_musrlAccountId = a})

-- | An index of the first unsampled report to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
musrlStartIndex :: Lens' ManagementUnSampledReportsList (Maybe Int32)
musrlStartIndex
  = lens _musrlStartIndex
      (\ s a -> s{_musrlStartIndex = a})

-- | The maximum number of unsampled reports to include in this response.
musrlMaxResults :: Lens' ManagementUnSampledReportsList (Maybe Int32)
musrlMaxResults
  = lens _musrlMaxResults
      (\ s a -> s{_musrlMaxResults = a})

instance GoogleRequest ManagementUnSampledReportsList
         where
        type Rs ManagementUnSampledReportsList =
             UnSampledReports
        requestClient ManagementUnSampledReportsList{..}
          = go _musrlAccountId _musrlWebPropertyId
              _musrlProFileId
              _musrlStartIndex
              _musrlMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementUnSampledReportsListResource)
                      mempty
