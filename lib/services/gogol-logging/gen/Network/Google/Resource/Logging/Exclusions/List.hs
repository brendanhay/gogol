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
-- Module      : Network.Google.Resource.Logging.Exclusions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.exclusions.list@.
module Network.Google.Resource.Logging.Exclusions.List
    (
    -- * REST Resource
      ExclusionsListResource

    -- * Creating a Request
    , exclusionsList
    , ExclusionsList

    -- * Request Lenses
    , excParent
    , excXgafv
    , excUploadProtocol
    , excAccessToken
    , excUploadType
    , excPageToken
    , excPageSize
    , excCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.exclusions.list@ method which the
-- 'ExclusionsList' request conforms to.
type ExclusionsListResource =
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
-- /See:/ 'exclusionsList' smart constructor.
data ExclusionsList =
  ExclusionsList'
    { _excParent :: !Text
    , _excXgafv :: !(Maybe Xgafv)
    , _excUploadProtocol :: !(Maybe Text)
    , _excAccessToken :: !(Maybe Text)
    , _excUploadType :: !(Maybe Text)
    , _excPageToken :: !(Maybe Text)
    , _excPageSize :: !(Maybe (Textual Int32))
    , _excCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'excParent'
--
-- * 'excXgafv'
--
-- * 'excUploadProtocol'
--
-- * 'excAccessToken'
--
-- * 'excUploadType'
--
-- * 'excPageToken'
--
-- * 'excPageSize'
--
-- * 'excCallback'
exclusionsList
    :: Text -- ^ 'excParent'
    -> ExclusionsList
exclusionsList pExcParent_ =
  ExclusionsList'
    { _excParent = pExcParent_
    , _excXgafv = Nothing
    , _excUploadProtocol = Nothing
    , _excAccessToken = Nothing
    , _excUploadType = Nothing
    , _excPageToken = Nothing
    , _excPageSize = Nothing
    , _excCallback = Nothing
    }


-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
excParent :: Lens' ExclusionsList Text
excParent
  = lens _excParent (\ s a -> s{_excParent = a})

-- | V1 error format.
excXgafv :: Lens' ExclusionsList (Maybe Xgafv)
excXgafv = lens _excXgafv (\ s a -> s{_excXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
excUploadProtocol :: Lens' ExclusionsList (Maybe Text)
excUploadProtocol
  = lens _excUploadProtocol
      (\ s a -> s{_excUploadProtocol = a})

-- | OAuth access token.
excAccessToken :: Lens' ExclusionsList (Maybe Text)
excAccessToken
  = lens _excAccessToken
      (\ s a -> s{_excAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
excUploadType :: Lens' ExclusionsList (Maybe Text)
excUploadType
  = lens _excUploadType
      (\ s a -> s{_excUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
excPageToken :: Lens' ExclusionsList (Maybe Text)
excPageToken
  = lens _excPageToken (\ s a -> s{_excPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
excPageSize :: Lens' ExclusionsList (Maybe Int32)
excPageSize
  = lens _excPageSize (\ s a -> s{_excPageSize = a}) .
      mapping _Coerce

-- | JSONP
excCallback :: Lens' ExclusionsList (Maybe Text)
excCallback
  = lens _excCallback (\ s a -> s{_excCallback = a})

instance GoogleRequest ExclusionsList where
        type Rs ExclusionsList = ListExclusionsResponse
        type Scopes ExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ExclusionsList'{..}
          = go _excParent _excXgafv _excUploadProtocol
              _excAccessToken
              _excUploadType
              _excPageToken
              _excPageSize
              _excCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy ExclusionsListResource)
                      mempty
