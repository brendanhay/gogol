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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.views.create@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Create
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsViewsCreateResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsViewsCreate
    , BillingAccountsLocationsBucketsViewsCreate

    -- * Request Lenses
    , balbvcParent
    , balbvcXgafv
    , balbvcUploadProtocol
    , balbvcViewId
    , balbvcAccessToken
    , balbvcUploadType
    , balbvcPayload
    , balbvcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.views.create@ method which the
-- 'BillingAccountsLocationsBucketsViewsCreate' request conforms to.
type BillingAccountsLocationsBucketsViewsCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "views" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "viewId" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogView :> Post '[JSON] LogView

-- | Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ 'billingAccountsLocationsBucketsViewsCreate' smart constructor.
data BillingAccountsLocationsBucketsViewsCreate =
  BillingAccountsLocationsBucketsViewsCreate'
    { _balbvcParent :: !Text
    , _balbvcXgafv :: !(Maybe Xgafv)
    , _balbvcUploadProtocol :: !(Maybe Text)
    , _balbvcViewId :: !(Maybe Text)
    , _balbvcAccessToken :: !(Maybe Text)
    , _balbvcUploadType :: !(Maybe Text)
    , _balbvcPayload :: !LogView
    , _balbvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsViewsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbvcParent'
--
-- * 'balbvcXgafv'
--
-- * 'balbvcUploadProtocol'
--
-- * 'balbvcViewId'
--
-- * 'balbvcAccessToken'
--
-- * 'balbvcUploadType'
--
-- * 'balbvcPayload'
--
-- * 'balbvcCallback'
billingAccountsLocationsBucketsViewsCreate
    :: Text -- ^ 'balbvcParent'
    -> LogView -- ^ 'balbvcPayload'
    -> BillingAccountsLocationsBucketsViewsCreate
billingAccountsLocationsBucketsViewsCreate pBalbvcParent_ pBalbvcPayload_ =
  BillingAccountsLocationsBucketsViewsCreate'
    { _balbvcParent = pBalbvcParent_
    , _balbvcXgafv = Nothing
    , _balbvcUploadProtocol = Nothing
    , _balbvcViewId = Nothing
    , _balbvcAccessToken = Nothing
    , _balbvcUploadType = Nothing
    , _balbvcPayload = pBalbvcPayload_
    , _balbvcCallback = Nothing
    }


-- | Required. The bucket in which to create the view
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-logging-project\/locations\/my-location\/buckets\/my-bucket\"
balbvcParent :: Lens' BillingAccountsLocationsBucketsViewsCreate Text
balbvcParent
  = lens _balbvcParent (\ s a -> s{_balbvcParent = a})

-- | V1 error format.
balbvcXgafv :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Xgafv)
balbvcXgafv
  = lens _balbvcXgafv (\ s a -> s{_balbvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbvcUploadProtocol :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Text)
balbvcUploadProtocol
  = lens _balbvcUploadProtocol
      (\ s a -> s{_balbvcUploadProtocol = a})

-- | Required. The id to use for this view.
balbvcViewId :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Text)
balbvcViewId
  = lens _balbvcViewId (\ s a -> s{_balbvcViewId = a})

-- | OAuth access token.
balbvcAccessToken :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Text)
balbvcAccessToken
  = lens _balbvcAccessToken
      (\ s a -> s{_balbvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbvcUploadType :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Text)
balbvcUploadType
  = lens _balbvcUploadType
      (\ s a -> s{_balbvcUploadType = a})

-- | Multipart request metadata.
balbvcPayload :: Lens' BillingAccountsLocationsBucketsViewsCreate LogView
balbvcPayload
  = lens _balbvcPayload
      (\ s a -> s{_balbvcPayload = a})

-- | JSONP
balbvcCallback :: Lens' BillingAccountsLocationsBucketsViewsCreate (Maybe Text)
balbvcCallback
  = lens _balbvcCallback
      (\ s a -> s{_balbvcCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsViewsCreate
         where
        type Rs BillingAccountsLocationsBucketsViewsCreate =
             LogView
        type Scopes
               BillingAccountsLocationsBucketsViewsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsViewsCreate'{..}
          = go _balbvcParent _balbvcXgafv _balbvcUploadProtocol
              _balbvcViewId
              _balbvcAccessToken
              _balbvcUploadType
              _balbvcCallback
              (Just AltJSON)
              _balbvcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsBucketsViewsCreateResource)
                      mempty
