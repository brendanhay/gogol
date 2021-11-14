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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Buckets.Views.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.buckets.views.get@.
module Network.Google.Resource.Logging.BillingAccounts.Buckets.Views.Get
    (
    -- * REST Resource
      BillingAccountsBucketsViewsGetResource

    -- * Creating a Request
    , billingAccountsBucketsViewsGet
    , BillingAccountsBucketsViewsGet

    -- * Request Lenses
    , babvgXgafv
    , babvgUploadProtocol
    , babvgAccessToken
    , babvgUploadType
    , babvgName
    , babvgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.buckets.views.get@ method which the
-- 'BillingAccountsBucketsViewsGet' request conforms to.
type BillingAccountsBucketsViewsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogView

-- | Gets a view.
--
-- /See:/ 'billingAccountsBucketsViewsGet' smart constructor.
data BillingAccountsBucketsViewsGet =
  BillingAccountsBucketsViewsGet'
    { _babvgXgafv :: !(Maybe Xgafv)
    , _babvgUploadProtocol :: !(Maybe Text)
    , _babvgAccessToken :: !(Maybe Text)
    , _babvgUploadType :: !(Maybe Text)
    , _babvgName :: !Text
    , _babvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsBucketsViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'babvgXgafv'
--
-- * 'babvgUploadProtocol'
--
-- * 'babvgAccessToken'
--
-- * 'babvgUploadType'
--
-- * 'babvgName'
--
-- * 'babvgCallback'
billingAccountsBucketsViewsGet
    :: Text -- ^ 'babvgName'
    -> BillingAccountsBucketsViewsGet
billingAccountsBucketsViewsGet pBabvgName_ =
  BillingAccountsBucketsViewsGet'
    { _babvgXgafv = Nothing
    , _babvgUploadProtocol = Nothing
    , _babvgAccessToken = Nothing
    , _babvgUploadType = Nothing
    , _babvgName = pBabvgName_
    , _babvgCallback = Nothing
    }


-- | V1 error format.
babvgXgafv :: Lens' BillingAccountsBucketsViewsGet (Maybe Xgafv)
babvgXgafv
  = lens _babvgXgafv (\ s a -> s{_babvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
babvgUploadProtocol :: Lens' BillingAccountsBucketsViewsGet (Maybe Text)
babvgUploadProtocol
  = lens _babvgUploadProtocol
      (\ s a -> s{_babvgUploadProtocol = a})

-- | OAuth access token.
babvgAccessToken :: Lens' BillingAccountsBucketsViewsGet (Maybe Text)
babvgAccessToken
  = lens _babvgAccessToken
      (\ s a -> s{_babvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
babvgUploadType :: Lens' BillingAccountsBucketsViewsGet (Maybe Text)
babvgUploadType
  = lens _babvgUploadType
      (\ s a -> s{_babvgUploadType = a})

-- | Required. The resource name of the policy:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
babvgName :: Lens' BillingAccountsBucketsViewsGet Text
babvgName
  = lens _babvgName (\ s a -> s{_babvgName = a})

-- | JSONP
babvgCallback :: Lens' BillingAccountsBucketsViewsGet (Maybe Text)
babvgCallback
  = lens _babvgCallback
      (\ s a -> s{_babvgCallback = a})

instance GoogleRequest BillingAccountsBucketsViewsGet
         where
        type Rs BillingAccountsBucketsViewsGet = LogView
        type Scopes BillingAccountsBucketsViewsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsBucketsViewsGet'{..}
          = go _babvgName _babvgXgafv _babvgUploadProtocol
              _babvgAccessToken
              _babvgUploadType
              _babvgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsBucketsViewsGetResource)
                      mempty
