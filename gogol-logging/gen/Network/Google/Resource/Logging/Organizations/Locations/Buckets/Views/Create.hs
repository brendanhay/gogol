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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over logs in a bucket. A bucket may contain a maximum of
-- 50 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.create@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Create
    (
    -- * REST Resource
      OrganizationsLocationsBucketsViewsCreateResource

    -- * Creating a Request
    , organizationsLocationsBucketsViewsCreate
    , OrganizationsLocationsBucketsViewsCreate

    -- * Request Lenses
    , olbvcParent
    , olbvcXgafv
    , olbvcUploadProtocol
    , olbvcViewId
    , olbvcAccessToken
    , olbvcUploadType
    , olbvcPayload
    , olbvcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.views.create@ method which the
-- 'OrganizationsLocationsBucketsViewsCreate' request conforms to.
type OrganizationsLocationsBucketsViewsCreateResource
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
-- /See:/ 'organizationsLocationsBucketsViewsCreate' smart constructor.
data OrganizationsLocationsBucketsViewsCreate =
  OrganizationsLocationsBucketsViewsCreate'
    { _olbvcParent :: !Text
    , _olbvcXgafv :: !(Maybe Xgafv)
    , _olbvcUploadProtocol :: !(Maybe Text)
    , _olbvcViewId :: !(Maybe Text)
    , _olbvcAccessToken :: !(Maybe Text)
    , _olbvcUploadType :: !(Maybe Text)
    , _olbvcPayload :: !LogView
    , _olbvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsViewsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbvcParent'
--
-- * 'olbvcXgafv'
--
-- * 'olbvcUploadProtocol'
--
-- * 'olbvcViewId'
--
-- * 'olbvcAccessToken'
--
-- * 'olbvcUploadType'
--
-- * 'olbvcPayload'
--
-- * 'olbvcCallback'
organizationsLocationsBucketsViewsCreate
    :: Text -- ^ 'olbvcParent'
    -> LogView -- ^ 'olbvcPayload'
    -> OrganizationsLocationsBucketsViewsCreate
organizationsLocationsBucketsViewsCreate pOlbvcParent_ pOlbvcPayload_ =
  OrganizationsLocationsBucketsViewsCreate'
    { _olbvcParent = pOlbvcParent_
    , _olbvcXgafv = Nothing
    , _olbvcUploadProtocol = Nothing
    , _olbvcViewId = Nothing
    , _olbvcAccessToken = Nothing
    , _olbvcUploadType = Nothing
    , _olbvcPayload = pOlbvcPayload_
    , _olbvcCallback = Nothing
    }


-- | Required. The bucket in which to create the view
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-logging-project\/locations\/my-location\/buckets\/my-bucket\"
olbvcParent :: Lens' OrganizationsLocationsBucketsViewsCreate Text
olbvcParent
  = lens _olbvcParent (\ s a -> s{_olbvcParent = a})

-- | V1 error format.
olbvcXgafv :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Xgafv)
olbvcXgafv
  = lens _olbvcXgafv (\ s a -> s{_olbvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbvcUploadProtocol :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Text)
olbvcUploadProtocol
  = lens _olbvcUploadProtocol
      (\ s a -> s{_olbvcUploadProtocol = a})

-- | Required. The id to use for this view.
olbvcViewId :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Text)
olbvcViewId
  = lens _olbvcViewId (\ s a -> s{_olbvcViewId = a})

-- | OAuth access token.
olbvcAccessToken :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Text)
olbvcAccessToken
  = lens _olbvcAccessToken
      (\ s a -> s{_olbvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbvcUploadType :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Text)
olbvcUploadType
  = lens _olbvcUploadType
      (\ s a -> s{_olbvcUploadType = a})

-- | Multipart request metadata.
olbvcPayload :: Lens' OrganizationsLocationsBucketsViewsCreate LogView
olbvcPayload
  = lens _olbvcPayload (\ s a -> s{_olbvcPayload = a})

-- | JSONP
olbvcCallback :: Lens' OrganizationsLocationsBucketsViewsCreate (Maybe Text)
olbvcCallback
  = lens _olbvcCallback
      (\ s a -> s{_olbvcCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsViewsCreate
         where
        type Rs OrganizationsLocationsBucketsViewsCreate =
             LogView
        type Scopes OrganizationsLocationsBucketsViewsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsViewsCreate'{..}
          = go _olbvcParent _olbvcXgafv _olbvcUploadProtocol
              _olbvcViewId
              _olbvcAccessToken
              _olbvcUploadType
              _olbvcCallback
              (Just AltJSON)
              _olbvcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsBucketsViewsCreateResource)
                      mempty
