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
-- Module      : Network.Google.Resource.Logging.Organizations.Exclusions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.exclusions.list@.
module Network.Google.Resource.Logging.Organizations.Exclusions.List
    (
    -- * REST Resource
      OrganizationsExclusionsListResource

    -- * Creating a Request
    , organizationsExclusionsList
    , OrganizationsExclusionsList

    -- * Request Lenses
    , oelParent
    , oelXgafv
    , oelUploadProtocol
    , oelAccessToken
    , oelUploadType
    , oelPageToken
    , oelPageSize
    , oelCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.exclusions.list@ method which the
-- 'OrganizationsExclusionsList' request conforms to.
type OrganizationsExclusionsListResource =
     "v2" :>
       Capture "parent" Text :>
         "exclusions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListExclusionsResponse

-- | Lists all the exclusions in a parent resource.
--
-- /See:/ 'organizationsExclusionsList' smart constructor.
data OrganizationsExclusionsList =
  OrganizationsExclusionsList'
    { _oelParent :: !Text
    , _oelXgafv :: !(Maybe Xgafv)
    , _oelUploadProtocol :: !(Maybe Text)
    , _oelAccessToken :: !(Maybe Text)
    , _oelUploadType :: !(Maybe Text)
    , _oelPageToken :: !(Maybe Text)
    , _oelPageSize :: !(Maybe (Textual Int32))
    , _oelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oelParent'
--
-- * 'oelXgafv'
--
-- * 'oelUploadProtocol'
--
-- * 'oelAccessToken'
--
-- * 'oelUploadType'
--
-- * 'oelPageToken'
--
-- * 'oelPageSize'
--
-- * 'oelCallback'
organizationsExclusionsList
    :: Text -- ^ 'oelParent'
    -> OrganizationsExclusionsList
organizationsExclusionsList pOelParent_ =
  OrganizationsExclusionsList'
    { _oelParent = pOelParent_
    , _oelXgafv = Nothing
    , _oelUploadProtocol = Nothing
    , _oelAccessToken = Nothing
    , _oelUploadType = Nothing
    , _oelPageToken = Nothing
    , _oelPageSize = Nothing
    , _oelCallback = Nothing
    }


-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
oelParent :: Lens' OrganizationsExclusionsList Text
oelParent
  = lens _oelParent (\ s a -> s{_oelParent = a})

-- | V1 error format.
oelXgafv :: Lens' OrganizationsExclusionsList (Maybe Xgafv)
oelXgafv = lens _oelXgafv (\ s a -> s{_oelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oelUploadProtocol :: Lens' OrganizationsExclusionsList (Maybe Text)
oelUploadProtocol
  = lens _oelUploadProtocol
      (\ s a -> s{_oelUploadProtocol = a})

-- | OAuth access token.
oelAccessToken :: Lens' OrganizationsExclusionsList (Maybe Text)
oelAccessToken
  = lens _oelAccessToken
      (\ s a -> s{_oelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oelUploadType :: Lens' OrganizationsExclusionsList (Maybe Text)
oelUploadType
  = lens _oelUploadType
      (\ s a -> s{_oelUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
oelPageToken :: Lens' OrganizationsExclusionsList (Maybe Text)
oelPageToken
  = lens _oelPageToken (\ s a -> s{_oelPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
oelPageSize :: Lens' OrganizationsExclusionsList (Maybe Int32)
oelPageSize
  = lens _oelPageSize (\ s a -> s{_oelPageSize = a}) .
      mapping _Coerce

-- | JSONP
oelCallback :: Lens' OrganizationsExclusionsList (Maybe Text)
oelCallback
  = lens _oelCallback (\ s a -> s{_oelCallback = a})

instance GoogleRequest OrganizationsExclusionsList
         where
        type Rs OrganizationsExclusionsList =
             ListExclusionsResponse
        type Scopes OrganizationsExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsExclusionsList'{..}
          = go _oelParent _oelXgafv _oelUploadProtocol
              _oelAccessToken
              _oelUploadType
              _oelPageToken
              _oelPageSize
              _oelCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsExclusionsListResource)
                      mempty
