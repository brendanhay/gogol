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
-- Module      : Network.Google.Resource.Reports.Activities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of activities for a specific customer\'s account and
-- application such as the Admin console application or the Google Drive
-- application. For more information, see the guides for administrator and
-- Google Drive activity reports. For more information about the activity
-- report\'s parameters, see the activity parameters reference guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.activities.list@.
module Network.Google.Resource.Reports.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList
    , ActivitiesList

    -- * Request Lenses
    , alXgafv
    , alGroupIdFilter
    , alUploadProtocol
    , alStartTime
    , alAccessToken
    , alFilters
    , alUploadType
    , alCustomerId
    , alActorIPAddress
    , alEndTime
    , alApplicationName
    , alPageToken
    , alEventName
    , alUserKey
    , alMaxResults
    , alOrgUnitId
    , alCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @reports.activities.list@ method which the
-- 'ActivitiesList' request conforms to.
type ActivitiesListResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "activity" :>
             "users" :>
               Capture "userKey" Text :>
                 "applications" :>
                   Capture "applicationName"
                     ActivitiesListApplicationName
                     :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "groupIdFilter" Text :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "startTime" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "filters" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParam "customerId" Text :>
                                     QueryParam "actorIpAddress" Text :>
                                       QueryParam "endTime" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "eventName" Text :>
                                             QueryParam "maxResults"
                                               (Textual Int32)
                                               :>
                                               QueryParam "orgUnitID" Text :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON] Activities

-- | Retrieves a list of activities for a specific customer\'s account and
-- application such as the Admin console application or the Google Drive
-- application. For more information, see the guides for administrator and
-- Google Drive activity reports. For more information about the activity
-- report\'s parameters, see the activity parameters reference guides.
--
-- /See:/ 'activitiesList' smart constructor.
data ActivitiesList =
  ActivitiesList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alGroupIdFilter :: !(Maybe Text)
    , _alUploadProtocol :: !(Maybe Text)
    , _alStartTime :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alFilters :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alCustomerId :: !(Maybe Text)
    , _alActorIPAddress :: !(Maybe Text)
    , _alEndTime :: !(Maybe Text)
    , _alApplicationName :: !ActivitiesListApplicationName
    , _alPageToken :: !(Maybe Text)
    , _alEventName :: !(Maybe Text)
    , _alUserKey :: !Text
    , _alMaxResults :: !(Textual Int32)
    , _alOrgUnitId :: !Text
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alGroupIdFilter'
--
-- * 'alUploadProtocol'
--
-- * 'alStartTime'
--
-- * 'alAccessToken'
--
-- * 'alFilters'
--
-- * 'alUploadType'
--
-- * 'alCustomerId'
--
-- * 'alActorIPAddress'
--
-- * 'alEndTime'
--
-- * 'alApplicationName'
--
-- * 'alPageToken'
--
-- * 'alEventName'
--
-- * 'alUserKey'
--
-- * 'alMaxResults'
--
-- * 'alOrgUnitId'
--
-- * 'alCallback'
activitiesList
    :: ActivitiesListApplicationName -- ^ 'alApplicationName'
    -> Text -- ^ 'alUserKey'
    -> ActivitiesList
activitiesList pAlApplicationName_ pAlUserKey_ =
  ActivitiesList'
    { _alXgafv = Nothing
    , _alGroupIdFilter = Nothing
    , _alUploadProtocol = Nothing
    , _alStartTime = Nothing
    , _alAccessToken = Nothing
    , _alFilters = Nothing
    , _alUploadType = Nothing
    , _alCustomerId = Nothing
    , _alActorIPAddress = Nothing
    , _alEndTime = Nothing
    , _alApplicationName = pAlApplicationName_
    , _alPageToken = Nothing
    , _alEventName = Nothing
    , _alUserKey = pAlUserKey_
    , _alMaxResults = 1000
    , _alOrgUnitId = ""
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' ActivitiesList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Comma separated group ids (obfuscated) on which user activities are
-- filtered, i.e. the response will contain activities for only those users
-- that are a part of at least one of the group ids mentioned here. Format:
-- \"id:abc123,id:xyz456\"
alGroupIdFilter :: Lens' ActivitiesList (Maybe Text)
alGroupIdFilter
  = lens _alGroupIdFilter
      (\ s a -> s{_alGroupIdFilter = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' ActivitiesList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | Sets the beginning of the range of time shown in the report. The date is
-- in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report
-- returns all activities from \`startTime\` until \`endTime\`. The
-- \`startTime\` must be before the \`endTime\` (if specified) and the
-- current time when the request is made, or the API returns an error.
alStartTime :: Lens' ActivitiesList (Maybe Text)
alStartTime
  = lens _alStartTime (\ s a -> s{_alStartTime = a})

-- | OAuth access token.
alAccessToken :: Lens' ActivitiesList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | The \`filters\` query string is a comma-separated list. The list is
-- composed of event parameters that are manipulated by relational
-- operators. Event parameters are in the form \`parameter1 name[parameter1
-- value],parameter2 name[parameter2 value],...\` These event parameters
-- are associated with a specific \`eventName\`. An empty report is
-- returned if the filtered request\'s parameter does not belong to the
-- \`eventName\`. For more information about \`eventName\` parameters, see
-- the list of event names for various applications above in
-- \`applicationName\`. In the following Admin Activity example, the \<>
-- operator is URL-encoded in the request\'s query string (%3C%3E):
-- GET...&eventName=CHANGE_CALENDAR_SETTING
-- &filters=NEW_VALUE%3C%3EREAD_ONLY_ACCESS In the following Drive example,
-- the list can be a view or edit event\'s \`doc_id\` parameter with a
-- value that is manipulated by an \'equal to\' (==) or \'not equal to\'
-- (\<>) relational operator. In the first example, the report returns each
-- edited document\'s \`doc_id\`. In the second example, the report returns
-- each viewed document\'s \`doc_id\` that equals the value 12345 and does
-- not return any viewed document\'s which have a \`doc_id\` value of
-- 98765. The \<> operator is URL-encoded in the request\'s query string
-- (%3C%3E): GET...&eventName=edit&filters=doc_id
-- GET...&eventName=view&filters=doc_id==12345,doc_id%3C%3E98765 The
-- relational operators include: - \`==\` - \'equal to\'. - \`\<>\` - \'not
-- equal to\'. It is URL-encoded (%3C%3E). - \`\<\` - \'less than\'. It is
-- URL-encoded (%3C). - \`\<=\` - \'less than or equal to\'. It is
-- URL-encoded (%3C=). - \`>\` - \'greater than\'. It is URL-encoded (%3E).
-- - \`>=\` - \'greater than or equal to\'. It is URL-encoded (%3E=).
-- *Note:* The API doesn\'t accept multiple values of a parameter. If a
-- particular parameter is supplied more than once in the API request, the
-- API only accepts the last value of that request parameter. In addition,
-- if an invalid request parameter is supplied in the API request, the API
-- ignores that request parameter and returns the response corresponding to
-- the remaining valid request parameters. If no parameters are requested,
-- all parameters are returned.
alFilters :: Lens' ActivitiesList (Maybe Text)
alFilters
  = lens _alFilters (\ s a -> s{_alFilters = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' ActivitiesList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | The unique ID of the customer to retrieve data for.
alCustomerId :: Lens' ActivitiesList (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | The Internet Protocol (IP) Address of host where the event was
-- performed. This is an additional way to filter a report\'s summary using
-- the IP address of the user whose activity is being reported. This IP
-- address may or may not reflect the user\'s physical location. For
-- example, the IP address can be the user\'s proxy server\'s address or a
-- virtual private network (VPN) address. This parameter supports both IPv4
-- and IPv6 address versions.
alActorIPAddress :: Lens' ActivitiesList (Maybe Text)
alActorIPAddress
  = lens _alActorIPAddress
      (\ s a -> s{_alActorIPAddress = a})

-- | Sets the end of the range of time shown in the report. The date is in
-- the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default
-- value is the approximate time of the API request. An API report has
-- three basic time concepts: - *Date of the API\'s request for a report*:
-- When the API created and retrieved the report. - *Report\'s start time*:
-- The beginning of the timespan shown in the report. The \`startTime\`
-- must be before the \`endTime\` (if specified) and the current time when
-- the request is made, or the API returns an error. - *Report\'s end
-- time*: The end of the timespan shown in the report. For example, the
-- timespan of events summarized in a report can start in April and end in
-- May. The report itself can be requested in August. If the \`endTime\` is
-- not specified, the report returns all activities from the \`startTime\`
-- until the current time or the most recent 180 days if the \`startTime\`
-- is more than 180 days in the past.
alEndTime :: Lens' ActivitiesList (Maybe Text)
alEndTime
  = lens _alEndTime (\ s a -> s{_alEndTime = a})

-- | Application name for which the events are to be retrieved.
alApplicationName :: Lens' ActivitiesList ActivitiesListApplicationName
alApplicationName
  = lens _alApplicationName
      (\ s a -> s{_alApplicationName = a})

-- | The token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. In your follow-on request
-- getting the next page of the report, enter the \`nextPageToken\` value
-- in the \`pageToken\` query string.
alPageToken :: Lens' ActivitiesList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The name of the event being queried by the API. Each \`eventName\` is
-- related to a specific Google Workspace service or feature which the API
-- organizes into types of events. An example is the Google Calendar events
-- in the Admin console application\'s reports. The Calendar Settings
-- \`type\` structure has all of the Calendar \`eventName\` activities
-- reported by the API. When an administrator changes a Calendar setting,
-- the API reports this activity in the Calendar Settings \`type\` and
-- \`eventName\` parameters. For more information about \`eventName\` query
-- strings and parameters, see the list of event names for various
-- applications above in \`applicationName\`.
alEventName :: Lens' ActivitiesList (Maybe Text)
alEventName
  = lens _alEventName (\ s a -> s{_alEventName = a})

-- | Represents the profile ID or the user email for which the data should be
-- filtered. Can be \`all\` for all information, or \`userKey\` for a
-- user\'s unique Google Workspace profile ID or their primary email
-- address. Must not be a deleted user. For a deleted user, call
-- \`users.list\` in Directory API with \`showDeleted=true\`, then use the
-- returned \`ID\` as the \`userKey\`.
alUserKey :: Lens' ActivitiesList Text
alUserKey
  = lens _alUserKey (\ s a -> s{_alUserKey = a})

-- | Determines how many activity records are shown on each response page.
-- For example, if the request sets \`maxResults=1\` and the report has two
-- activities, the report has two pages. The response\'s \`nextPageToken\`
-- property has the token to the second page. The \`maxResults\` query
-- string is optional in the request. The default value is 1000.
alMaxResults :: Lens' ActivitiesList Int32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Coerce

-- | ID of the organizational unit to report on. Activity records will be
-- shown only for users who belong to the specified organizational unit.
-- Data before Dec 17, 2018 doesn\'t appear in the filtered results.
alOrgUnitId :: Lens' ActivitiesList Text
alOrgUnitId
  = lens _alOrgUnitId (\ s a -> s{_alOrgUnitId = a})

-- | JSONP
alCallback :: Lens' ActivitiesList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest ActivitiesList where
        type Rs ActivitiesList = Activities
        type Scopes ActivitiesList =
             '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
        requestClient ActivitiesList'{..}
          = go _alUserKey _alApplicationName _alXgafv
              _alGroupIdFilter
              _alUploadProtocol
              _alStartTime
              _alAccessToken
              _alFilters
              _alUploadType
              _alCustomerId
              _alActorIPAddress
              _alEndTime
              _alPageToken
              _alEventName
              (Just _alMaxResults)
              (Just _alOrgUnitId)
              _alCallback
              (Just AltJSON)
              reportsService
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty