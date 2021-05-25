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
-- Module      : Network.Google.Resource.Reports.Activities.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start receiving notifications for account activities. For more
-- information, see Receiving Push Notifications.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.activities.watch@.
module Network.Google.Resource.Reports.Activities.Watch
    (
    -- * REST Resource
      ActivitiesWatchResource

    -- * Creating a Request
    , activitiesWatch
    , ActivitiesWatch

    -- * Request Lenses
    , awXgafv
    , awGroupIdFilter
    , awUploadProtocol
    , awStartTime
    , awAccessToken
    , awFilters
    , awUploadType
    , awPayload
    , awCustomerId
    , awActorIPAddress
    , awEndTime
    , awApplicationName
    , awPageToken
    , awEventName
    , awUserKey
    , awMaxResults
    , awOrgUnitId
    , awCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @reports.activities.watch@ method which the
-- 'ActivitiesWatch' request conforms to.
type ActivitiesWatchResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "activity" :>
             "users" :>
               Capture "userKey" Text :>
                 "applications" :>
                   Capture "applicationName"
                     ActivitiesWatchApplicationName
                     :>
                     "watch" :>
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
                                                       ReqBody '[JSON] Channel
                                                         :> Post '[JSON] Channel

-- | Start receiving notifications for account activities. For more
-- information, see Receiving Push Notifications.
--
-- /See:/ 'activitiesWatch' smart constructor.
data ActivitiesWatch =
  ActivitiesWatch'
    { _awXgafv :: !(Maybe Xgafv)
    , _awGroupIdFilter :: !(Maybe Text)
    , _awUploadProtocol :: !(Maybe Text)
    , _awStartTime :: !(Maybe Text)
    , _awAccessToken :: !(Maybe Text)
    , _awFilters :: !(Maybe Text)
    , _awUploadType :: !(Maybe Text)
    , _awPayload :: !Channel
    , _awCustomerId :: !(Maybe Text)
    , _awActorIPAddress :: !(Maybe Text)
    , _awEndTime :: !(Maybe Text)
    , _awApplicationName :: !ActivitiesWatchApplicationName
    , _awPageToken :: !(Maybe Text)
    , _awEventName :: !(Maybe Text)
    , _awUserKey :: !Text
    , _awMaxResults :: !(Textual Int32)
    , _awOrgUnitId :: !Text
    , _awCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivitiesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awXgafv'
--
-- * 'awGroupIdFilter'
--
-- * 'awUploadProtocol'
--
-- * 'awStartTime'
--
-- * 'awAccessToken'
--
-- * 'awFilters'
--
-- * 'awUploadType'
--
-- * 'awPayload'
--
-- * 'awCustomerId'
--
-- * 'awActorIPAddress'
--
-- * 'awEndTime'
--
-- * 'awApplicationName'
--
-- * 'awPageToken'
--
-- * 'awEventName'
--
-- * 'awUserKey'
--
-- * 'awMaxResults'
--
-- * 'awOrgUnitId'
--
-- * 'awCallback'
activitiesWatch
    :: Channel -- ^ 'awPayload'
    -> ActivitiesWatchApplicationName -- ^ 'awApplicationName'
    -> Text -- ^ 'awUserKey'
    -> ActivitiesWatch
activitiesWatch pAwPayload_ pAwApplicationName_ pAwUserKey_ =
  ActivitiesWatch'
    { _awXgafv = Nothing
    , _awGroupIdFilter = Nothing
    , _awUploadProtocol = Nothing
    , _awStartTime = Nothing
    , _awAccessToken = Nothing
    , _awFilters = Nothing
    , _awUploadType = Nothing
    , _awPayload = pAwPayload_
    , _awCustomerId = Nothing
    , _awActorIPAddress = Nothing
    , _awEndTime = Nothing
    , _awApplicationName = pAwApplicationName_
    , _awPageToken = Nothing
    , _awEventName = Nothing
    , _awUserKey = pAwUserKey_
    , _awMaxResults = 1000
    , _awOrgUnitId = ""
    , _awCallback = Nothing
    }


-- | V1 error format.
awXgafv :: Lens' ActivitiesWatch (Maybe Xgafv)
awXgafv = lens _awXgafv (\ s a -> s{_awXgafv = a})

-- | Comma separated group ids (obfuscated) on which user activities are
-- filtered, i.e. the response will contain activities for only those users
-- that are a part of at least one of the group ids mentioned here. Format:
-- \"id:abc123,id:xyz456\"
awGroupIdFilter :: Lens' ActivitiesWatch (Maybe Text)
awGroupIdFilter
  = lens _awGroupIdFilter
      (\ s a -> s{_awGroupIdFilter = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
awUploadProtocol :: Lens' ActivitiesWatch (Maybe Text)
awUploadProtocol
  = lens _awUploadProtocol
      (\ s a -> s{_awUploadProtocol = a})

-- | Sets the beginning of the range of time shown in the report. The date is
-- in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report
-- returns all activities from \`startTime\` until \`endTime\`. The
-- \`startTime\` must be before the \`endTime\` (if specified) and the
-- current time when the request is made, or the API returns an error.
awStartTime :: Lens' ActivitiesWatch (Maybe Text)
awStartTime
  = lens _awStartTime (\ s a -> s{_awStartTime = a})

-- | OAuth access token.
awAccessToken :: Lens' ActivitiesWatch (Maybe Text)
awAccessToken
  = lens _awAccessToken
      (\ s a -> s{_awAccessToken = a})

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
awFilters :: Lens' ActivitiesWatch (Maybe Text)
awFilters
  = lens _awFilters (\ s a -> s{_awFilters = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
awUploadType :: Lens' ActivitiesWatch (Maybe Text)
awUploadType
  = lens _awUploadType (\ s a -> s{_awUploadType = a})

-- | Multipart request metadata.
awPayload :: Lens' ActivitiesWatch Channel
awPayload
  = lens _awPayload (\ s a -> s{_awPayload = a})

-- | The unique ID of the customer to retrieve data for.
awCustomerId :: Lens' ActivitiesWatch (Maybe Text)
awCustomerId
  = lens _awCustomerId (\ s a -> s{_awCustomerId = a})

-- | The Internet Protocol (IP) Address of host where the event was
-- performed. This is an additional way to filter a report\'s summary using
-- the IP address of the user whose activity is being reported. This IP
-- address may or may not reflect the user\'s physical location. For
-- example, the IP address can be the user\'s proxy server\'s address or a
-- virtual private network (VPN) address. This parameter supports both IPv4
-- and IPv6 address versions.
awActorIPAddress :: Lens' ActivitiesWatch (Maybe Text)
awActorIPAddress
  = lens _awActorIPAddress
      (\ s a -> s{_awActorIPAddress = a})

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
awEndTime :: Lens' ActivitiesWatch (Maybe Text)
awEndTime
  = lens _awEndTime (\ s a -> s{_awEndTime = a})

-- | Application name for which the events are to be retrieved.
awApplicationName :: Lens' ActivitiesWatch ActivitiesWatchApplicationName
awApplicationName
  = lens _awApplicationName
      (\ s a -> s{_awApplicationName = a})

-- | The token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. In your follow-on request
-- getting the next page of the report, enter the \`nextPageToken\` value
-- in the \`pageToken\` query string.
awPageToken :: Lens' ActivitiesWatch (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

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
awEventName :: Lens' ActivitiesWatch (Maybe Text)
awEventName
  = lens _awEventName (\ s a -> s{_awEventName = a})

-- | Represents the profile ID or the user email for which the data should be
-- filtered. Can be \`all\` for all information, or \`userKey\` for a
-- user\'s unique Google Workspace profile ID or their primary email
-- address. Must not be a deleted user. For a deleted user, call
-- \`users.list\` in Directory API with \`showDeleted=true\`, then use the
-- returned \`ID\` as the \`userKey\`.
awUserKey :: Lens' ActivitiesWatch Text
awUserKey
  = lens _awUserKey (\ s a -> s{_awUserKey = a})

-- | Determines how many activity records are shown on each response page.
-- For example, if the request sets \`maxResults=1\` and the report has two
-- activities, the report has two pages. The response\'s \`nextPageToken\`
-- property has the token to the second page. The \`maxResults\` query
-- string is optional in the request. The default value is 1000.
awMaxResults :: Lens' ActivitiesWatch Int32
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})
      . _Coerce

-- | ID of the organizational unit to report on. Activity records will be
-- shown only for users who belong to the specified organizational unit.
-- Data before Dec 17, 2018 doesn\'t appear in the filtered results.
awOrgUnitId :: Lens' ActivitiesWatch Text
awOrgUnitId
  = lens _awOrgUnitId (\ s a -> s{_awOrgUnitId = a})

-- | JSONP
awCallback :: Lens' ActivitiesWatch (Maybe Text)
awCallback
  = lens _awCallback (\ s a -> s{_awCallback = a})

instance GoogleRequest ActivitiesWatch where
        type Rs ActivitiesWatch = Channel
        type Scopes ActivitiesWatch =
             '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
        requestClient ActivitiesWatch'{..}
          = go _awUserKey _awApplicationName _awXgafv
              _awGroupIdFilter
              _awUploadProtocol
              _awStartTime
              _awAccessToken
              _awFilters
              _awUploadType
              _awCustomerId
              _awActorIPAddress
              _awEndTime
              _awPageToken
              _awEventName
              (Just _awMaxResults)
              (Just _awOrgUnitId)
              _awCallback
              (Just AltJSON)
              _awPayload
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy ActivitiesWatchResource)
                      mempty
