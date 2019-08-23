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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.sinks.list@.
module Network.Google.Resource.Logging.Folders.Sinks.List
    (
    -- * REST Resource
      FoldersSinksListResource

    -- * Creating a Request
    , foldersSinksList
    , FoldersSinksList

    -- * Request Lenses
    , fslParent
    , fslXgafv
    , fslUploadProtocol
    , fslAccessToken
    , fslUploadType
    , fslPageToken
    , fslPageSize
    , fslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.list@ method which the
-- 'FoldersSinksList' request conforms to.
type FoldersSinksListResource =
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
-- /See:/ 'foldersSinksList' smart constructor.
data FoldersSinksList =
  FoldersSinksList'
    { _fslParent         :: !Text
    , _fslXgafv          :: !(Maybe Xgafv)
    , _fslUploadProtocol :: !(Maybe Text)
    , _fslAccessToken    :: !(Maybe Text)
    , _fslUploadType     :: !(Maybe Text)
    , _fslPageToken      :: !(Maybe Text)
    , _fslPageSize       :: !(Maybe (Textual Int32))
    , _fslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fslParent'
--
-- * 'fslXgafv'
--
-- * 'fslUploadProtocol'
--
-- * 'fslAccessToken'
--
-- * 'fslUploadType'
--
-- * 'fslPageToken'
--
-- * 'fslPageSize'
--
-- * 'fslCallback'
foldersSinksList
    :: Text -- ^ 'fslParent'
    -> FoldersSinksList
foldersSinksList pFslParent_ =
  FoldersSinksList'
    { _fslParent = pFslParent_
    , _fslXgafv = Nothing
    , _fslUploadProtocol = Nothing
    , _fslAccessToken = Nothing
    , _fslUploadType = Nothing
    , _fslPageToken = Nothing
    , _fslPageSize = Nothing
    , _fslCallback = Nothing
    }


-- | Required. The parent resource whose sinks are to be listed:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
fslParent :: Lens' FoldersSinksList Text
fslParent
  = lens _fslParent (\ s a -> s{_fslParent = a})

-- | V1 error format.
fslXgafv :: Lens' FoldersSinksList (Maybe Xgafv)
fslXgafv = lens _fslXgafv (\ s a -> s{_fslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fslUploadProtocol :: Lens' FoldersSinksList (Maybe Text)
fslUploadProtocol
  = lens _fslUploadProtocol
      (\ s a -> s{_fslUploadProtocol = a})

-- | OAuth access token.
fslAccessToken :: Lens' FoldersSinksList (Maybe Text)
fslAccessToken
  = lens _fslAccessToken
      (\ s a -> s{_fslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fslUploadType :: Lens' FoldersSinksList (Maybe Text)
fslUploadType
  = lens _fslUploadType
      (\ s a -> s{_fslUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
fslPageToken :: Lens' FoldersSinksList (Maybe Text)
fslPageToken
  = lens _fslPageToken (\ s a -> s{_fslPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
fslPageSize :: Lens' FoldersSinksList (Maybe Int32)
fslPageSize
  = lens _fslPageSize (\ s a -> s{_fslPageSize = a}) .
      mapping _Coerce

-- | JSONP
fslCallback :: Lens' FoldersSinksList (Maybe Text)
fslCallback
  = lens _fslCallback (\ s a -> s{_fslCallback = a})

instance GoogleRequest FoldersSinksList where
        type Rs FoldersSinksList = ListSinksResponse
        type Scopes FoldersSinksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersSinksList'{..}
          = go _fslParent _fslXgafv _fslUploadProtocol
              _fslAccessToken
              _fslUploadType
              _fslPageToken
              _fslPageSize
              _fslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksListResource)
                      mempty
