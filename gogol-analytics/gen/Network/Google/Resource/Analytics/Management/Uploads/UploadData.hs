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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload data for a custom data source.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.uploadData@.
module Network.Google.Resource.Analytics.Management.Uploads.UploadData
    (
    -- * REST Resource
      ManagementUploadsUploadDataResource

    -- * Creating a Request
    , managementUploadsUploadData
    , ManagementUploadsUploadData

    -- * Request Lenses
    , muudWebPropertyId
    , muudCustomDataSourceId
    , muudAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.uploads.uploadData@ method which the
-- 'ManagementUploadsUploadData' request conforms to.
type ManagementUploadsUploadDataResource =
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
                         QueryParam "alt" AltJSON :> Post '[JSON] Upload
       :<|>
       "upload" :>
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
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" AltMedia :>
                                 AltMedia :> Post '[JSON] Upload

-- | Upload data for a custom data source.
--
-- /See:/ 'managementUploadsUploadData' smart constructor.
data ManagementUploadsUploadData =
  ManagementUploadsUploadData'
    { _muudWebPropertyId :: !Text
    , _muudCustomDataSourceId :: !Text
    , _muudAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementUploadsUploadData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muudWebPropertyId'
--
-- * 'muudCustomDataSourceId'
--
-- * 'muudAccountId'
managementUploadsUploadData
    :: Text -- ^ 'muudWebPropertyId'
    -> Text -- ^ 'muudCustomDataSourceId'
    -> Text -- ^ 'muudAccountId'
    -> ManagementUploadsUploadData
managementUploadsUploadData pMuudWebPropertyId_ pMuudCustomDataSourceId_ pMuudAccountId_ =
  ManagementUploadsUploadData'
    { _muudWebPropertyId = pMuudWebPropertyId_
    , _muudCustomDataSourceId = pMuudCustomDataSourceId_
    , _muudAccountId = pMuudAccountId_
    }


-- | Web property UA-string associated with the upload.
muudWebPropertyId :: Lens' ManagementUploadsUploadData Text
muudWebPropertyId
  = lens _muudWebPropertyId
      (\ s a -> s{_muudWebPropertyId = a})

-- | Custom data source Id to which the data being uploaded belongs.
muudCustomDataSourceId :: Lens' ManagementUploadsUploadData Text
muudCustomDataSourceId
  = lens _muudCustomDataSourceId
      (\ s a -> s{_muudCustomDataSourceId = a})

-- | Account Id associated with the upload.
muudAccountId :: Lens' ManagementUploadsUploadData Text
muudAccountId
  = lens _muudAccountId
      (\ s a -> s{_muudAccountId = a})

instance GoogleRequest ManagementUploadsUploadData
         where
        type Rs ManagementUploadsUploadData = Upload
        type Scopes ManagementUploadsUploadData =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementUploadsUploadData'{..}
          = go _muudAccountId _muudWebPropertyId
              _muudCustomDataSourceId
              (Just AltJSON)
              analyticsService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ManagementUploadsUploadDataResource)
                      mempty

instance GoogleRequest
           (MediaUpload ManagementUploadsUploadData)
         where
        type Rs (MediaUpload ManagementUploadsUploadData) =
             Upload
        type Scopes (MediaUpload ManagementUploadsUploadData)
             = Scopes ManagementUploadsUploadData
        requestClient
          (MediaUpload ManagementUploadsUploadData'{..} body)
          = go _muudAccountId _muudWebPropertyId
              _muudCustomDataSourceId
              (Just AltJSON)
              (Just AltMedia)
              body
              analyticsService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ManagementUploadsUploadDataResource)
                      mempty
