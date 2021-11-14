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
-- Module      : Network.Google.Resource.Reports.CustomerUsageReports.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics
-- for a specific customer\'s account. For more information, see the
-- Customers Usage Report guide. For more information about the customer
-- report\'s parameters, see the Customers Usage parameters reference
-- guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.customerUsageReports.get@.
module Network.Google.Resource.Reports.CustomerUsageReports.Get
    (
    -- * REST Resource
      CustomerUsageReportsGetResource

    -- * Creating a Request
    , customerUsageReportsGet
    , CustomerUsageReportsGet

    -- * Request Lenses
    , curgXgafv
    , curgUploadProtocol
    , curgAccessToken
    , curgUploadType
    , curgCustomerId
    , curgDate
    , curgParameters
    , curgPageToken
    , curgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @reports.customerUsageReports.get@ method which the
-- 'CustomerUsageReportsGet' request conforms to.
type CustomerUsageReportsGetResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             "dates" :>
               Capture "date" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "customerId" Text :>
                           QueryParam "parameters" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties and statistics
-- for a specific customer\'s account. For more information, see the
-- Customers Usage Report guide. For more information about the customer
-- report\'s parameters, see the Customers Usage parameters reference
-- guides.
--
-- /See:/ 'customerUsageReportsGet' smart constructor.
data CustomerUsageReportsGet =
  CustomerUsageReportsGet'
    { _curgXgafv :: !(Maybe Xgafv)
    , _curgUploadProtocol :: !(Maybe Text)
    , _curgAccessToken :: !(Maybe Text)
    , _curgUploadType :: !(Maybe Text)
    , _curgCustomerId :: !(Maybe Text)
    , _curgDate :: !Text
    , _curgParameters :: !(Maybe Text)
    , _curgPageToken :: !(Maybe Text)
    , _curgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerUsageReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curgXgafv'
--
-- * 'curgUploadProtocol'
--
-- * 'curgAccessToken'
--
-- * 'curgUploadType'
--
-- * 'curgCustomerId'
--
-- * 'curgDate'
--
-- * 'curgParameters'
--
-- * 'curgPageToken'
--
-- * 'curgCallback'
customerUsageReportsGet
    :: Text -- ^ 'curgDate'
    -> CustomerUsageReportsGet
customerUsageReportsGet pCurgDate_ =
  CustomerUsageReportsGet'
    { _curgXgafv = Nothing
    , _curgUploadProtocol = Nothing
    , _curgAccessToken = Nothing
    , _curgUploadType = Nothing
    , _curgCustomerId = Nothing
    , _curgDate = pCurgDate_
    , _curgParameters = Nothing
    , _curgPageToken = Nothing
    , _curgCallback = Nothing
    }


-- | V1 error format.
curgXgafv :: Lens' CustomerUsageReportsGet (Maybe Xgafv)
curgXgafv
  = lens _curgXgafv (\ s a -> s{_curgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
curgUploadProtocol :: Lens' CustomerUsageReportsGet (Maybe Text)
curgUploadProtocol
  = lens _curgUploadProtocol
      (\ s a -> s{_curgUploadProtocol = a})

-- | OAuth access token.
curgAccessToken :: Lens' CustomerUsageReportsGet (Maybe Text)
curgAccessToken
  = lens _curgAccessToken
      (\ s a -> s{_curgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
curgUploadType :: Lens' CustomerUsageReportsGet (Maybe Text)
curgUploadType
  = lens _curgUploadType
      (\ s a -> s{_curgUploadType = a})

-- | The unique ID of the customer to retrieve data for.
curgCustomerId :: Lens' CustomerUsageReportsGet (Maybe Text)
curgCustomerId
  = lens _curgCustomerId
      (\ s a -> s{_curgCustomerId = a})

-- | Represents the date the usage occurred. The timestamp is in the ISO 8601
-- format, yyyy-mm-dd. We recommend you use your account\'s time zone for
-- this.
curgDate :: Lens' CustomerUsageReportsGet Text
curgDate = lens _curgDate (\ s a -> s{_curgDate = a})

-- | The \`parameters\` query string is a comma-separated list of event
-- parameters that refine a report\'s results. The parameter is associated
-- with a specific application. The application values for the Customers
-- usage report include \`accounts\`, \`app_maker\`, \`apps_scripts\`,
-- \`calendar\`, \`classroom\`, \`cros\`, \`docs\`, \`gmail\`, \`gplus\`,
-- \`device_management\`, \`meet\`, and \`sites\`. A \`parameters\` query
-- string is in the CSV form of \`app_name1:param_name1,
-- app_name2:param_name2\`. *Note:* The API doesn\'t accept multiple values
-- of a parameter. If a particular parameter is supplied more than once in
-- the API request, the API only accepts the last value of that request
-- parameter. In addition, if an invalid request parameter is supplied in
-- the API request, the API ignores that request parameter and returns the
-- response corresponding to the remaining valid request parameters. An
-- example of an invalid request parameter is one that does not belong to
-- the application. If no parameters are requested, all parameters are
-- returned.
curgParameters :: Lens' CustomerUsageReportsGet (Maybe Text)
curgParameters
  = lens _curgParameters
      (\ s a -> s{_curgParameters = a})

-- | Token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. For your follow-on requests
-- getting all of the report\'s pages, enter the \`nextPageToken\` value in
-- the \`pageToken\` query string.
curgPageToken :: Lens' CustomerUsageReportsGet (Maybe Text)
curgPageToken
  = lens _curgPageToken
      (\ s a -> s{_curgPageToken = a})

-- | JSONP
curgCallback :: Lens' CustomerUsageReportsGet (Maybe Text)
curgCallback
  = lens _curgCallback (\ s a -> s{_curgCallback = a})

instance GoogleRequest CustomerUsageReportsGet where
        type Rs CustomerUsageReportsGet = UsageReports
        type Scopes CustomerUsageReportsGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient CustomerUsageReportsGet'{..}
          = go _curgDate _curgXgafv _curgUploadProtocol
              _curgAccessToken
              _curgUploadType
              _curgCustomerId
              _curgParameters
              _curgPageToken
              _curgCallback
              (Just AltJSON)
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomerUsageReportsGetResource)
                      mempty
