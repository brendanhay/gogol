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
-- Module      : Network.Google.Resource.GAN.Reports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report of the specified type.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.reports.get@.
module Network.Google.Resource.GAN.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet'
    , ReportsGet'

    -- * Request Lenses
    , rgStatus
    , rgAdvertiserId
    , rgEndDate
    , rgRoleId
    , rgRole
    , rgEventType
    , rgStartDate
    , rgCalculateTotals
    , rgLinkId
    , rgOrderId
    , rgPublisherId
    , rgReportType
    , rgStartIndex
    , rgMaxResults
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.reports.get@ method which the
-- 'ReportsGet'' request conforms to.
type ReportsGetResource =
     Capture "role" ReportsGetRole :>
       Capture "roleId" Text :>
         "report" :>
           Capture "reportType" ReportsGetReportType :>
             QueryParam "status" ReportsGetStatus :>
               QueryParams "advertiserId" Text :>
                 QueryParam "endDate" Text :>
                   QueryParam "eventType" ReportsGetEventType :>
                     QueryParam "startDate" Text :>
                       QueryParam "calculateTotals" Bool :>
                         QueryParams "linkId" Text :>
                           QueryParams "orderId" Text :>
                             QueryParams "publisherId" Text :>
                               QueryParam "startIndex" Word32 :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Report

-- | Retrieves a report of the specified type.
--
-- /See:/ 'reportsGet'' smart constructor.
data ReportsGet' = ReportsGet'
    { _rgStatus          :: !(Maybe ReportsGetStatus)
    , _rgAdvertiserId    :: !(Maybe [Text])
    , _rgEndDate         :: !(Maybe Text)
    , _rgRoleId          :: !Text
    , _rgRole            :: !ReportsGetRole
    , _rgEventType       :: !(Maybe ReportsGetEventType)
    , _rgStartDate       :: !(Maybe Text)
    , _rgCalculateTotals :: !(Maybe Bool)
    , _rgLinkId          :: !(Maybe [Text])
    , _rgOrderId         :: !(Maybe [Text])
    , _rgPublisherId     :: !(Maybe [Text])
    , _rgReportType      :: !ReportsGetReportType
    , _rgStartIndex      :: !(Maybe Word32)
    , _rgMaxResults      :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgStatus'
--
-- * 'rgAdvertiserId'
--
-- * 'rgEndDate'
--
-- * 'rgRoleId'
--
-- * 'rgRole'
--
-- * 'rgEventType'
--
-- * 'rgStartDate'
--
-- * 'rgCalculateTotals'
--
-- * 'rgLinkId'
--
-- * 'rgOrderId'
--
-- * 'rgPublisherId'
--
-- * 'rgReportType'
--
-- * 'rgStartIndex'
--
-- * 'rgMaxResults'
reportsGet'
    :: Text -- ^ 'rgRoleId'
    -> ReportsGetRole -- ^ 'rgRole'
    -> ReportsGetReportType -- ^ 'rgReportType'
    -> ReportsGet'
reportsGet' pRgRoleId_ pRgRole_ pRgReportType_ =
    ReportsGet'
    { _rgStatus = Nothing
    , _rgAdvertiserId = Nothing
    , _rgEndDate = Nothing
    , _rgRoleId = pRgRoleId_
    , _rgRole = pRgRole_
    , _rgEventType = Nothing
    , _rgStartDate = Nothing
    , _rgCalculateTotals = Nothing
    , _rgLinkId = Nothing
    , _rgOrderId = Nothing
    , _rgPublisherId = Nothing
    , _rgReportType = pRgReportType_
    , _rgStartIndex = Nothing
    , _rgMaxResults = Nothing
    }

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
rgStatus :: Lens' ReportsGet' (Maybe ReportsGetStatus)
rgStatus = lens _rgStatus (\ s a -> s{_rgStatus = a})

-- | The IDs of the advertisers to look up, if applicable.
rgAdvertiserId :: Lens' ReportsGet' [Text]
rgAdvertiserId
  = lens _rgAdvertiserId
      (\ s a -> s{_rgAdvertiserId = a})
      . _Default
      . _Coerce

-- | The end date (exclusive), in RFC 3339 format, for the report data to be
-- returned. Defaults to one day after startDate, if that is given, or
-- today. Optional.
rgEndDate :: Lens' ReportsGet' (Maybe Text)
rgEndDate
  = lens _rgEndDate (\ s a -> s{_rgEndDate = a})

-- | The ID of the requesting advertiser or publisher.
rgRoleId :: Lens' ReportsGet' Text
rgRoleId = lens _rgRoleId (\ s a -> s{_rgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
rgRole :: Lens' ReportsGet' ReportsGetRole
rgRole = lens _rgRole (\ s a -> s{_rgRole = a})

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
rgEventType :: Lens' ReportsGet' (Maybe ReportsGetEventType)
rgEventType
  = lens _rgEventType (\ s a -> s{_rgEventType = a})

-- | The start date (inclusive), in RFC 3339 format, for the report data to
-- be returned. Defaults to one day before endDate, if that is given, or
-- yesterday. Optional.
rgStartDate :: Lens' ReportsGet' (Maybe Text)
rgStartDate
  = lens _rgStartDate (\ s a -> s{_rgStartDate = a})

-- | Whether or not to calculate totals rows. Optional.
rgCalculateTotals :: Lens' ReportsGet' (Maybe Bool)
rgCalculateTotals
  = lens _rgCalculateTotals
      (\ s a -> s{_rgCalculateTotals = a})

-- | Filters to capture one of given link IDs. Optional.
rgLinkId :: Lens' ReportsGet' [Text]
rgLinkId
  = lens _rgLinkId (\ s a -> s{_rgLinkId = a}) .
      _Default
      . _Coerce

-- | Filters to capture one of the given order IDs. Optional.
rgOrderId :: Lens' ReportsGet' [Text]
rgOrderId
  = lens _rgOrderId (\ s a -> s{_rgOrderId = a}) .
      _Default
      . _Coerce

-- | The IDs of the publishers to look up, if applicable.
rgPublisherId :: Lens' ReportsGet' [Text]
rgPublisherId
  = lens _rgPublisherId
      (\ s a -> s{_rgPublisherId = a})
      . _Default
      . _Coerce

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
rgReportType :: Lens' ReportsGet' ReportsGetReportType
rgReportType
  = lens _rgReportType (\ s a -> s{_rgReportType = a})

-- | Offset on which to return results when paging. Optional.
rgStartIndex :: Lens' ReportsGet' (Maybe Word32)
rgStartIndex
  = lens _rgStartIndex (\ s a -> s{_rgStartIndex = a})

-- | Max number of items to return in this page. Optional. Defaults to return
-- all results.
rgMaxResults :: Lens' ReportsGet' (Maybe Word32)
rgMaxResults
  = lens _rgMaxResults (\ s a -> s{_rgMaxResults = a})

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        requestClient ReportsGet'{..}
          = go _rgRole _rgRoleId _rgReportType _rgStatus
              (_rgAdvertiserId ^. _Default)
              _rgEndDate
              _rgEventType
              _rgStartDate
              _rgCalculateTotals
              (_rgLinkId ^. _Default)
              (_rgOrderId ^. _Default)
              (_rgPublisherId ^. _Default)
              _rgStartIndex
              _rgMaxResults
              (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy ReportsGetResource)
                      mempty
