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
-- Module      : Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of creative IDs associated with the specified
-- campaign. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaignCreativeAssociations.list@.
module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.List
    (
    -- * REST Resource
      CampaignCreativeAssociationsListResource

    -- * Creating a Request
    , campaignCreativeAssociationsList
    , CampaignCreativeAssociationsList

    -- * Request Lenses
    , ccalXgafv
    , ccalUploadProtocol
    , ccalAccessToken
    , ccalUploadType
    , ccalCampaignId
    , ccalProFileId
    , ccalSortOrder
    , ccalPageToken
    , ccalMaxResults
    , ccalCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaignCreativeAssociations.list@ method which the
-- 'CampaignCreativeAssociationsList' request conforms to.
type CampaignCreativeAssociationsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "campaignCreativeAssociations" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "sortOrder"
                             CampaignCreativeAssociationsListSortOrder
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON]
                                       CampaignCreativeAssociationsListResponse

-- | Retrieves the list of creative IDs associated with the specified
-- campaign. This method supports paging.
--
-- /See:/ 'campaignCreativeAssociationsList' smart constructor.
data CampaignCreativeAssociationsList =
  CampaignCreativeAssociationsList'
    { _ccalXgafv :: !(Maybe Xgafv)
    , _ccalUploadProtocol :: !(Maybe Text)
    , _ccalAccessToken :: !(Maybe Text)
    , _ccalUploadType :: !(Maybe Text)
    , _ccalCampaignId :: !(Textual Int64)
    , _ccalProFileId :: !(Textual Int64)
    , _ccalSortOrder :: !CampaignCreativeAssociationsListSortOrder
    , _ccalPageToken :: !(Maybe Text)
    , _ccalMaxResults :: !(Textual Int32)
    , _ccalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignCreativeAssociationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccalXgafv'
--
-- * 'ccalUploadProtocol'
--
-- * 'ccalAccessToken'
--
-- * 'ccalUploadType'
--
-- * 'ccalCampaignId'
--
-- * 'ccalProFileId'
--
-- * 'ccalSortOrder'
--
-- * 'ccalPageToken'
--
-- * 'ccalMaxResults'
--
-- * 'ccalCallback'
campaignCreativeAssociationsList
    :: Int64 -- ^ 'ccalCampaignId'
    -> Int64 -- ^ 'ccalProFileId'
    -> CampaignCreativeAssociationsList
campaignCreativeAssociationsList pCcalCampaignId_ pCcalProFileId_ =
  CampaignCreativeAssociationsList'
    { _ccalXgafv = Nothing
    , _ccalUploadProtocol = Nothing
    , _ccalAccessToken = Nothing
    , _ccalUploadType = Nothing
    , _ccalCampaignId = _Coerce # pCcalCampaignId_
    , _ccalProFileId = _Coerce # pCcalProFileId_
    , _ccalSortOrder = CCALSOAscending
    , _ccalPageToken = Nothing
    , _ccalMaxResults = 1000
    , _ccalCallback = Nothing
    }


-- | V1 error format.
ccalXgafv :: Lens' CampaignCreativeAssociationsList (Maybe Xgafv)
ccalXgafv
  = lens _ccalXgafv (\ s a -> s{_ccalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccalUploadProtocol :: Lens' CampaignCreativeAssociationsList (Maybe Text)
ccalUploadProtocol
  = lens _ccalUploadProtocol
      (\ s a -> s{_ccalUploadProtocol = a})

-- | OAuth access token.
ccalAccessToken :: Lens' CampaignCreativeAssociationsList (Maybe Text)
ccalAccessToken
  = lens _ccalAccessToken
      (\ s a -> s{_ccalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccalUploadType :: Lens' CampaignCreativeAssociationsList (Maybe Text)
ccalUploadType
  = lens _ccalUploadType
      (\ s a -> s{_ccalUploadType = a})

-- | Campaign ID in this association.
ccalCampaignId :: Lens' CampaignCreativeAssociationsList Int64
ccalCampaignId
  = lens _ccalCampaignId
      (\ s a -> s{_ccalCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
ccalProFileId :: Lens' CampaignCreativeAssociationsList Int64
ccalProFileId
  = lens _ccalProFileId
      (\ s a -> s{_ccalProFileId = a})
      . _Coerce

-- | Order of sorted results.
ccalSortOrder :: Lens' CampaignCreativeAssociationsList CampaignCreativeAssociationsListSortOrder
ccalSortOrder
  = lens _ccalSortOrder
      (\ s a -> s{_ccalSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
ccalPageToken :: Lens' CampaignCreativeAssociationsList (Maybe Text)
ccalPageToken
  = lens _ccalPageToken
      (\ s a -> s{_ccalPageToken = a})

-- | Maximum number of results to return.
ccalMaxResults :: Lens' CampaignCreativeAssociationsList Int32
ccalMaxResults
  = lens _ccalMaxResults
      (\ s a -> s{_ccalMaxResults = a})
      . _Coerce

-- | JSONP
ccalCallback :: Lens' CampaignCreativeAssociationsList (Maybe Text)
ccalCallback
  = lens _ccalCallback (\ s a -> s{_ccalCallback = a})

instance GoogleRequest
           CampaignCreativeAssociationsList
         where
        type Rs CampaignCreativeAssociationsList =
             CampaignCreativeAssociationsListResponse
        type Scopes CampaignCreativeAssociationsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignCreativeAssociationsList'{..}
          = go _ccalProFileId _ccalCampaignId _ccalXgafv
              _ccalUploadProtocol
              _ccalAccessToken
              _ccalUploadType
              (Just _ccalSortOrder)
              _ccalPageToken
              (Just _ccalMaxResults)
              _ccalCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CampaignCreativeAssociationsListResource)
                      mempty
