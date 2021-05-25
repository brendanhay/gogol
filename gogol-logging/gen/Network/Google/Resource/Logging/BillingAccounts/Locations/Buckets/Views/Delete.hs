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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view from a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.views.delete@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Delete
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsViewsDeleteResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsViewsDelete
    , BillingAccountsLocationsBucketsViewsDelete

    -- * Request Lenses
    , balbvdXgafv
    , balbvdUploadProtocol
    , balbvdAccessToken
    , balbvdUploadType
    , balbvdName
    , balbvdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.views.delete@ method which the
-- 'BillingAccountsLocationsBucketsViewsDelete' request conforms to.
type BillingAccountsLocationsBucketsViewsDeleteResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a view from a bucket.
--
-- /See:/ 'billingAccountsLocationsBucketsViewsDelete' smart constructor.
data BillingAccountsLocationsBucketsViewsDelete =
  BillingAccountsLocationsBucketsViewsDelete'
    { _balbvdXgafv :: !(Maybe Xgafv)
    , _balbvdUploadProtocol :: !(Maybe Text)
    , _balbvdAccessToken :: !(Maybe Text)
    , _balbvdUploadType :: !(Maybe Text)
    , _balbvdName :: !Text
    , _balbvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbvdXgafv'
--
-- * 'balbvdUploadProtocol'
--
-- * 'balbvdAccessToken'
--
-- * 'balbvdUploadType'
--
-- * 'balbvdName'
--
-- * 'balbvdCallback'
billingAccountsLocationsBucketsViewsDelete
    :: Text -- ^ 'balbvdName'
    -> BillingAccountsLocationsBucketsViewsDelete
billingAccountsLocationsBucketsViewsDelete pBalbvdName_ =
  BillingAccountsLocationsBucketsViewsDelete'
    { _balbvdXgafv = Nothing
    , _balbvdUploadProtocol = Nothing
    , _balbvdAccessToken = Nothing
    , _balbvdUploadType = Nothing
    , _balbvdName = pBalbvdName_
    , _balbvdCallback = Nothing
    }


-- | V1 error format.
balbvdXgafv :: Lens' BillingAccountsLocationsBucketsViewsDelete (Maybe Xgafv)
balbvdXgafv
  = lens _balbvdXgafv (\ s a -> s{_balbvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbvdUploadProtocol :: Lens' BillingAccountsLocationsBucketsViewsDelete (Maybe Text)
balbvdUploadProtocol
  = lens _balbvdUploadProtocol
      (\ s a -> s{_balbvdUploadProtocol = a})

-- | OAuth access token.
balbvdAccessToken :: Lens' BillingAccountsLocationsBucketsViewsDelete (Maybe Text)
balbvdAccessToken
  = lens _balbvdAccessToken
      (\ s a -> s{_balbvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbvdUploadType :: Lens' BillingAccountsLocationsBucketsViewsDelete (Maybe Text)
balbvdUploadType
  = lens _balbvdUploadType
      (\ s a -> s{_balbvdUploadType = a})

-- | Required. The full resource name of the view to delete:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
balbvdName :: Lens' BillingAccountsLocationsBucketsViewsDelete Text
balbvdName
  = lens _balbvdName (\ s a -> s{_balbvdName = a})

-- | JSONP
balbvdCallback :: Lens' BillingAccountsLocationsBucketsViewsDelete (Maybe Text)
balbvdCallback
  = lens _balbvdCallback
      (\ s a -> s{_balbvdCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsViewsDelete
         where
        type Rs BillingAccountsLocationsBucketsViewsDelete =
             Empty
        type Scopes
               BillingAccountsLocationsBucketsViewsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsViewsDelete'{..}
          = go _balbvdName _balbvdXgafv _balbvdUploadProtocol
              _balbvdAccessToken
              _balbvdUploadType
              _balbvdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsBucketsViewsDeleteResource)
                      mempty
