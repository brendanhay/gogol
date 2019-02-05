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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.exclusions.list@.
module Network.Google.Resource.Logging.Exclusions.List
    (
    -- * REST Resource
      ExclusionsListResource

    -- * Creating a Request
    , exclusionsList
    , ExclusionsList

    -- * Request Lenses
    , eParent
    , eXgafv
    , eUploadProtocol
    , eAccessToken
    , eUploadType
    , ePageToken
    , ePageSize
    , eCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

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
data ExclusionsList = ExclusionsList'
    { _eParent         :: !Text
    , _eXgafv          :: !(Maybe Xgafv)
    , _eUploadProtocol :: !(Maybe Text)
    , _eAccessToken    :: !(Maybe Text)
    , _eUploadType     :: !(Maybe Text)
    , _ePageToken      :: !(Maybe Text)
    , _ePageSize       :: !(Maybe (Textual Int32))
    , _eCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eParent'
--
-- * 'eXgafv'
--
-- * 'eUploadProtocol'
--
-- * 'eAccessToken'
--
-- * 'eUploadType'
--
-- * 'ePageToken'
--
-- * 'ePageSize'
--
-- * 'eCallback'
exclusionsList
    :: Text -- ^ 'eParent'
    -> ExclusionsList
exclusionsList pEParent_ =
    ExclusionsList'
    { _eParent = pEParent_
    , _eXgafv = Nothing
    , _eUploadProtocol = Nothing
    , _eAccessToken = Nothing
    , _eUploadType = Nothing
    , _ePageToken = Nothing
    , _ePageSize = Nothing
    , _eCallback = Nothing
    }

-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
eParent :: Lens' ExclusionsList Text
eParent = lens _eParent (\ s a -> s{_eParent = a})

-- | V1 error format.
eXgafv :: Lens' ExclusionsList (Maybe Xgafv)
eXgafv = lens _eXgafv (\ s a -> s{_eXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eUploadProtocol :: Lens' ExclusionsList (Maybe Text)
eUploadProtocol
  = lens _eUploadProtocol
      (\ s a -> s{_eUploadProtocol = a})

-- | OAuth access token.
eAccessToken :: Lens' ExclusionsList (Maybe Text)
eAccessToken
  = lens _eAccessToken (\ s a -> s{_eAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eUploadType :: Lens' ExclusionsList (Maybe Text)
eUploadType
  = lens _eUploadType (\ s a -> s{_eUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
ePageToken :: Lens' ExclusionsList (Maybe Text)
ePageToken
  = lens _ePageToken (\ s a -> s{_ePageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
ePageSize :: Lens' ExclusionsList (Maybe Int32)
ePageSize
  = lens _ePageSize (\ s a -> s{_ePageSize = a}) .
      mapping _Coerce

-- | JSONP
eCallback :: Lens' ExclusionsList (Maybe Text)
eCallback
  = lens _eCallback (\ s a -> s{_eCallback = a})

instance GoogleRequest ExclusionsList where
        type Rs ExclusionsList = ListExclusionsResponse
        type Scopes ExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ExclusionsList'{..}
          = go _eParent _eXgafv _eUploadProtocol _eAccessToken
              _eUploadType
              _ePageToken
              _ePageSize
              _eCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy ExclusionsListResource)
                      mempty
