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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.list@.
module Network.Google.Resource.Directory.MobileDevices.List
    (
    -- * REST Resource
      MobileDevicesListResource

    -- * Creating a Request
    , mobileDevicesList
    , MobileDevicesList

    -- * Request Lenses
    , mdlOrderBy
    , mdlCustomerId
    , mdlSortOrder
    , mdlQuery
    , mdlProjection
    , mdlPageToken
    , mdlMaxResults
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                   QueryParam "orderBy" MobileDevicesListOrderBy :>
                     QueryParam "sortOrder" MobileDevicesListSortOrder :>
                       QueryParam "query" Text :>
                         QueryParam "projection" MobileDevicesListProjection
                           :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] MobileDevices

-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ 'mobileDevicesList' smart constructor.
data MobileDevicesList = MobileDevicesList
    { _mdlOrderBy    :: !(Maybe MobileDevicesListOrderBy)
    , _mdlCustomerId :: !Text
    , _mdlSortOrder  :: !(Maybe MobileDevicesListSortOrder)
    , _mdlQuery      :: !(Maybe Text)
    , _mdlProjection :: !(Maybe MobileDevicesListProjection)
    , _mdlPageToken  :: !(Maybe Text)
    , _mdlMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlOrderBy'
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
mobileDevicesList
    :: Text -- ^ 'mdlCustomerId'
    -> MobileDevicesList
mobileDevicesList pMdlCustomerId_ =
    MobileDevicesList
    { _mdlOrderBy = Nothing
    , _mdlCustomerId = pMdlCustomerId_
    , _mdlSortOrder = Nothing
    , _mdlQuery = Nothing
    , _mdlProjection = Nothing
    , _mdlPageToken = Nothing
    , _mdlMaxResults = Nothing
    }

-- | Column to use for sorting results
mdlOrderBy :: Lens' MobileDevicesList (Maybe MobileDevicesListOrderBy)
mdlOrderBy
  = lens _mdlOrderBy (\ s a -> s{_mdlOrderBy = a})

-- | Immutable id of the Google Apps account
mdlCustomerId :: Lens' MobileDevicesList Text
mdlCustomerId
  = lens _mdlCustomerId
      (\ s a -> s{_mdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
mdlSortOrder :: Lens' MobileDevicesList (Maybe MobileDevicesListSortOrder)
mdlSortOrder
  = lens _mdlSortOrder (\ s a -> s{_mdlSortOrder = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/a\/bin\/answer.py?hl=en&answer=1408863#search
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

-- | Maximum number of results to return. Default is 100
mdlMaxResults :: Lens' MobileDevicesList (Maybe Int32)
mdlMaxResults
  = lens _mdlMaxResults
      (\ s a -> s{_mdlMaxResults = a})

instance GoogleRequest MobileDevicesList where
        type Rs MobileDevicesList = MobileDevices
        requestClient MobileDevicesList{..}
          = go _mdlCustomerId _mdlOrderBy _mdlSortOrder
              _mdlQuery
              _mdlProjection
              _mdlPageToken
              _mdlMaxResults
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesListResource)
                      mempty
