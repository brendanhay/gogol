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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.undelete@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Undelete
    (
    -- * REST Resource
      OrganizationsLocationsBucketsUndeleteResource

    -- * Creating a Request
    , organizationsLocationsBucketsUndelete
    , OrganizationsLocationsBucketsUndelete

    -- * Request Lenses
    , olbuXgafv
    , olbuUploadProtocol
    , olbuAccessToken
    , olbuUploadType
    , olbuPayload
    , olbuName
    , olbuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.undelete@ method which the
-- 'OrganizationsLocationsBucketsUndelete' request conforms to.
type OrganizationsLocationsBucketsUndeleteResource =
     "v2" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteBucketRequest :>
                       Post '[JSON] Empty

-- | Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ 'organizationsLocationsBucketsUndelete' smart constructor.
data OrganizationsLocationsBucketsUndelete =
  OrganizationsLocationsBucketsUndelete'
    { _olbuXgafv :: !(Maybe Xgafv)
    , _olbuUploadProtocol :: !(Maybe Text)
    , _olbuAccessToken :: !(Maybe Text)
    , _olbuUploadType :: !(Maybe Text)
    , _olbuPayload :: !UndeleteBucketRequest
    , _olbuName :: !Text
    , _olbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbuXgafv'
--
-- * 'olbuUploadProtocol'
--
-- * 'olbuAccessToken'
--
-- * 'olbuUploadType'
--
-- * 'olbuPayload'
--
-- * 'olbuName'
--
-- * 'olbuCallback'
organizationsLocationsBucketsUndelete
    :: UndeleteBucketRequest -- ^ 'olbuPayload'
    -> Text -- ^ 'olbuName'
    -> OrganizationsLocationsBucketsUndelete
organizationsLocationsBucketsUndelete pOlbuPayload_ pOlbuName_ =
  OrganizationsLocationsBucketsUndelete'
    { _olbuXgafv = Nothing
    , _olbuUploadProtocol = Nothing
    , _olbuAccessToken = Nothing
    , _olbuUploadType = Nothing
    , _olbuPayload = pOlbuPayload_
    , _olbuName = pOlbuName_
    , _olbuCallback = Nothing
    }


-- | V1 error format.
olbuXgafv :: Lens' OrganizationsLocationsBucketsUndelete (Maybe Xgafv)
olbuXgafv
  = lens _olbuXgafv (\ s a -> s{_olbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbuUploadProtocol :: Lens' OrganizationsLocationsBucketsUndelete (Maybe Text)
olbuUploadProtocol
  = lens _olbuUploadProtocol
      (\ s a -> s{_olbuUploadProtocol = a})

-- | OAuth access token.
olbuAccessToken :: Lens' OrganizationsLocationsBucketsUndelete (Maybe Text)
olbuAccessToken
  = lens _olbuAccessToken
      (\ s a -> s{_olbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbuUploadType :: Lens' OrganizationsLocationsBucketsUndelete (Maybe Text)
olbuUploadType
  = lens _olbuUploadType
      (\ s a -> s{_olbuUploadType = a})

-- | Multipart request metadata.
olbuPayload :: Lens' OrganizationsLocationsBucketsUndelete UndeleteBucketRequest
olbuPayload
  = lens _olbuPayload (\ s a -> s{_olbuPayload = a})

-- | Required. The full resource name of the bucket to undelete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
olbuName :: Lens' OrganizationsLocationsBucketsUndelete Text
olbuName = lens _olbuName (\ s a -> s{_olbuName = a})

-- | JSONP
olbuCallback :: Lens' OrganizationsLocationsBucketsUndelete (Maybe Text)
olbuCallback
  = lens _olbuCallback (\ s a -> s{_olbuCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsUndelete
         where
        type Rs OrganizationsLocationsBucketsUndelete = Empty
        type Scopes OrganizationsLocationsBucketsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsUndelete'{..}
          = go _olbuName _olbuXgafv _olbuUploadProtocol
              _olbuAccessToken
              _olbuUploadType
              _olbuCallback
              (Just AltJSON)
              _olbuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsUndeleteResource)
                      mempty
