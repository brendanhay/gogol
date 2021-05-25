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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.views.patch@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.Patch
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsViewsPatchResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsViewsPatch
    , BillingAccountsLocationsBucketsViewsPatch

    -- * Request Lenses
    , balbvpXgafv
    , balbvpUploadProtocol
    , balbvpUpdateMask
    , balbvpAccessToken
    , balbvpUploadType
    , balbvpPayload
    , balbvpName
    , balbvpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.views.patch@ method which the
-- 'BillingAccountsLocationsBucketsViewsPatch' request conforms to.
type BillingAccountsLocationsBucketsViewsPatchResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogView :> Patch '[JSON] LogView

-- | Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ 'billingAccountsLocationsBucketsViewsPatch' smart constructor.
data BillingAccountsLocationsBucketsViewsPatch =
  BillingAccountsLocationsBucketsViewsPatch'
    { _balbvpXgafv :: !(Maybe Xgafv)
    , _balbvpUploadProtocol :: !(Maybe Text)
    , _balbvpUpdateMask :: !(Maybe GFieldMask)
    , _balbvpAccessToken :: !(Maybe Text)
    , _balbvpUploadType :: !(Maybe Text)
    , _balbvpPayload :: !LogView
    , _balbvpName :: !Text
    , _balbvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsViewsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbvpXgafv'
--
-- * 'balbvpUploadProtocol'
--
-- * 'balbvpUpdateMask'
--
-- * 'balbvpAccessToken'
--
-- * 'balbvpUploadType'
--
-- * 'balbvpPayload'
--
-- * 'balbvpName'
--
-- * 'balbvpCallback'
billingAccountsLocationsBucketsViewsPatch
    :: LogView -- ^ 'balbvpPayload'
    -> Text -- ^ 'balbvpName'
    -> BillingAccountsLocationsBucketsViewsPatch
billingAccountsLocationsBucketsViewsPatch pBalbvpPayload_ pBalbvpName_ =
  BillingAccountsLocationsBucketsViewsPatch'
    { _balbvpXgafv = Nothing
    , _balbvpUploadProtocol = Nothing
    , _balbvpUpdateMask = Nothing
    , _balbvpAccessToken = Nothing
    , _balbvpUploadType = Nothing
    , _balbvpPayload = pBalbvpPayload_
    , _balbvpName = pBalbvpName_
    , _balbvpCallback = Nothing
    }


-- | V1 error format.
balbvpXgafv :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe Xgafv)
balbvpXgafv
  = lens _balbvpXgafv (\ s a -> s{_balbvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbvpUploadProtocol :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe Text)
balbvpUploadProtocol
  = lens _balbvpUploadProtocol
      (\ s a -> s{_balbvpUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in view that need an
-- update. A field will be overwritten if, and only if, it is in the update
-- mask. name and output only fields cannot be updated.For a detailed
-- FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
balbvpUpdateMask :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe GFieldMask)
balbvpUpdateMask
  = lens _balbvpUpdateMask
      (\ s a -> s{_balbvpUpdateMask = a})

-- | OAuth access token.
balbvpAccessToken :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe Text)
balbvpAccessToken
  = lens _balbvpAccessToken
      (\ s a -> s{_balbvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbvpUploadType :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe Text)
balbvpUploadType
  = lens _balbvpUploadType
      (\ s a -> s{_balbvpUploadType = a})

-- | Multipart request metadata.
balbvpPayload :: Lens' BillingAccountsLocationsBucketsViewsPatch LogView
balbvpPayload
  = lens _balbvpPayload
      (\ s a -> s{_balbvpPayload = a})

-- | Required. The full resource name of the view to update
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
balbvpName :: Lens' BillingAccountsLocationsBucketsViewsPatch Text
balbvpName
  = lens _balbvpName (\ s a -> s{_balbvpName = a})

-- | JSONP
balbvpCallback :: Lens' BillingAccountsLocationsBucketsViewsPatch (Maybe Text)
balbvpCallback
  = lens _balbvpCallback
      (\ s a -> s{_balbvpCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsViewsPatch
         where
        type Rs BillingAccountsLocationsBucketsViewsPatch =
             LogView
        type Scopes BillingAccountsLocationsBucketsViewsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsViewsPatch'{..}
          = go _balbvpName _balbvpXgafv _balbvpUploadProtocol
              _balbvpUpdateMask
              _balbvpAccessToken
              _balbvpUploadType
              _balbvpCallback
              (Just AltJSON)
              _balbvpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsBucketsViewsPatchResource)
                      mempty
