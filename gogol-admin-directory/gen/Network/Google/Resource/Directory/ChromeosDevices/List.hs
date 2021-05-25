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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of Chrome OS devices within an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.list@.
module Network.Google.Resource.Directory.ChromeosDevices.List
    (
    -- * REST Resource
      ChromeosDevicesListResource

    -- * Creating a Request
    , chromeosDevicesList
    , ChromeosDevicesList

    -- * Request Lenses
    , cdlXgafv
    , cdlUploadProtocol
    , cdlOrderBy
    , cdlAccessToken
    , cdlUploadType
    , cdlOrgUnitPath
    , cdlCustomerId
    , cdlSortOrder
    , cdlQuery
    , cdlProjection
    , cdlPageToken
    , cdlMaxResults
    , cdlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.list@ method which the
-- 'ChromeosDevicesList' request conforms to.
type ChromeosDevicesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "orderBy" ChromeosDevicesListOrderBy :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "orgUnitPath" Text :>
                               QueryParam "sortOrder"
                                 ChromeosDevicesListSortOrder
                                 :>
                                 QueryParam "query" Text :>
                                   QueryParam "projection"
                                     ChromeosDevicesListProjection
                                     :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "maxResults" (Textual Int32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ChromeOSDevices

-- | Retrieves a paginated list of Chrome OS devices within an account.
--
-- /See:/ 'chromeosDevicesList' smart constructor.
data ChromeosDevicesList =
  ChromeosDevicesList'
    { _cdlXgafv :: !(Maybe Xgafv)
    , _cdlUploadProtocol :: !(Maybe Text)
    , _cdlOrderBy :: !(Maybe ChromeosDevicesListOrderBy)
    , _cdlAccessToken :: !(Maybe Text)
    , _cdlUploadType :: !(Maybe Text)
    , _cdlOrgUnitPath :: !(Maybe Text)
    , _cdlCustomerId :: !Text
    , _cdlSortOrder :: !(Maybe ChromeosDevicesListSortOrder)
    , _cdlQuery :: !(Maybe Text)
    , _cdlProjection :: !(Maybe ChromeosDevicesListProjection)
    , _cdlPageToken :: !(Maybe Text)
    , _cdlMaxResults :: !(Textual Int32)
    , _cdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdlXgafv'
--
-- * 'cdlUploadProtocol'
--
-- * 'cdlOrderBy'
--
-- * 'cdlAccessToken'
--
-- * 'cdlUploadType'
--
-- * 'cdlOrgUnitPath'
--
-- * 'cdlCustomerId'
--
-- * 'cdlSortOrder'
--
-- * 'cdlQuery'
--
-- * 'cdlProjection'
--
-- * 'cdlPageToken'
--
-- * 'cdlMaxResults'
--
-- * 'cdlCallback'
chromeosDevicesList
    :: Text -- ^ 'cdlCustomerId'
    -> ChromeosDevicesList
chromeosDevicesList pCdlCustomerId_ =
  ChromeosDevicesList'
    { _cdlXgafv = Nothing
    , _cdlUploadProtocol = Nothing
    , _cdlOrderBy = Nothing
    , _cdlAccessToken = Nothing
    , _cdlUploadType = Nothing
    , _cdlOrgUnitPath = Nothing
    , _cdlCustomerId = pCdlCustomerId_
    , _cdlSortOrder = Nothing
    , _cdlQuery = Nothing
    , _cdlProjection = Nothing
    , _cdlPageToken = Nothing
    , _cdlMaxResults = 100
    , _cdlCallback = Nothing
    }


-- | V1 error format.
cdlXgafv :: Lens' ChromeosDevicesList (Maybe Xgafv)
cdlXgafv = lens _cdlXgafv (\ s a -> s{_cdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdlUploadProtocol :: Lens' ChromeosDevicesList (Maybe Text)
cdlUploadProtocol
  = lens _cdlUploadProtocol
      (\ s a -> s{_cdlUploadProtocol = a})

-- | Device property to use for sorting results.
cdlOrderBy :: Lens' ChromeosDevicesList (Maybe ChromeosDevicesListOrderBy)
cdlOrderBy
  = lens _cdlOrderBy (\ s a -> s{_cdlOrderBy = a})

-- | OAuth access token.
cdlAccessToken :: Lens' ChromeosDevicesList (Maybe Text)
cdlAccessToken
  = lens _cdlAccessToken
      (\ s a -> s{_cdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdlUploadType :: Lens' ChromeosDevicesList (Maybe Text)
cdlUploadType
  = lens _cdlUploadType
      (\ s a -> s{_cdlUploadType = a})

-- | The full path of the organizational unit or its unique ID.
cdlOrgUnitPath :: Lens' ChromeosDevicesList (Maybe Text)
cdlOrgUnitPath
  = lens _cdlOrgUnitPath
      (\ s a -> s{_cdlOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
cdlCustomerId :: Lens' ChromeosDevicesList Text
cdlCustomerId
  = lens _cdlCustomerId
      (\ s a -> s{_cdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Must be used
-- with the \`orderBy\` parameter.
cdlSortOrder :: Lens' ChromeosDevicesList (Maybe ChromeosDevicesListSortOrder)
cdlSortOrder
  = lens _cdlSortOrder (\ s a -> s{_cdlSortOrder = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/chromeos\/a\/bin\/answer.py?answer=1698333
cdlQuery :: Lens' ChromeosDevicesList (Maybe Text)
cdlQuery = lens _cdlQuery (\ s a -> s{_cdlQuery = a})

-- | Restrict information returned to a set of selected fields.
cdlProjection :: Lens' ChromeosDevicesList (Maybe ChromeosDevicesListProjection)
cdlProjection
  = lens _cdlProjection
      (\ s a -> s{_cdlProjection = a})

-- | The \`pageToken\` query parameter is used to request the next page of
-- query results. The follow-on request\'s \`pageToken\` query parameter is
-- the \`nextPageToken\` from your previous response.
cdlPageToken :: Lens' ChromeosDevicesList (Maybe Text)
cdlPageToken
  = lens _cdlPageToken (\ s a -> s{_cdlPageToken = a})

-- | Maximum number of results to return.
cdlMaxResults :: Lens' ChromeosDevicesList Int32
cdlMaxResults
  = lens _cdlMaxResults
      (\ s a -> s{_cdlMaxResults = a})
      . _Coerce

-- | JSONP
cdlCallback :: Lens' ChromeosDevicesList (Maybe Text)
cdlCallback
  = lens _cdlCallback (\ s a -> s{_cdlCallback = a})

instance GoogleRequest ChromeosDevicesList where
        type Rs ChromeosDevicesList = ChromeOSDevices
        type Scopes ChromeosDevicesList =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos",
               "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
        requestClient ChromeosDevicesList'{..}
          = go _cdlCustomerId _cdlXgafv _cdlUploadProtocol
              _cdlOrderBy
              _cdlAccessToken
              _cdlUploadType
              _cdlOrgUnitPath
              _cdlSortOrder
              _cdlQuery
              _cdlProjection
              _cdlPageToken
              (Just _cdlMaxResults)
              _cdlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesListResource)
                      mempty
