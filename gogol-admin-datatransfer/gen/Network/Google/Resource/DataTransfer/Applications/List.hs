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
-- Module      : Network.Google.Resource.DataTransfer.Applications.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the applications available for data transfer for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.applications.list@.
module Network.Google.Resource.DataTransfer.Applications.List
    (
    -- * REST Resource
      ApplicationsListResource

    -- * Creating a Request
    , applicationsList
    , ApplicationsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alCustomerId
    , alPageToken
    , alMaxResults
    , alCallback
    ) where

import Network.Google.DataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @datatransfer.applications.list@ method which the
-- 'ApplicationsList' request conforms to.
type ApplicationsListResource =
     "admin" :>
       "datatransfer" :>
         "v1" :>
           "applications" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customerId" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ApplicationsListResponse

-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ 'applicationsList' smart constructor.
data ApplicationsList =
  ApplicationsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alCustomerId :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alMaxResults :: !(Maybe (Textual Int32))
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alCustomerId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
--
-- * 'alCallback'
applicationsList
    :: ApplicationsList
applicationsList =
  ApplicationsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alCustomerId = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = Nothing
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' ApplicationsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' ApplicationsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' ApplicationsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' ApplicationsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Immutable ID of the Google Workspace account.
alCustomerId :: Lens' ApplicationsList (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | Token to specify next page in the list.
alPageToken :: Lens' ApplicationsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Maximum number of results to return. Default is 100.
alMaxResults :: Lens' ApplicationsList (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Coerce

-- | JSONP
alCallback :: Lens' ApplicationsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest ApplicationsList where
        type Rs ApplicationsList = ApplicationsListResponse
        type Scopes ApplicationsList =
             '["https://www.googleapis.com/auth/admin.datatransfer",
               "https://www.googleapis.com/auth/admin.datatransfer.readonly"]
        requestClient ApplicationsList'{..}
          = go _alXgafv _alUploadProtocol _alAccessToken
              _alUploadType
              _alCustomerId
              _alPageToken
              _alMaxResults
              _alCallback
              (Just AltJSON)
              dataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsListResource)
                      mempty
