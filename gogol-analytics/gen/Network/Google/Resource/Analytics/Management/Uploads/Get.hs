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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List uploads to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsGet@.
module Network.Google.Resource.Analytics.Management.Uploads.Get
    (
    -- * REST Resource
      ManagementUploadsGetResource

    -- * Creating a Request
    , managementUploadsGet'
    , ManagementUploadsGet'

    -- * Request Lenses
    , mugWebPropertyId
    , mugCustomDataSourceId
    , mugAccountId
    , mugUploadId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsGet@ method which the
-- 'ManagementUploadsGet'' request conforms to.
type ManagementUploadsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "uploads" :>
                     Capture "uploadId" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Upload

-- | List uploads to which the user has access.
--
-- /See:/ 'managementUploadsGet'' smart constructor.
data ManagementUploadsGet' = ManagementUploadsGet'
    { _mugWebPropertyId      :: !Text
    , _mugCustomDataSourceId :: !Text
    , _mugAccountId          :: !Text
    , _mugUploadId           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mugWebPropertyId'
--
-- * 'mugCustomDataSourceId'
--
-- * 'mugAccountId'
--
-- * 'mugUploadId'
managementUploadsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'uploadId'
    -> ManagementUploadsGet'
managementUploadsGet' pMugWebPropertyId_ pMugCustomDataSourceId_ pMugAccountId_ pMugUploadId_ =
    ManagementUploadsGet'
    { _mugWebPropertyId = pMugWebPropertyId_
    , _mugCustomDataSourceId = pMugCustomDataSourceId_
    , _mugAccountId = pMugAccountId_
    , _mugUploadId = pMugUploadId_
    }

-- | Web property Id for the upload to retrieve.
mugWebPropertyId :: Lens' ManagementUploadsGet' Text
mugWebPropertyId
  = lens _mugWebPropertyId
      (\ s a -> s{_mugWebPropertyId = a})

-- | Custom data source Id for upload to retrieve.
mugCustomDataSourceId :: Lens' ManagementUploadsGet' Text
mugCustomDataSourceId
  = lens _mugCustomDataSourceId
      (\ s a -> s{_mugCustomDataSourceId = a})

-- | Account Id for the upload to retrieve.
mugAccountId :: Lens' ManagementUploadsGet' Text
mugAccountId
  = lens _mugAccountId (\ s a -> s{_mugAccountId = a})

-- | Upload Id to retrieve.
mugUploadId :: Lens' ManagementUploadsGet' Text
mugUploadId
  = lens _mugUploadId (\ s a -> s{_mugUploadId = a})

instance GoogleRequest ManagementUploadsGet' where
        type Rs ManagementUploadsGet' = Upload
        requestClient ManagementUploadsGet'{..}
          = go _mugAccountId _mugWebPropertyId
              _mugCustomDataSourceId
              _mugUploadId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementUploadsGetResource)
                      mempty
