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
-- Module      : Network.Google.Resource.Reports.EntityUsageReports.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics
-- for entities used by users within the account. For more information, see
-- the Entities Usage Report guide. For more information about the entities
-- report\'s parameters, see the Entities Usage parameters reference
-- guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.entityUsageReports.get@.
module Network.Google.Resource.Reports.EntityUsageReports.Get
    (
    -- * REST Resource
      EntityUsageReportsGetResource

    -- * Creating a Request
    , entityUsageReportsGet
    , EntityUsageReportsGet

    -- * Request Lenses
    , eurgXgafv
    , eurgUploadProtocol
    , eurgAccessToken
    , eurgEntityType
    , eurgFilters
    , eurgUploadType
    , eurgCustomerId
    , eurgDate
    , eurgEntityKey
    , eurgParameters
    , eurgPageToken
    , eurgMaxResults
    , eurgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @reports.entityUsageReports.get@ method which the
-- 'EntityUsageReportsGet' request conforms to.
type EntityUsageReportsGetResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             Capture "entityType" EntityUsageReportsGetEntityType
               :>
               Capture "entityKey" EntityUsageReportsGetEntityKey :>
                 "dates" :>
                   Capture "date" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "filters" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "customerId" Text :>
                                 QueryParam "parameters" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "maxResults" (Textual Word32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties and statistics
-- for entities used by users within the account. For more information, see
-- the Entities Usage Report guide. For more information about the entities
-- report\'s parameters, see the Entities Usage parameters reference
-- guides.
--
-- /See:/ 'entityUsageReportsGet' smart constructor.
data EntityUsageReportsGet =
  EntityUsageReportsGet'
    { _eurgXgafv :: !(Maybe Xgafv)
    , _eurgUploadProtocol :: !(Maybe Text)
    , _eurgAccessToken :: !(Maybe Text)
    , _eurgEntityType :: !EntityUsageReportsGetEntityType
    , _eurgFilters :: !(Maybe Text)
    , _eurgUploadType :: !(Maybe Text)
    , _eurgCustomerId :: !(Maybe Text)
    , _eurgDate :: !Text
    , _eurgEntityKey :: !EntityUsageReportsGetEntityKey
    , _eurgParameters :: !(Maybe Text)
    , _eurgPageToken :: !(Maybe Text)
    , _eurgMaxResults :: !(Textual Word32)
    , _eurgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityUsageReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eurgXgafv'
--
-- * 'eurgUploadProtocol'
--
-- * 'eurgAccessToken'
--
-- * 'eurgEntityType'
--
-- * 'eurgFilters'
--
-- * 'eurgUploadType'
--
-- * 'eurgCustomerId'
--
-- * 'eurgDate'
--
-- * 'eurgEntityKey'
--
-- * 'eurgParameters'
--
-- * 'eurgPageToken'
--
-- * 'eurgMaxResults'
--
-- * 'eurgCallback'
entityUsageReportsGet
    :: EntityUsageReportsGetEntityType -- ^ 'eurgEntityType'
    -> Text -- ^ 'eurgDate'
    -> EntityUsageReportsGetEntityKey -- ^ 'eurgEntityKey'
    -> EntityUsageReportsGet
entityUsageReportsGet pEurgEntityType_ pEurgDate_ pEurgEntityKey_ =
  EntityUsageReportsGet'
    { _eurgXgafv = Nothing
    , _eurgUploadProtocol = Nothing
    , _eurgAccessToken = Nothing
    , _eurgEntityType = pEurgEntityType_
    , _eurgFilters = Nothing
    , _eurgUploadType = Nothing
    , _eurgCustomerId = Nothing
    , _eurgDate = pEurgDate_
    , _eurgEntityKey = pEurgEntityKey_
    , _eurgParameters = Nothing
    , _eurgPageToken = Nothing
    , _eurgMaxResults = 1000
    , _eurgCallback = Nothing
    }


-- | V1 error format.
eurgXgafv :: Lens' EntityUsageReportsGet (Maybe Xgafv)
eurgXgafv
  = lens _eurgXgafv (\ s a -> s{_eurgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eurgUploadProtocol :: Lens' EntityUsageReportsGet (Maybe Text)
eurgUploadProtocol
  = lens _eurgUploadProtocol
      (\ s a -> s{_eurgUploadProtocol = a})

-- | OAuth access token.
eurgAccessToken :: Lens' EntityUsageReportsGet (Maybe Text)
eurgAccessToken
  = lens _eurgAccessToken
      (\ s a -> s{_eurgAccessToken = a})

-- | Represents the type of entity for the report.
eurgEntityType :: Lens' EntityUsageReportsGet EntityUsageReportsGetEntityType
eurgEntityType
  = lens _eurgEntityType
      (\ s a -> s{_eurgEntityType = a})

-- | The \`filters\` query string is a comma-separated list of an
-- application\'s event parameters where the parameter\'s value is
-- manipulated by a relational operator. The \`filters\` query string
-- includes the name of the application whose usage is returned in the
-- report. The application values for the Entities usage report include
-- \`accounts\`, \`docs\`, and \`gmail\`. Filters are in the form
-- \`[application name]:parameter name[parameter value],...\`. In this
-- example, the \`\<>\` \'not equal to\' operator is URL-encoded in the
-- request\'s query string (%3C%3E): GET
-- https:\/\/www.googleapis.com\/admin\/reports\/v1\/usage\/gplus_communities\/all\/dates\/2017-12-01
-- ?parameters=gplus:community_name,gplus:num_total_members
-- &filters=gplus:num_total_members%3C%3E0 The relational operators
-- include: - \`==\` - \'equal to\'. - \`\<>\` - \'not equal to\'. It is
-- URL-encoded (%3C%3E). - \`\<\` - \'less than\'. It is URL-encoded (%3C).
-- - \`\<=\` - \'less than or equal to\'. It is URL-encoded (%3C=). - \`>\`
-- - \'greater than\'. It is URL-encoded (%3E). - \`>=\` - \'greater than
-- or equal to\'. It is URL-encoded (%3E=). Filters can only be applied to
-- numeric parameters.
eurgFilters :: Lens' EntityUsageReportsGet (Maybe Text)
eurgFilters
  = lens _eurgFilters (\ s a -> s{_eurgFilters = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eurgUploadType :: Lens' EntityUsageReportsGet (Maybe Text)
eurgUploadType
  = lens _eurgUploadType
      (\ s a -> s{_eurgUploadType = a})

-- | The unique ID of the customer to retrieve data for.
eurgCustomerId :: Lens' EntityUsageReportsGet (Maybe Text)
eurgCustomerId
  = lens _eurgCustomerId
      (\ s a -> s{_eurgCustomerId = a})

-- | Represents the date the usage occurred. The timestamp is in the ISO 8601
-- format, yyyy-mm-dd. We recommend you use your account\'s time zone for
-- this.
eurgDate :: Lens' EntityUsageReportsGet Text
eurgDate = lens _eurgDate (\ s a -> s{_eurgDate = a})

-- | Represents the key of the object to filter the data with.
eurgEntityKey :: Lens' EntityUsageReportsGet EntityUsageReportsGetEntityKey
eurgEntityKey
  = lens _eurgEntityKey
      (\ s a -> s{_eurgEntityKey = a})

-- | The \`parameters\` query string is a comma-separated list of event
-- parameters that refine a report\'s results. The parameter is associated
-- with a specific application. The application values for the Entities
-- usage report are only \`gplus\`. A \`parameter\` query string is in the
-- CSV form of \`[app_name1:param_name1], [app_name2:param_name2]...\`.
-- *Note:* The API doesn\'t accept multiple values of a parameter. If a
-- particular parameter is supplied more than once in the API request, the
-- API only accepts the last value of that request parameter. In addition,
-- if an invalid request parameter is supplied in the API request, the API
-- ignores that request parameter and returns the response corresponding to
-- the remaining valid request parameters. An example of an invalid request
-- parameter is one that does not belong to the application. If no
-- parameters are requested, all parameters are returned.
eurgParameters :: Lens' EntityUsageReportsGet (Maybe Text)
eurgParameters
  = lens _eurgParameters
      (\ s a -> s{_eurgParameters = a})

-- | Token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. In your follow-on request
-- getting the next page of the report, enter the \`nextPageToken\` value
-- in the \`pageToken\` query string.
eurgPageToken :: Lens' EntityUsageReportsGet (Maybe Text)
eurgPageToken
  = lens _eurgPageToken
      (\ s a -> s{_eurgPageToken = a})

-- | Determines how many activity records are shown on each response page.
-- For example, if the request sets \`maxResults=1\` and the report has two
-- activities, the report has two pages. The response\'s \`nextPageToken\`
-- property has the token to the second page.
eurgMaxResults :: Lens' EntityUsageReportsGet Word32
eurgMaxResults
  = lens _eurgMaxResults
      (\ s a -> s{_eurgMaxResults = a})
      . _Coerce

-- | JSONP
eurgCallback :: Lens' EntityUsageReportsGet (Maybe Text)
eurgCallback
  = lens _eurgCallback (\ s a -> s{_eurgCallback = a})

instance GoogleRequest EntityUsageReportsGet where
        type Rs EntityUsageReportsGet = UsageReports
        type Scopes EntityUsageReportsGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient EntityUsageReportsGet'{..}
          = go _eurgEntityType _eurgEntityKey _eurgDate
              _eurgXgafv
              _eurgUploadProtocol
              _eurgAccessToken
              _eurgFilters
              _eurgUploadType
              _eurgCustomerId
              _eurgParameters
              _eurgPageToken
              (Just _eurgMaxResults)
              _eurgCallback
              (Just AltJSON)
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy EntityUsageReportsGetResource)
                      mempty
