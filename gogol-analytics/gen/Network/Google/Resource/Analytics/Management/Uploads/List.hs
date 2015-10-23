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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.list@.
module Network.Google.Resource.Analytics.Management.Uploads.List
    (
    -- * REST Resource
      ManagementUploadsListResource

    -- * Creating a Request
    , managementUploadsList
    , ManagementUploadsList

    -- * Request Lenses
    , mulWebPropertyId
    , mulCustomDataSourceId
    , mulAccountId
    , mulStartIndex
    , mulMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.uploads.list@ method which the
-- 'ManagementUploadsList' request conforms to.
type ManagementUploadsListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customDataSources" :>
                     Capture "customDataSourceId" Text :>
                       "uploads" :>
                         QueryParam "start-index" Int32 :>
                           QueryParam "max-results" Int32 :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Uploads

-- | List uploads to which the user has access.
--
-- /See:/ 'managementUploadsList' smart constructor.
data ManagementUploadsList = ManagementUploadsList
    { _mulWebPropertyId      :: !Text
    , _mulCustomDataSourceId :: !Text
    , _mulAccountId          :: !Text
    , _mulStartIndex         :: !(Maybe Int32)
    , _mulMaxResults         :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mulWebPropertyId'
--
-- * 'mulCustomDataSourceId'
--
-- * 'mulAccountId'
--
-- * 'mulStartIndex'
--
-- * 'mulMaxResults'
managementUploadsList
    :: Text -- ^ 'mulWebPropertyId'
    -> Text -- ^ 'mulCustomDataSourceId'
    -> Text -- ^ 'mulAccountId'
    -> ManagementUploadsList
managementUploadsList pMulWebPropertyId_ pMulCustomDataSourceId_ pMulAccountId_ =
    ManagementUploadsList
    { _mulWebPropertyId = pMulWebPropertyId_
    , _mulCustomDataSourceId = pMulCustomDataSourceId_
    , _mulAccountId = pMulAccountId_
    , _mulStartIndex = Nothing
    , _mulMaxResults = Nothing
    }

-- | Web property Id for the uploads to retrieve.
mulWebPropertyId :: Lens' ManagementUploadsList Text
mulWebPropertyId
  = lens _mulWebPropertyId
      (\ s a -> s{_mulWebPropertyId = a})

-- | Custom data source Id for uploads to retrieve.
mulCustomDataSourceId :: Lens' ManagementUploadsList Text
mulCustomDataSourceId
  = lens _mulCustomDataSourceId
      (\ s a -> s{_mulCustomDataSourceId = a})

-- | Account Id for the uploads to retrieve.
mulAccountId :: Lens' ManagementUploadsList Text
mulAccountId
  = lens _mulAccountId (\ s a -> s{_mulAccountId = a})

-- | A 1-based index of the first upload to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mulStartIndex :: Lens' ManagementUploadsList (Maybe Int32)
mulStartIndex
  = lens _mulStartIndex
      (\ s a -> s{_mulStartIndex = a})

-- | The maximum number of uploads to include in this response.
mulMaxResults :: Lens' ManagementUploadsList (Maybe Int32)
mulMaxResults
  = lens _mulMaxResults
      (\ s a -> s{_mulMaxResults = a})

instance GoogleRequest ManagementUploadsList where
        type Rs ManagementUploadsList = Uploads
        requestClient ManagementUploadsList{..}
          = go _mulAccountId _mulWebPropertyId
              _mulCustomDataSourceId
              _mulStartIndex
              _mulMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementUploadsListResource)
                      mempty
