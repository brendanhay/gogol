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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.list@.
module Network.Google.Resource.Logging.Organizations.Locations.List
    (
    -- * REST Resource
      OrganizationsLocationsListResource

    -- * Creating a Request
    , organizationsLocationsList
    , OrganizationsLocationsList

    -- * Request Lenses
    , orgXgafv
    , orgUploadProtocol
    , orgAccessToken
    , orgUploadType
    , orgName
    , orgFilter
    , orgPageToken
    , orgPageSize
    , orgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.list@ method which the
-- 'OrganizationsLocationsList' request conforms to.
type OrganizationsLocationsListResource =
     "v2" :>
       Capture "name" Text :>
         "locations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'organizationsLocationsList' smart constructor.
data OrganizationsLocationsList =
  OrganizationsLocationsList'
    { _orgXgafv :: !(Maybe Xgafv)
    , _orgUploadProtocol :: !(Maybe Text)
    , _orgAccessToken :: !(Maybe Text)
    , _orgUploadType :: !(Maybe Text)
    , _orgName :: !Text
    , _orgFilter :: !(Maybe Text)
    , _orgPageToken :: !(Maybe Text)
    , _orgPageSize :: !(Maybe (Textual Int32))
    , _orgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgXgafv'
--
-- * 'orgUploadProtocol'
--
-- * 'orgAccessToken'
--
-- * 'orgUploadType'
--
-- * 'orgName'
--
-- * 'orgFilter'
--
-- * 'orgPageToken'
--
-- * 'orgPageSize'
--
-- * 'orgCallback'
organizationsLocationsList
    :: Text -- ^ 'orgName'
    -> OrganizationsLocationsList
organizationsLocationsList pOrgName_ =
  OrganizationsLocationsList'
    { _orgXgafv = Nothing
    , _orgUploadProtocol = Nothing
    , _orgAccessToken = Nothing
    , _orgUploadType = Nothing
    , _orgName = pOrgName_
    , _orgFilter = Nothing
    , _orgPageToken = Nothing
    , _orgPageSize = Nothing
    , _orgCallback = Nothing
    }


-- | V1 error format.
orgXgafv :: Lens' OrganizationsLocationsList (Maybe Xgafv)
orgXgafv = lens _orgXgafv (\ s a -> s{_orgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orgUploadProtocol :: Lens' OrganizationsLocationsList (Maybe Text)
orgUploadProtocol
  = lens _orgUploadProtocol
      (\ s a -> s{_orgUploadProtocol = a})

-- | OAuth access token.
orgAccessToken :: Lens' OrganizationsLocationsList (Maybe Text)
orgAccessToken
  = lens _orgAccessToken
      (\ s a -> s{_orgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orgUploadType :: Lens' OrganizationsLocationsList (Maybe Text)
orgUploadType
  = lens _orgUploadType
      (\ s a -> s{_orgUploadType = a})

-- | The resource that owns the locations collection, if applicable.
orgName :: Lens' OrganizationsLocationsList Text
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
orgFilter :: Lens' OrganizationsLocationsList (Maybe Text)
orgFilter
  = lens _orgFilter (\ s a -> s{_orgFilter = a})

-- | A page token received from the next_page_token field in the response.
-- Send that page token to receive the subsequent page.
orgPageToken :: Lens' OrganizationsLocationsList (Maybe Text)
orgPageToken
  = lens _orgPageToken (\ s a -> s{_orgPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
orgPageSize :: Lens' OrganizationsLocationsList (Maybe Int32)
orgPageSize
  = lens _orgPageSize (\ s a -> s{_orgPageSize = a}) .
      mapping _Coerce

-- | JSONP
orgCallback :: Lens' OrganizationsLocationsList (Maybe Text)
orgCallback
  = lens _orgCallback (\ s a -> s{_orgCallback = a})

instance GoogleRequest OrganizationsLocationsList
         where
        type Rs OrganizationsLocationsList =
             ListLocationsResponse
        type Scopes OrganizationsLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLocationsList'{..}
          = go _orgName _orgXgafv _orgUploadProtocol
              _orgAccessToken
              _orgUploadType
              _orgFilter
              _orgPageToken
              _orgPageSize
              _orgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLocationsListResource)
                      mempty
