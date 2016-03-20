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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete data associated with a previous upload.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.deleteUploadData@.
module Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
    (
    -- * REST Resource
      ManagementUploadsDeleteUploadDataResource

    -- * Creating a Request
    , managementUploadsDeleteUploadData
    , ManagementUploadsDeleteUploadData

    -- * Request Lenses
    , mududWebPropertyId
    , mududCustomDataSourceId
    , mududPayload
    , mududAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.uploads.deleteUploadData@ method which the
-- 'ManagementUploadsDeleteUploadData' request conforms to.
type ManagementUploadsDeleteUploadDataResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customDataSources" :>
                     Capture "customDataSourceId" Text :>
                       "deleteUploadData" :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             AnalyticsDataimportDeleteUploadDataRequest
                             :> Post '[JSON] ()

-- | Delete data associated with a previous upload.
--
-- /See:/ 'managementUploadsDeleteUploadData' smart constructor.
data ManagementUploadsDeleteUploadData = ManagementUploadsDeleteUploadData
    { _mududWebPropertyId      :: !Text
    , _mududCustomDataSourceId :: !Text
    , _mududPayload            :: !AnalyticsDataimportDeleteUploadDataRequest
    , _mududAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsDeleteUploadData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mududWebPropertyId'
--
-- * 'mududCustomDataSourceId'
--
-- * 'mududPayload'
--
-- * 'mududAccountId'
managementUploadsDeleteUploadData
    :: Text -- ^ 'mududWebPropertyId'
    -> Text -- ^ 'mududCustomDataSourceId'
    -> AnalyticsDataimportDeleteUploadDataRequest -- ^ 'mududPayload'
    -> Text -- ^ 'mududAccountId'
    -> ManagementUploadsDeleteUploadData
managementUploadsDeleteUploadData pMududWebPropertyId_ pMududCustomDataSourceId_ pMududPayload_ pMududAccountId_ =
    ManagementUploadsDeleteUploadData
    { _mududWebPropertyId = pMududWebPropertyId_
    , _mududCustomDataSourceId = pMududCustomDataSourceId_
    , _mududPayload = pMududPayload_
    , _mududAccountId = pMududAccountId_
    }

-- | Web property Id for the uploads to be deleted.
mududWebPropertyId :: Lens' ManagementUploadsDeleteUploadData Text
mududWebPropertyId
  = lens _mududWebPropertyId
      (\ s a -> s{_mududWebPropertyId = a})

-- | Custom data source Id for the uploads to be deleted.
mududCustomDataSourceId :: Lens' ManagementUploadsDeleteUploadData Text
mududCustomDataSourceId
  = lens _mududCustomDataSourceId
      (\ s a -> s{_mududCustomDataSourceId = a})

-- | Multipart request metadata.
mududPayload :: Lens' ManagementUploadsDeleteUploadData AnalyticsDataimportDeleteUploadDataRequest
mududPayload
  = lens _mududPayload (\ s a -> s{_mududPayload = a})

-- | Account Id for the uploads to be deleted.
mududAccountId :: Lens' ManagementUploadsDeleteUploadData Text
mududAccountId
  = lens _mududAccountId
      (\ s a -> s{_mududAccountId = a})

instance GoogleRequest
         ManagementUploadsDeleteUploadData where
        type Rs ManagementUploadsDeleteUploadData = ()
        requestClient ManagementUploadsDeleteUploadData{..}
          = go _mududAccountId _mududWebPropertyId
              _mududCustomDataSourceId
              (Just AltJSON)
              _mududPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementUploadsDeleteUploadDataResource)
                      mempty
