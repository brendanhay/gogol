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
-- Module      : Network.Google.Resource.Logging.Folders.Exclusions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.exclusions.list@.
module Network.Google.Resource.Logging.Folders.Exclusions.List
    (
    -- * REST Resource
      FoldersExclusionsListResource

    -- * Creating a Request
    , foldersExclusionsList
    , FoldersExclusionsList

    -- * Request Lenses
    , felParent
    , felXgafv
    , felUploadProtocol
    , felAccessToken
    , felUploadType
    , felPageToken
    , felPageSize
    , felCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.exclusions.list@ method which the
-- 'FoldersExclusionsList' request conforms to.
type FoldersExclusionsListResource =
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
-- /See:/ 'foldersExclusionsList' smart constructor.
data FoldersExclusionsList =
  FoldersExclusionsList'
    { _felParent         :: !Text
    , _felXgafv          :: !(Maybe Xgafv)
    , _felUploadProtocol :: !(Maybe Text)
    , _felAccessToken    :: !(Maybe Text)
    , _felUploadType     :: !(Maybe Text)
    , _felPageToken      :: !(Maybe Text)
    , _felPageSize       :: !(Maybe (Textual Int32))
    , _felCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'felParent'
--
-- * 'felXgafv'
--
-- * 'felUploadProtocol'
--
-- * 'felAccessToken'
--
-- * 'felUploadType'
--
-- * 'felPageToken'
--
-- * 'felPageSize'
--
-- * 'felCallback'
foldersExclusionsList
    :: Text -- ^ 'felParent'
    -> FoldersExclusionsList
foldersExclusionsList pFelParent_ =
  FoldersExclusionsList'
    { _felParent = pFelParent_
    , _felXgafv = Nothing
    , _felUploadProtocol = Nothing
    , _felAccessToken = Nothing
    , _felUploadType = Nothing
    , _felPageToken = Nothing
    , _felPageSize = Nothing
    , _felCallback = Nothing
    }


-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
felParent :: Lens' FoldersExclusionsList Text
felParent
  = lens _felParent (\ s a -> s{_felParent = a})

-- | V1 error format.
felXgafv :: Lens' FoldersExclusionsList (Maybe Xgafv)
felXgafv = lens _felXgafv (\ s a -> s{_felXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
felUploadProtocol :: Lens' FoldersExclusionsList (Maybe Text)
felUploadProtocol
  = lens _felUploadProtocol
      (\ s a -> s{_felUploadProtocol = a})

-- | OAuth access token.
felAccessToken :: Lens' FoldersExclusionsList (Maybe Text)
felAccessToken
  = lens _felAccessToken
      (\ s a -> s{_felAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
felUploadType :: Lens' FoldersExclusionsList (Maybe Text)
felUploadType
  = lens _felUploadType
      (\ s a -> s{_felUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
felPageToken :: Lens' FoldersExclusionsList (Maybe Text)
felPageToken
  = lens _felPageToken (\ s a -> s{_felPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
felPageSize :: Lens' FoldersExclusionsList (Maybe Int32)
felPageSize
  = lens _felPageSize (\ s a -> s{_felPageSize = a}) .
      mapping _Coerce

-- | JSONP
felCallback :: Lens' FoldersExclusionsList (Maybe Text)
felCallback
  = lens _felCallback (\ s a -> s{_felCallback = a})

instance GoogleRequest FoldersExclusionsList where
        type Rs FoldersExclusionsList =
             ListExclusionsResponse
        type Scopes FoldersExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersExclusionsList'{..}
          = go _felParent _felXgafv _felUploadProtocol
              _felAccessToken
              _felUploadType
              _felPageToken
              _felPageSize
              _felCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersExclusionsListResource)
                      mempty
