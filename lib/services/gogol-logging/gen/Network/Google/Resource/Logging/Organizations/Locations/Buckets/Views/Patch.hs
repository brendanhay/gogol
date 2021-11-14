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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view. This method replaces the following fields in the
-- existing view with values from the new view: filter.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.patch@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Patch
    (
    -- * REST Resource
      OrganizationsLocationsBucketsViewsPatchResource

    -- * Creating a Request
    , organizationsLocationsBucketsViewsPatch
    , OrganizationsLocationsBucketsViewsPatch

    -- * Request Lenses
    , olbvpXgafv
    , olbvpUploadProtocol
    , olbvpUpdateMask
    , olbvpAccessToken
    , olbvpUploadType
    , olbvpPayload
    , olbvpName
    , olbvpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.views.patch@ method which the
-- 'OrganizationsLocationsBucketsViewsPatch' request conforms to.
type OrganizationsLocationsBucketsViewsPatchResource
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
-- /See:/ 'organizationsLocationsBucketsViewsPatch' smart constructor.
data OrganizationsLocationsBucketsViewsPatch =
  OrganizationsLocationsBucketsViewsPatch'
    { _olbvpXgafv :: !(Maybe Xgafv)
    , _olbvpUploadProtocol :: !(Maybe Text)
    , _olbvpUpdateMask :: !(Maybe GFieldMask)
    , _olbvpAccessToken :: !(Maybe Text)
    , _olbvpUploadType :: !(Maybe Text)
    , _olbvpPayload :: !LogView
    , _olbvpName :: !Text
    , _olbvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsViewsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbvpXgafv'
--
-- * 'olbvpUploadProtocol'
--
-- * 'olbvpUpdateMask'
--
-- * 'olbvpAccessToken'
--
-- * 'olbvpUploadType'
--
-- * 'olbvpPayload'
--
-- * 'olbvpName'
--
-- * 'olbvpCallback'
organizationsLocationsBucketsViewsPatch
    :: LogView -- ^ 'olbvpPayload'
    -> Text -- ^ 'olbvpName'
    -> OrganizationsLocationsBucketsViewsPatch
organizationsLocationsBucketsViewsPatch pOlbvpPayload_ pOlbvpName_ =
  OrganizationsLocationsBucketsViewsPatch'
    { _olbvpXgafv = Nothing
    , _olbvpUploadProtocol = Nothing
    , _olbvpUpdateMask = Nothing
    , _olbvpAccessToken = Nothing
    , _olbvpUploadType = Nothing
    , _olbvpPayload = pOlbvpPayload_
    , _olbvpName = pOlbvpName_
    , _olbvpCallback = Nothing
    }


-- | V1 error format.
olbvpXgafv :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe Xgafv)
olbvpXgafv
  = lens _olbvpXgafv (\ s a -> s{_olbvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbvpUploadProtocol :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe Text)
olbvpUploadProtocol
  = lens _olbvpUploadProtocol
      (\ s a -> s{_olbvpUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in view that need an
-- update. A field will be overwritten if, and only if, it is in the update
-- mask. name and output only fields cannot be updated.For a detailed
-- FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
olbvpUpdateMask :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe GFieldMask)
olbvpUpdateMask
  = lens _olbvpUpdateMask
      (\ s a -> s{_olbvpUpdateMask = a})

-- | OAuth access token.
olbvpAccessToken :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe Text)
olbvpAccessToken
  = lens _olbvpAccessToken
      (\ s a -> s{_olbvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbvpUploadType :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe Text)
olbvpUploadType
  = lens _olbvpUploadType
      (\ s a -> s{_olbvpUploadType = a})

-- | Multipart request metadata.
olbvpPayload :: Lens' OrganizationsLocationsBucketsViewsPatch LogView
olbvpPayload
  = lens _olbvpPayload (\ s a -> s{_olbvpPayload = a})

-- | Required. The full resource name of the view to update
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
olbvpName :: Lens' OrganizationsLocationsBucketsViewsPatch Text
olbvpName
  = lens _olbvpName (\ s a -> s{_olbvpName = a})

-- | JSONP
olbvpCallback :: Lens' OrganizationsLocationsBucketsViewsPatch (Maybe Text)
olbvpCallback
  = lens _olbvpCallback
      (\ s a -> s{_olbvpCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsViewsPatch
         where
        type Rs OrganizationsLocationsBucketsViewsPatch =
             LogView
        type Scopes OrganizationsLocationsBucketsViewsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsViewsPatch'{..}
          = go _olbvpName _olbvpXgafv _olbvpUploadProtocol
              _olbvpUpdateMask
              _olbvpAccessToken
              _olbvpUploadType
              _olbvpCallback
              (Just AltJSON)
              _olbvpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsBucketsViewsPatchResource)
                      mempty
