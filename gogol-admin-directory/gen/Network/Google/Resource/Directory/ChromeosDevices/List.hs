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
-- Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.chromeosdevices.list@.
module Network.Google.Resource.Directory.ChromeosDevices.List
    (
    -- * REST Resource
      ChromeosDevicesListResource

    -- * Creating a Request
    , chromeosDevicesList
    , ChromeosDevicesList

    -- * Request Lenses
    , cdlOrderBy
    , cdlOrgUnitPath
    , cdlCustomerId
    , cdlSortOrder
    , cdlQuery
    , cdlProjection
    , cdlPageToken
    , cdlMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                   QueryParam "orderBy" ChromeosDevicesListOrderBy :>
                     QueryParam "orgUnitPath" Text :>
                       QueryParam "sortOrder" ChromeosDevicesListSortOrder
                         :>
                         QueryParam "query" Text :>
                           QueryParam "projection" ChromeosDevicesListProjection
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ChromeOSDevices

-- | Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ 'chromeosDevicesList' smart constructor.
data ChromeosDevicesList = ChromeosDevicesList'
    { _cdlOrderBy     :: !(Maybe ChromeosDevicesListOrderBy)
    , _cdlOrgUnitPath :: !(Maybe Text)
    , _cdlCustomerId  :: !Text
    , _cdlSortOrder   :: !(Maybe ChromeosDevicesListSortOrder)
    , _cdlQuery       :: !(Maybe Text)
    , _cdlProjection  :: !(Maybe ChromeosDevicesListProjection)
    , _cdlPageToken   :: !(Maybe Text)
    , _cdlMaxResults  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdlOrderBy'
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
chromeosDevicesList
    :: Text -- ^ 'cdlCustomerId'
    -> ChromeosDevicesList
chromeosDevicesList pCdlCustomerId_ =
    ChromeosDevicesList'
    { _cdlOrderBy = Nothing
    , _cdlOrgUnitPath = Nothing
    , _cdlCustomerId = pCdlCustomerId_
    , _cdlSortOrder = Nothing
    , _cdlQuery = Nothing
    , _cdlProjection = Nothing
    , _cdlPageToken = Nothing
    , _cdlMaxResults = Nothing
    }

-- | Column to use for sorting results
cdlOrderBy :: Lens' ChromeosDevicesList (Maybe ChromeosDevicesListOrderBy)
cdlOrderBy
  = lens _cdlOrderBy (\ s a -> s{_cdlOrderBy = a})

-- | Full path of the organizational unit or its ID
cdlOrgUnitPath :: Lens' ChromeosDevicesList (Maybe Text)
cdlOrgUnitPath
  = lens _cdlOrgUnitPath
      (\ s a -> s{_cdlOrgUnitPath = a})

-- | Immutable ID of the G Suite account
cdlCustomerId :: Lens' ChromeosDevicesList Text
cdlCustomerId
  = lens _cdlCustomerId
      (\ s a -> s{_cdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
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

-- | Token to specify next page in the list
cdlPageToken :: Lens' ChromeosDevicesList (Maybe Text)
cdlPageToken
  = lens _cdlPageToken (\ s a -> s{_cdlPageToken = a})

-- | Maximum number of results to return. Default is 100
cdlMaxResults :: Lens' ChromeosDevicesList (Maybe Int32)
cdlMaxResults
  = lens _cdlMaxResults
      (\ s a -> s{_cdlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ChromeosDevicesList where
        type Rs ChromeosDevicesList = ChromeOSDevices
        type Scopes ChromeosDevicesList =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos",
               "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
        requestClient ChromeosDevicesList'{..}
          = go _cdlCustomerId _cdlOrderBy _cdlOrgUnitPath
              _cdlSortOrder
              _cdlQuery
              _cdlProjection
              _cdlPageToken
              _cdlMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesListResource)
                      mempty
