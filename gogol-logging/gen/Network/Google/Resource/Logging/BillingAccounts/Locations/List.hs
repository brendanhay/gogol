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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.list@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.List
    (
    -- * REST Resource
      BillingAccountsLocationsListResource

    -- * Creating a Request
    , billingAccountsLocationsList
    , BillingAccountsLocationsList

    -- * Request Lenses
    , bXgafv
    , bUploadProtocol
    , bAccessToken
    , bUploadType
    , bName
    , bFilter
    , bPageToken
    , bPageSize
    , bCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.list@ method which the
-- 'BillingAccountsLocationsList' request conforms to.
type BillingAccountsLocationsListResource =
     "v2" :>
       Capture "name" Text :>
         "locations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'billingAccountsLocationsList' smart constructor.
data BillingAccountsLocationsList =
  BillingAccountsLocationsList'
    { _bXgafv :: !(Maybe Xgafv)
    , _bUploadProtocol :: !(Maybe Text)
    , _bAccessToken :: !(Maybe Text)
    , _bUploadType :: !(Maybe Text)
    , _bName :: !Text
    , _bFilter :: !(Maybe Text)
    , _bPageToken :: !(Maybe Text)
    , _bPageSize :: !(Maybe (Textual Int32))
    , _bCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bXgafv'
--
-- * 'bUploadProtocol'
--
-- * 'bAccessToken'
--
-- * 'bUploadType'
--
-- * 'bName'
--
-- * 'bFilter'
--
-- * 'bPageToken'
--
-- * 'bPageSize'
--
-- * 'bCallback'
billingAccountsLocationsList
    :: Text -- ^ 'bName'
    -> BillingAccountsLocationsList
billingAccountsLocationsList pBName_ =
  BillingAccountsLocationsList'
    { _bXgafv = Nothing
    , _bUploadProtocol = Nothing
    , _bAccessToken = Nothing
    , _bUploadType = Nothing
    , _bName = pBName_
    , _bFilter = Nothing
    , _bPageToken = Nothing
    , _bPageSize = Nothing
    , _bCallback = Nothing
    }


-- | V1 error format.
bXgafv :: Lens' BillingAccountsLocationsList (Maybe Xgafv)
bXgafv = lens _bXgafv (\ s a -> s{_bXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bUploadProtocol :: Lens' BillingAccountsLocationsList (Maybe Text)
bUploadProtocol
  = lens _bUploadProtocol
      (\ s a -> s{_bUploadProtocol = a})

-- | OAuth access token.
bAccessToken :: Lens' BillingAccountsLocationsList (Maybe Text)
bAccessToken
  = lens _bAccessToken (\ s a -> s{_bAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bUploadType :: Lens' BillingAccountsLocationsList (Maybe Text)
bUploadType
  = lens _bUploadType (\ s a -> s{_bUploadType = a})

-- | The resource that owns the locations collection, if applicable.
bName :: Lens' BillingAccountsLocationsList Text
bName = lens _bName (\ s a -> s{_bName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
bFilter :: Lens' BillingAccountsLocationsList (Maybe Text)
bFilter = lens _bFilter (\ s a -> s{_bFilter = a})

-- | A page token received from the next_page_token field in the response.
-- Send that page token to receive the subsequent page.
bPageToken :: Lens' BillingAccountsLocationsList (Maybe Text)
bPageToken
  = lens _bPageToken (\ s a -> s{_bPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
bPageSize :: Lens' BillingAccountsLocationsList (Maybe Int32)
bPageSize
  = lens _bPageSize (\ s a -> s{_bPageSize = a}) .
      mapping _Coerce

-- | JSONP
bCallback :: Lens' BillingAccountsLocationsList (Maybe Text)
bCallback
  = lens _bCallback (\ s a -> s{_bCallback = a})

instance GoogleRequest BillingAccountsLocationsList
         where
        type Rs BillingAccountsLocationsList =
             ListLocationsResponse
        type Scopes BillingAccountsLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsLocationsList'{..}
          = go _bName _bXgafv _bUploadProtocol _bAccessToken
              _bUploadType
              _bFilter
              _bPageToken
              _bPageSize
              _bCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsLocationsListResource)
                      mempty
