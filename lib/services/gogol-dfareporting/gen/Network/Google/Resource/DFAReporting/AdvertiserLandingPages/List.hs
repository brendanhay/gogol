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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of landing pages.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.list@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.List
    (
    -- * REST Resource
      AdvertiserLandingPagesListResource

    -- * Creating a Request
    , advertiserLandingPagesList
    , AdvertiserLandingPagesList

    -- * Request Lenses
    , alplXgafv
    , alplUploadProtocol
    , alplAccessToken
    , alplCampaignIds
    , alplSearchString
    , alplUploadType
    , alplIds
    , alplProFileId
    , alplSortOrder
    , alplPageToken
    , alplSortField
    , alplSubAccountId
    , alplAdvertiserIds
    , alplArchived
    , alplMaxResults
    , alplCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.list@ method which the
-- 'AdvertiserLandingPagesList' request conforms to.
type AdvertiserLandingPagesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParams "campaignIds" (Textual Int64) :>
                       QueryParam "searchString" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParams "ids" (Textual Int64) :>
                             QueryParam "sortOrder"
                               AdvertiserLandingPagesListSortOrder
                               :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "sortField"
                                   AdvertiserLandingPagesListSortField
                                   :>
                                   QueryParam "subaccountId" (Textual Int64) :>
                                     QueryParams "advertiserIds" (Textual Int64)
                                       :>
                                       QueryParam "archived" Bool :>
                                         QueryParam "maxResults" (Textual Int32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 AdvertiserLandingPagesListResponse

-- | Retrieves a list of landing pages.
--
-- /See:/ 'advertiserLandingPagesList' smart constructor.
data AdvertiserLandingPagesList =
  AdvertiserLandingPagesList'
    { _alplXgafv :: !(Maybe Xgafv)
    , _alplUploadProtocol :: !(Maybe Text)
    , _alplAccessToken :: !(Maybe Text)
    , _alplCampaignIds :: !(Maybe [Textual Int64])
    , _alplSearchString :: !(Maybe Text)
    , _alplUploadType :: !(Maybe Text)
    , _alplIds :: !(Maybe [Textual Int64])
    , _alplProFileId :: !(Textual Int64)
    , _alplSortOrder :: !AdvertiserLandingPagesListSortOrder
    , _alplPageToken :: !(Maybe Text)
    , _alplSortField :: !AdvertiserLandingPagesListSortField
    , _alplSubAccountId :: !(Maybe (Textual Int64))
    , _alplAdvertiserIds :: !(Maybe [Textual Int64])
    , _alplArchived :: !(Maybe Bool)
    , _alplMaxResults :: !(Textual Int32)
    , _alplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alplXgafv'
--
-- * 'alplUploadProtocol'
--
-- * 'alplAccessToken'
--
-- * 'alplCampaignIds'
--
-- * 'alplSearchString'
--
-- * 'alplUploadType'
--
-- * 'alplIds'
--
-- * 'alplProFileId'
--
-- * 'alplSortOrder'
--
-- * 'alplPageToken'
--
-- * 'alplSortField'
--
-- * 'alplSubAccountId'
--
-- * 'alplAdvertiserIds'
--
-- * 'alplArchived'
--
-- * 'alplMaxResults'
--
-- * 'alplCallback'
advertiserLandingPagesList
    :: Int64 -- ^ 'alplProFileId'
    -> AdvertiserLandingPagesList
advertiserLandingPagesList pAlplProFileId_ =
  AdvertiserLandingPagesList'
    { _alplXgafv = Nothing
    , _alplUploadProtocol = Nothing
    , _alplAccessToken = Nothing
    , _alplCampaignIds = Nothing
    , _alplSearchString = Nothing
    , _alplUploadType = Nothing
    , _alplIds = Nothing
    , _alplProFileId = _Coerce # pAlplProFileId_
    , _alplSortOrder = ALPLSOAscending
    , _alplPageToken = Nothing
    , _alplSortField = ALPLSFID
    , _alplSubAccountId = Nothing
    , _alplAdvertiserIds = Nothing
    , _alplArchived = Nothing
    , _alplMaxResults = 1000
    , _alplCallback = Nothing
    }


-- | V1 error format.
alplXgafv :: Lens' AdvertiserLandingPagesList (Maybe Xgafv)
alplXgafv
  = lens _alplXgafv (\ s a -> s{_alplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alplUploadProtocol :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplUploadProtocol
  = lens _alplUploadProtocol
      (\ s a -> s{_alplUploadProtocol = a})

-- | OAuth access token.
alplAccessToken :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplAccessToken
  = lens _alplAccessToken
      (\ s a -> s{_alplAccessToken = a})

-- | Select only landing pages that are associated with these campaigns.
alplCampaignIds :: Lens' AdvertiserLandingPagesList [Int64]
alplCampaignIds
  = lens _alplCampaignIds
      (\ s a -> s{_alplCampaignIds = a})
      . _Default
      . _Coerce

-- | Allows searching for landing pages by name or ID. Wildcards (*) are
-- allowed. For example, \"landingpage*2017\" will return landing pages
-- with names like \"landingpage July 2017\", \"landingpage March 2017\",
-- or simply \"landingpage 2017\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"landingpage\" will match campaigns with name \"my
-- landingpage\", \"landingpage 2015\", or simply \"landingpage\".
alplSearchString :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplSearchString
  = lens _alplSearchString
      (\ s a -> s{_alplSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alplUploadType :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplUploadType
  = lens _alplUploadType
      (\ s a -> s{_alplUploadType = a})

-- | Select only landing pages with these IDs.
alplIds :: Lens' AdvertiserLandingPagesList [Int64]
alplIds
  = lens _alplIds (\ s a -> s{_alplIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
alplProFileId :: Lens' AdvertiserLandingPagesList Int64
alplProFileId
  = lens _alplProFileId
      (\ s a -> s{_alplProFileId = a})
      . _Coerce

-- | Order of sorted results.
alplSortOrder :: Lens' AdvertiserLandingPagesList AdvertiserLandingPagesListSortOrder
alplSortOrder
  = lens _alplSortOrder
      (\ s a -> s{_alplSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
alplPageToken :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplPageToken
  = lens _alplPageToken
      (\ s a -> s{_alplPageToken = a})

-- | Field by which to sort the list.
alplSortField :: Lens' AdvertiserLandingPagesList AdvertiserLandingPagesListSortField
alplSortField
  = lens _alplSortField
      (\ s a -> s{_alplSortField = a})

-- | Select only landing pages that belong to this subaccount.
alplSubAccountId :: Lens' AdvertiserLandingPagesList (Maybe Int64)
alplSubAccountId
  = lens _alplSubAccountId
      (\ s a -> s{_alplSubAccountId = a})
      . mapping _Coerce

-- | Select only landing pages that belong to these advertisers.
alplAdvertiserIds :: Lens' AdvertiserLandingPagesList [Int64]
alplAdvertiserIds
  = lens _alplAdvertiserIds
      (\ s a -> s{_alplAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Select only archived landing pages. Don\'t set this field to select both
-- archived and non-archived landing pages.
alplArchived :: Lens' AdvertiserLandingPagesList (Maybe Bool)
alplArchived
  = lens _alplArchived (\ s a -> s{_alplArchived = a})

-- | Maximum number of results to return.
alplMaxResults :: Lens' AdvertiserLandingPagesList Int32
alplMaxResults
  = lens _alplMaxResults
      (\ s a -> s{_alplMaxResults = a})
      . _Coerce

-- | JSONP
alplCallback :: Lens' AdvertiserLandingPagesList (Maybe Text)
alplCallback
  = lens _alplCallback (\ s a -> s{_alplCallback = a})

instance GoogleRequest AdvertiserLandingPagesList
         where
        type Rs AdvertiserLandingPagesList =
             AdvertiserLandingPagesListResponse
        type Scopes AdvertiserLandingPagesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesList'{..}
          = go _alplProFileId _alplXgafv _alplUploadProtocol
              _alplAccessToken
              (_alplCampaignIds ^. _Default)
              _alplSearchString
              _alplUploadType
              (_alplIds ^. _Default)
              (Just _alplSortOrder)
              _alplPageToken
              (Just _alplSortField)
              _alplSubAccountId
              (_alplAdvertiserIds ^. _Default)
              _alplArchived
              (Just _alplMaxResults)
              _alplCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesListResource)
                      mempty
