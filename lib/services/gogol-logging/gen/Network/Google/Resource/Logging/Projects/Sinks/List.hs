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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.sinks.list@.
module Network.Google.Resource.Logging.Projects.Sinks.List
    (
    -- * REST Resource
      ProjectsSinksListResource

    -- * Creating a Request
    , projectsSinksList
    , ProjectsSinksList

    -- * Request Lenses
    , pslParent
    , pslXgafv
    , pslUploadProtocol
    , pslAccessToken
    , pslUploadType
    , pslPageToken
    , pslPageSize
    , pslCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.list@ method which the
-- 'ProjectsSinksList' request conforms to.
type ProjectsSinksListResource =
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
-- /See:/ 'projectsSinksList' smart constructor.
data ProjectsSinksList =
  ProjectsSinksList'
    { _pslParent :: !Text
    , _pslXgafv :: !(Maybe Xgafv)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslAccessToken :: !(Maybe Text)
    , _pslUploadType :: !(Maybe Text)
    , _pslPageToken :: !(Maybe Text)
    , _pslPageSize :: !(Maybe (Textual Int32))
    , _pslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslParent'
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslPageToken'
--
-- * 'pslPageSize'
--
-- * 'pslCallback'
projectsSinksList
    :: Text -- ^ 'pslParent'
    -> ProjectsSinksList
projectsSinksList pPslParent_ =
  ProjectsSinksList'
    { _pslParent = pPslParent_
    , _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslPageToken = Nothing
    , _pslPageSize = Nothing
    , _pslCallback = Nothing
    }


-- | Required. The parent resource whose sinks are to be listed:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
pslParent :: Lens' ProjectsSinksList Text
pslParent
  = lens _pslParent (\ s a -> s{_pslParent = a})

-- | V1 error format.
pslXgafv :: Lens' ProjectsSinksList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSinksList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSinksList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSinksList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
pslPageToken :: Lens' ProjectsSinksList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
pslPageSize :: Lens' ProjectsSinksList (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a}) .
      mapping _Coerce

-- | JSONP
pslCallback :: Lens' ProjectsSinksList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSinksList where
        type Rs ProjectsSinksList = ListSinksResponse
        type Scopes ProjectsSinksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsSinksList'{..}
          = go _pslParent _pslXgafv _pslUploadProtocol
              _pslAccessToken
              _pslUploadType
              _pslPageToken
              _pslPageSize
              _pslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksListResource)
                      mempty
