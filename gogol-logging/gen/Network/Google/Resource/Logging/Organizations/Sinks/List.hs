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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.list@.
module Network.Google.Resource.Logging.Organizations.Sinks.List
    (
    -- * REST Resource
      OrganizationsSinksListResource

    -- * Creating a Request
    , organizationsSinksList
    , OrganizationsSinksList

    -- * Request Lenses
    , oslParent
    , oslXgafv
    , oslUploadProtocol
    , oslAccessToken
    , oslUploadType
    , oslPageToken
    , oslPageSize
    , oslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.list@ method which the
-- 'OrganizationsSinksList' request conforms to.
type OrganizationsSinksListResource =
     "v2" :>
       Capture "parent" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSinksResponse

-- | Lists sinks.
--
-- /See:/ 'organizationsSinksList' smart constructor.
data OrganizationsSinksList = OrganizationsSinksList'
    { _oslParent         :: !Text
    , _oslXgafv          :: !(Maybe Xgafv)
    , _oslUploadProtocol :: !(Maybe Text)
    , _oslAccessToken    :: !(Maybe Text)
    , _oslUploadType     :: !(Maybe Text)
    , _oslPageToken      :: !(Maybe Text)
    , _oslPageSize       :: !(Maybe (Textual Int32))
    , _oslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslParent'
--
-- * 'oslXgafv'
--
-- * 'oslUploadProtocol'
--
-- * 'oslAccessToken'
--
-- * 'oslUploadType'
--
-- * 'oslPageToken'
--
-- * 'oslPageSize'
--
-- * 'oslCallback'
organizationsSinksList
    :: Text -- ^ 'oslParent'
    -> OrganizationsSinksList
organizationsSinksList pOslParent_ =
    OrganizationsSinksList'
    { _oslParent = pOslParent_
    , _oslXgafv = Nothing
    , _oslUploadProtocol = Nothing
    , _oslAccessToken = Nothing
    , _oslUploadType = Nothing
    , _oslPageToken = Nothing
    , _oslPageSize = Nothing
    , _oslCallback = Nothing
    }

-- | Required. The parent resource whose sinks are to be listed:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
oslParent :: Lens' OrganizationsSinksList Text
oslParent
  = lens _oslParent (\ s a -> s{_oslParent = a})

-- | V1 error format.
oslXgafv :: Lens' OrganizationsSinksList (Maybe Xgafv)
oslXgafv = lens _oslXgafv (\ s a -> s{_oslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oslUploadProtocol :: Lens' OrganizationsSinksList (Maybe Text)
oslUploadProtocol
  = lens _oslUploadProtocol
      (\ s a -> s{_oslUploadProtocol = a})

-- | OAuth access token.
oslAccessToken :: Lens' OrganizationsSinksList (Maybe Text)
oslAccessToken
  = lens _oslAccessToken
      (\ s a -> s{_oslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oslUploadType :: Lens' OrganizationsSinksList (Maybe Text)
oslUploadType
  = lens _oslUploadType
      (\ s a -> s{_oslUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
oslPageToken :: Lens' OrganizationsSinksList (Maybe Text)
oslPageToken
  = lens _oslPageToken (\ s a -> s{_oslPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
oslPageSize :: Lens' OrganizationsSinksList (Maybe Int32)
oslPageSize
  = lens _oslPageSize (\ s a -> s{_oslPageSize = a}) .
      mapping _Coerce

-- | JSONP
oslCallback :: Lens' OrganizationsSinksList (Maybe Text)
oslCallback
  = lens _oslCallback (\ s a -> s{_oslCallback = a})

instance GoogleRequest OrganizationsSinksList where
        type Rs OrganizationsSinksList = ListSinksResponse
        type Scopes OrganizationsSinksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsSinksList'{..}
          = go _oslParent _oslXgafv _oslUploadProtocol
              _oslAccessToken
              _oslUploadType
              _oslPageToken
              _oslPageSize
              _oslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksListResource)
                      mempty
