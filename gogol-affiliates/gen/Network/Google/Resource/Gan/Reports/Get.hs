{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gan.Reports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report of the specified type.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanReportsGet@.
module Network.Google.Resource.Gan.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet'
    , ReportsGet'

    -- * Request Lenses
    , rgStatus
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIP
    , rgAdvertiserId
    , rgEndDate
    , rgRoleId
    , rgRole
    , rgEventType
    , rgStartDate
    , rgKey
    , rgCalculateTotals
    , rgLinkId
    , rgOAuthToken
    , rgOrderId
    , rgPublisherId
    , rgReportType
    , rgStartIndex
    , rgMaxResults
    , rgFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanReportsGet@ which the
-- 'ReportsGet'' request conforms to.
type ReportsGetResource =
     Capture "role" GanReportsGetRole :>
       Capture "roleId" Text :>
         "report" :>
           Capture "reportType" GanReportsGetReportType :>
             QueryParams "advertiserId" Text :>
               QueryParam "calculateTotals" Bool :>
                 QueryParam "endDate" Text :>
                   QueryParam "eventType" GanReportsGetEventType :>
                     QueryParams "linkId" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParams "orderId" Text :>
                           QueryParams "publisherId" Text :>
                             QueryParam "startDate" Text :>
                               QueryParam "startIndex" Word32 :>
                                 QueryParam "status" GanReportsGetStatus :>
                                   QueryParam "quotaUser" Text :>
                                     QueryParam "prettyPrint" Bool :>
                                       QueryParam "userIp" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "key" Key :>
                                             QueryParam "oauth_token" OAuthToken
                                               :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] Report

-- | Retrieves a report of the specified type.
--
-- /See:/ 'reportsGet'' smart constructor.
data ReportsGet' = ReportsGet'
    { _rgStatus          :: !(Maybe GanReportsGetStatus)
    , _rgQuotaUser       :: !(Maybe Text)
    , _rgPrettyPrint     :: !Bool
    , _rgUserIP          :: !(Maybe Text)
    , _rgAdvertiserId    :: !(Maybe Text)
    , _rgEndDate         :: !(Maybe Text)
    , _rgRoleId          :: !Text
    , _rgRole            :: !GanReportsGetRole
    , _rgEventType       :: !(Maybe GanReportsGetEventType)
    , _rgStartDate       :: !(Maybe Text)
    , _rgKey             :: !(Maybe Key)
    , _rgCalculateTotals :: !(Maybe Bool)
    , _rgLinkId          :: !(Maybe Text)
    , _rgOAuthToken      :: !(Maybe OAuthToken)
    , _rgOrderId         :: !(Maybe Text)
    , _rgPublisherId     :: !(Maybe Text)
    , _rgReportType      :: !GanReportsGetReportType
    , _rgStartIndex      :: !(Maybe Word32)
    , _rgMaxResults      :: !(Maybe Word32)
    , _rgFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgStatus'
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
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
-- * 'rgKey'
--
-- * 'rgCalculateTotals'
--
-- * 'rgLinkId'
--
-- * 'rgOAuthToken'
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
--
-- * 'rgFields'
reportsGet'
    :: Text -- ^ 'roleId'
    -> GanReportsGetRole -- ^ 'role'
    -> GanReportsGetReportType -- ^ 'reportType'
    -> ReportsGet'
reportsGet' pRgRoleId_ pRgRole_ pRgReportType_ =
    ReportsGet'
    { _rgStatus = Nothing
    , _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgAdvertiserId = Nothing
    , _rgEndDate = Nothing
    , _rgRoleId = pRgRoleId_
    , _rgRole = pRgRole_
    , _rgEventType = Nothing
    , _rgStartDate = Nothing
    , _rgKey = Nothing
    , _rgCalculateTotals = Nothing
    , _rgLinkId = Nothing
    , _rgOAuthToken = Nothing
    , _rgOrderId = Nothing
    , _rgPublisherId = Nothing
    , _rgReportType = pRgReportType_
    , _rgStartIndex = Nothing
    , _rgMaxResults = Nothing
    , _rgFields = Nothing
    }

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
rgStatus :: Lens' ReportsGet' (Maybe GanReportsGetStatus)
rgStatus = lens _rgStatus (\ s a -> s{_rgStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReportsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReportsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' ReportsGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | The IDs of the advertisers to look up, if applicable.
rgAdvertiserId :: Lens' ReportsGet' (Maybe Text)
rgAdvertiserId
  = lens _rgAdvertiserId
      (\ s a -> s{_rgAdvertiserId = a})

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
rgRole :: Lens' ReportsGet' GanReportsGetRole
rgRole = lens _rgRole (\ s a -> s{_rgRole = a})

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
rgEventType :: Lens' ReportsGet' (Maybe GanReportsGetEventType)
rgEventType
  = lens _rgEventType (\ s a -> s{_rgEventType = a})

-- | The start date (inclusive), in RFC 3339 format, for the report data to
-- be returned. Defaults to one day before endDate, if that is given, or
-- yesterday. Optional.
rgStartDate :: Lens' ReportsGet' (Maybe Text)
rgStartDate
  = lens _rgStartDate (\ s a -> s{_rgStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReportsGet' (Maybe Key)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | Whether or not to calculate totals rows. Optional.
rgCalculateTotals :: Lens' ReportsGet' (Maybe Bool)
rgCalculateTotals
  = lens _rgCalculateTotals
      (\ s a -> s{_rgCalculateTotals = a})

-- | Filters to capture one of given link IDs. Optional.
rgLinkId :: Lens' ReportsGet' (Maybe Text)
rgLinkId = lens _rgLinkId (\ s a -> s{_rgLinkId = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ReportsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Filters to capture one of the given order IDs. Optional.
rgOrderId :: Lens' ReportsGet' (Maybe Text)
rgOrderId
  = lens _rgOrderId (\ s a -> s{_rgOrderId = a})

-- | The IDs of the publishers to look up, if applicable.
rgPublisherId :: Lens' ReportsGet' (Maybe Text)
rgPublisherId
  = lens _rgPublisherId
      (\ s a -> s{_rgPublisherId = a})

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
rgReportType :: Lens' ReportsGet' GanReportsGetReportType
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

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReportsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth ReportsGet' where
        authKey = rgKey . _Just
        authToken = rgOAuthToken . _Just

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u ReportsGet'{..}
          = go _rgAdvertiserId _rgCalculateTotals _rgEndDate
              _rgEventType
              _rgLinkId
              _rgMaxResults
              _rgOrderId
              _rgPublisherId
              _rgStartDate
              _rgStartIndex
              _rgStatus
              _rgRole
              _rgRoleId
              _rgReportType
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsGetResource)
                      r
                      u
