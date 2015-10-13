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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.UploadData
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload data for a custom data source.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsUploadData@.
module Network.Google.Resource.Analytics.Management.Uploads.UploadData
    (
    -- * REST Resource
      ManagementUploadsUploadDataResource

    -- * Creating a Request
    , managementUploadsUploadData'
    , ManagementUploadsUploadData'

    -- * Request Lenses
    , muudWebPropertyId
    , muudCustomDataSourceId
    , muudMedia
    , muudAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsUploadData@ method which the
-- 'ManagementUploadsUploadData'' request conforms to.
type ManagementUploadsUploadDataResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "uploads" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] RequestBody :>
                         Post '[JSON] Upload

-- | Upload data for a custom data source.
--
-- /See:/ 'managementUploadsUploadData'' smart constructor.
data ManagementUploadsUploadData' = ManagementUploadsUploadData'
    { _muudWebPropertyId      :: !Text
    , _muudCustomDataSourceId :: !Text
    , _muudMedia              :: !Stream
    , _muudAccountId          :: !Text
    }

-- | Creates a value of 'ManagementUploadsUploadData'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muudWebPropertyId'
--
-- * 'muudCustomDataSourceId'
--
-- * 'muudMedia'
--
-- * 'muudAccountId'
managementUploadsUploadData'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsUploadData'
managementUploadsUploadData' pMuudWebPropertyId_ pMuudCustomDataSourceId_ pMuudMedia_ pMuudAccountId_ =
    ManagementUploadsUploadData'
    { _muudWebPropertyId = pMuudWebPropertyId_
    , _muudCustomDataSourceId = pMuudCustomDataSourceId_
    , _muudMedia = pMuudMedia_
    , _muudAccountId = pMuudAccountId_
    }

-- | Web property UA-string associated with the upload.
muudWebPropertyId :: Lens' ManagementUploadsUploadData' Text
muudWebPropertyId
  = lens _muudWebPropertyId
      (\ s a -> s{_muudWebPropertyId = a})

-- | Custom data source Id to which the data being uploaded belongs.
muudCustomDataSourceId :: Lens' ManagementUploadsUploadData' Text
muudCustomDataSourceId
  = lens _muudCustomDataSourceId
      (\ s a -> s{_muudCustomDataSourceId = a})

muudMedia :: Lens' ManagementUploadsUploadData' Stream
muudMedia
  = lens _muudMedia (\ s a -> s{_muudMedia = a})

-- | Account Id associated with the upload.
muudAccountId :: Lens' ManagementUploadsUploadData' Text
muudAccountId
  = lens _muudAccountId
      (\ s a -> s{_muudAccountId = a})

instance GoogleRequest ManagementUploadsUploadData'
         where
        type Rs ManagementUploadsUploadData' = Upload
        requestClient ManagementUploadsUploadData'{..}
          = go _muudAccountId _muudWebPropertyId
              _muudCustomDataSourceId
              (Just AltJSON)
              _muudMedia
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementUploadsUploadDataResource)
                      mempty
