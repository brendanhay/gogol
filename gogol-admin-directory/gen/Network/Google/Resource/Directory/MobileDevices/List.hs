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
-- Module      : Network.Google.Resource.Directory.MobileDevices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all mobile devices for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.list@.
module Network.Google.Resource.Directory.MobileDevices.List
    (
    -- * REST Resource
      MobileDevicesListResource

    -- * Creating a Request
    , mobileDevicesList
    , MobileDevicesList

    -- * Request Lenses
    , mdlXgafv
    , mdlUploadProtocol
    , mdlOrderBy
    , mdlAccessToken
    , mdlUploadType
    , mdlCustomerId
    , mdlSortOrder
    , mdlQuery
    , mdlProjection
    , mdlPageToken
    , mdlMaxResults
    , mdlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.list@ method which the
-- 'MobileDevicesList' request conforms to.
type MobileDevicesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "orderBy" MobileDevicesListOrderBy :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "sortOrder" MobileDevicesListSortOrder
                               :>
                               QueryParam "query" Text :>
                                 QueryParam "projection"
                                   MobileDevicesListProjection
                                   :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] MobileDevices

-- | Retrieves a paginated list of all mobile devices for an account.
--
-- /See:/ 'mobileDevicesList' smart constructor.
data MobileDevicesList =
  MobileDevicesList'
    { _mdlXgafv :: !(Maybe Xgafv)
    , _mdlUploadProtocol :: !(Maybe Text)
    , _mdlOrderBy :: !(Maybe MobileDevicesListOrderBy)
    , _mdlAccessToken :: !(Maybe Text)
    , _mdlUploadType :: !(Maybe Text)
    , _mdlCustomerId :: !Text
    , _mdlSortOrder :: !(Maybe MobileDevicesListSortOrder)
    , _mdlQuery :: !(Maybe Text)
    , _mdlProjection :: !(Maybe MobileDevicesListProjection)
    , _mdlPageToken :: !(Maybe Text)
    , _mdlMaxResults :: !(Textual Int32)
    , _mdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlXgafv'
--
-- * 'mdlUploadProtocol'
--
-- * 'mdlOrderBy'
--
-- * 'mdlAccessToken'
--
-- * 'mdlUploadType'
--
-- * 'mdlCustomerId'
--
-- * 'mdlSortOrder'
--
-- * 'mdlQuery'
--
-- * 'mdlProjection'
--
-- * 'mdlPageToken'
--
-- * 'mdlMaxResults'
--
-- * 'mdlCallback'
mobileDevicesList
    :: Text -- ^ 'mdlCustomerId'
    -> MobileDevicesList
mobileDevicesList pMdlCustomerId_ =
  MobileDevicesList'
    { _mdlXgafv = Nothing
    , _mdlUploadProtocol = Nothing
    , _mdlOrderBy = Nothing
    , _mdlAccessToken = Nothing
    , _mdlUploadType = Nothing
    , _mdlCustomerId = pMdlCustomerId_
    , _mdlSortOrder = Nothing
    , _mdlQuery = Nothing
    , _mdlProjection = Nothing
    , _mdlPageToken = Nothing
    , _mdlMaxResults = 100
    , _mdlCallback = Nothing
    }


-- | V1 error format.
mdlXgafv :: Lens' MobileDevicesList (Maybe Xgafv)
mdlXgafv = lens _mdlXgafv (\ s a -> s{_mdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdlUploadProtocol :: Lens' MobileDevicesList (Maybe Text)
mdlUploadProtocol
  = lens _mdlUploadProtocol
      (\ s a -> s{_mdlUploadProtocol = a})

-- | Device property to use for sorting results.
mdlOrderBy :: Lens' MobileDevicesList (Maybe MobileDevicesListOrderBy)
mdlOrderBy
  = lens _mdlOrderBy (\ s a -> s{_mdlOrderBy = a})

-- | OAuth access token.
mdlAccessToken :: Lens' MobileDevicesList (Maybe Text)
mdlAccessToken
  = lens _mdlAccessToken
      (\ s a -> s{_mdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdlUploadType :: Lens' MobileDevicesList (Maybe Text)
mdlUploadType
  = lens _mdlUploadType
      (\ s a -> s{_mdlUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
mdlCustomerId :: Lens' MobileDevicesList Text
mdlCustomerId
  = lens _mdlCustomerId
      (\ s a -> s{_mdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Must be used
-- with the \`orderBy\` parameter.
mdlSortOrder :: Lens' MobileDevicesList (Maybe MobileDevicesListSortOrder)
mdlSortOrder
  = lens _mdlSortOrder (\ s a -> s{_mdlSortOrder = a})

-- | Search string in the format given at
-- https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/search-operators
mdlQuery :: Lens' MobileDevicesList (Maybe Text)
mdlQuery = lens _mdlQuery (\ s a -> s{_mdlQuery = a})

-- | Restrict information returned to a set of selected fields.
mdlProjection :: Lens' MobileDevicesList (Maybe MobileDevicesListProjection)
mdlProjection
  = lens _mdlProjection
      (\ s a -> s{_mdlProjection = a})

-- | Token to specify next page in the list
mdlPageToken :: Lens' MobileDevicesList (Maybe Text)
mdlPageToken
  = lens _mdlPageToken (\ s a -> s{_mdlPageToken = a})

-- | Maximum number of results to return. Max allowed value is 100.
mdlMaxResults :: Lens' MobileDevicesList Int32
mdlMaxResults
  = lens _mdlMaxResults
      (\ s a -> s{_mdlMaxResults = a})
      . _Coerce

-- | JSONP
mdlCallback :: Lens' MobileDevicesList (Maybe Text)
mdlCallback
  = lens _mdlCallback (\ s a -> s{_mdlCallback = a})

instance GoogleRequest MobileDevicesList where
        type Rs MobileDevicesList = MobileDevices
        type Scopes MobileDevicesList =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
        requestClient MobileDevicesList'{..}
          = go _mdlCustomerId _mdlXgafv _mdlUploadProtocol
              _mdlOrderBy
              _mdlAccessToken
              _mdlUploadType
              _mdlSortOrder
              _mdlQuery
              _mdlProjection
              _mdlPageToken
              (Just _mdlMaxResults)
              _mdlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesListResource)
                      mempty
