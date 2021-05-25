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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative field values, possibly filtered. This
-- method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.list@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.List
    (
    -- * REST Resource
      CreativeFieldValuesListResource

    -- * Creating a Request
    , creativeFieldValuesList
    , CreativeFieldValuesList

    -- * Request Lenses
    , cfvlCreativeFieldId
    , cfvlXgafv
    , cfvlUploadProtocol
    , cfvlAccessToken
    , cfvlSearchString
    , cfvlUploadType
    , cfvlIds
    , cfvlProFileId
    , cfvlSortOrder
    , cfvlPageToken
    , cfvlSortField
    , cfvlMaxResults
    , cfvlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.list@ method which the
-- 'CreativeFieldValuesList' request conforms to.
type CreativeFieldValuesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "searchString" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParams "ids" (Textual Int64) :>
                               QueryParam "sortOrder"
                                 CreativeFieldValuesListSortOrder
                                 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     CreativeFieldValuesListSortField
                                     :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             CreativeFieldValuesListResponse

-- | Retrieves a list of creative field values, possibly filtered. This
-- method supports paging.
--
-- /See:/ 'creativeFieldValuesList' smart constructor.
data CreativeFieldValuesList =
  CreativeFieldValuesList'
    { _cfvlCreativeFieldId :: !(Textual Int64)
    , _cfvlXgafv :: !(Maybe Xgafv)
    , _cfvlUploadProtocol :: !(Maybe Text)
    , _cfvlAccessToken :: !(Maybe Text)
    , _cfvlSearchString :: !(Maybe Text)
    , _cfvlUploadType :: !(Maybe Text)
    , _cfvlIds :: !(Maybe [Textual Int64])
    , _cfvlProFileId :: !(Textual Int64)
    , _cfvlSortOrder :: !CreativeFieldValuesListSortOrder
    , _cfvlPageToken :: !(Maybe Text)
    , _cfvlSortField :: !CreativeFieldValuesListSortField
    , _cfvlMaxResults :: !(Textual Int32)
    , _cfvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldValuesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvlCreativeFieldId'
--
-- * 'cfvlXgafv'
--
-- * 'cfvlUploadProtocol'
--
-- * 'cfvlAccessToken'
--
-- * 'cfvlSearchString'
--
-- * 'cfvlUploadType'
--
-- * 'cfvlIds'
--
-- * 'cfvlProFileId'
--
-- * 'cfvlSortOrder'
--
-- * 'cfvlPageToken'
--
-- * 'cfvlSortField'
--
-- * 'cfvlMaxResults'
--
-- * 'cfvlCallback'
creativeFieldValuesList
    :: Int64 -- ^ 'cfvlCreativeFieldId'
    -> Int64 -- ^ 'cfvlProFileId'
    -> CreativeFieldValuesList
creativeFieldValuesList pCfvlCreativeFieldId_ pCfvlProFileId_ =
  CreativeFieldValuesList'
    { _cfvlCreativeFieldId = _Coerce # pCfvlCreativeFieldId_
    , _cfvlXgafv = Nothing
    , _cfvlUploadProtocol = Nothing
    , _cfvlAccessToken = Nothing
    , _cfvlSearchString = Nothing
    , _cfvlUploadType = Nothing
    , _cfvlIds = Nothing
    , _cfvlProFileId = _Coerce # pCfvlProFileId_
    , _cfvlSortOrder = CFVLSOAscending
    , _cfvlPageToken = Nothing
    , _cfvlSortField = CFVLSFID
    , _cfvlMaxResults = 1000
    , _cfvlCallback = Nothing
    }


-- | Creative field ID for this creative field value.
cfvlCreativeFieldId :: Lens' CreativeFieldValuesList Int64
cfvlCreativeFieldId
  = lens _cfvlCreativeFieldId
      (\ s a -> s{_cfvlCreativeFieldId = a})
      . _Coerce

-- | V1 error format.
cfvlXgafv :: Lens' CreativeFieldValuesList (Maybe Xgafv)
cfvlXgafv
  = lens _cfvlXgafv (\ s a -> s{_cfvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfvlUploadProtocol :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlUploadProtocol
  = lens _cfvlUploadProtocol
      (\ s a -> s{_cfvlUploadProtocol = a})

-- | OAuth access token.
cfvlAccessToken :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlAccessToken
  = lens _cfvlAccessToken
      (\ s a -> s{_cfvlAccessToken = a})

-- | Allows searching for creative field values by their values. Wildcards
-- (e.g. *) are not allowed.
cfvlSearchString :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlSearchString
  = lens _cfvlSearchString
      (\ s a -> s{_cfvlSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfvlUploadType :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlUploadType
  = lens _cfvlUploadType
      (\ s a -> s{_cfvlUploadType = a})

-- | Select only creative field values with these IDs.
cfvlIds :: Lens' CreativeFieldValuesList [Int64]
cfvlIds
  = lens _cfvlIds (\ s a -> s{_cfvlIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
cfvlProFileId :: Lens' CreativeFieldValuesList Int64
cfvlProFileId
  = lens _cfvlProFileId
      (\ s a -> s{_cfvlProFileId = a})
      . _Coerce

-- | Order of sorted results.
cfvlSortOrder :: Lens' CreativeFieldValuesList CreativeFieldValuesListSortOrder
cfvlSortOrder
  = lens _cfvlSortOrder
      (\ s a -> s{_cfvlSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
cfvlPageToken :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlPageToken
  = lens _cfvlPageToken
      (\ s a -> s{_cfvlPageToken = a})

-- | Field by which to sort the list.
cfvlSortField :: Lens' CreativeFieldValuesList CreativeFieldValuesListSortField
cfvlSortField
  = lens _cfvlSortField
      (\ s a -> s{_cfvlSortField = a})

-- | Maximum number of results to return.
cfvlMaxResults :: Lens' CreativeFieldValuesList Int32
cfvlMaxResults
  = lens _cfvlMaxResults
      (\ s a -> s{_cfvlMaxResults = a})
      . _Coerce

-- | JSONP
cfvlCallback :: Lens' CreativeFieldValuesList (Maybe Text)
cfvlCallback
  = lens _cfvlCallback (\ s a -> s{_cfvlCallback = a})

instance GoogleRequest CreativeFieldValuesList where
        type Rs CreativeFieldValuesList =
             CreativeFieldValuesListResponse
        type Scopes CreativeFieldValuesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesList'{..}
          = go _cfvlProFileId _cfvlCreativeFieldId _cfvlXgafv
              _cfvlUploadProtocol
              _cfvlAccessToken
              _cfvlSearchString
              _cfvlUploadType
              (_cfvlIds ^. _Default)
              (Just _cfvlSortOrder)
              _cfvlPageToken
              (Just _cfvlSortField)
              (Just _cfvlMaxResults)
              _cfvlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesListResource)
                      mempty
