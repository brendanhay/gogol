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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.get@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Get
    (
    -- * REST Resource
      ConversionGetResource

    -- * Creating a Request
    , conversionGet
    , ConversionGet

    -- * Request Lenses
    , cgXgafv
    , cgAdGroupId
    , cgEngineAccountId
    , cgAgencyId
    , cgUploadProtocol
    , cgAccessToken
    , cgAdvertiserId
    , cgEndDate
    , cgUploadType
    , cgCampaignId
    , cgCriterionId
    , cgStartDate
    , cgStartRow
    , cgAdId
    , cgRowCount
    , cgCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.get@ method which the
-- 'ConversionGet' request conforms to.
type ConversionGetResource =
     "doubleclicksearch" :>
       "v2" :>
         "agency" :>
           Capture "agencyId" (Textual Int64) :>
             "advertiser" :>
               Capture "advertiserId" (Textual Int64) :>
                 "engine" :>
                   Capture "engineAccountId" (Textual Int64) :>
                     "conversion" :>
                       QueryParam "endDate" (Textual Int32) :>
                         QueryParam "rowCount" (Textual Int32) :>
                           QueryParam "startDate" (Textual Int32) :>
                             QueryParam "startRow" (Textual Word32) :>
                               QueryParam "$.xgafv" Xgafv :>
                                 QueryParam "adGroupId" (Textual Int64) :>
                                   QueryParam "upload_protocol" Text :>
                                     QueryParam "access_token" Text :>
                                       QueryParam "uploadType" Text :>
                                         QueryParam "campaignId" (Textual Int64)
                                           :>
                                           QueryParam "criterionId"
                                             (Textual Int64)
                                             :>
                                             QueryParam "adId" (Textual Int64)
                                               :>
                                               QueryParam "callback" Text :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON] ConversionList

-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ 'conversionGet' smart constructor.
data ConversionGet =
  ConversionGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgAdGroupId :: !(Maybe (Textual Int64))
    , _cgEngineAccountId :: !(Textual Int64)
    , _cgAgencyId :: !(Textual Int64)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgAdvertiserId :: !(Textual Int64)
    , _cgEndDate :: !(Textual Int32)
    , _cgUploadType :: !(Maybe Text)
    , _cgCampaignId :: !(Maybe (Textual Int64))
    , _cgCriterionId :: !(Maybe (Textual Int64))
    , _cgStartDate :: !(Textual Int32)
    , _cgStartRow :: !(Textual Word32)
    , _cgAdId :: !(Maybe (Textual Int64))
    , _cgRowCount :: !(Textual Int32)
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgAdGroupId'
--
-- * 'cgEngineAccountId'
--
-- * 'cgAgencyId'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgAdvertiserId'
--
-- * 'cgEndDate'
--
-- * 'cgUploadType'
--
-- * 'cgCampaignId'
--
-- * 'cgCriterionId'
--
-- * 'cgStartDate'
--
-- * 'cgStartRow'
--
-- * 'cgAdId'
--
-- * 'cgRowCount'
--
-- * 'cgCallback'
conversionGet
    :: Int64 -- ^ 'cgEngineAccountId'
    -> Int64 -- ^ 'cgAgencyId'
    -> Int64 -- ^ 'cgAdvertiserId'
    -> Int32 -- ^ 'cgEndDate'
    -> Int32 -- ^ 'cgStartDate'
    -> Word32 -- ^ 'cgStartRow'
    -> Int32 -- ^ 'cgRowCount'
    -> ConversionGet
conversionGet pCgEngineAccountId_ pCgAgencyId_ pCgAdvertiserId_ pCgEndDate_ pCgStartDate_ pCgStartRow_ pCgRowCount_ =
  ConversionGet'
    { _cgXgafv = Nothing
    , _cgAdGroupId = Nothing
    , _cgEngineAccountId = _Coerce # pCgEngineAccountId_
    , _cgAgencyId = _Coerce # pCgAgencyId_
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgAdvertiserId = _Coerce # pCgAdvertiserId_
    , _cgEndDate = _Coerce # pCgEndDate_
    , _cgUploadType = Nothing
    , _cgCampaignId = Nothing
    , _cgCriterionId = Nothing
    , _cgStartDate = _Coerce # pCgStartDate_
    , _cgStartRow = _Coerce # pCgStartRow_
    , _cgAdId = Nothing
    , _cgRowCount = _Coerce # pCgRowCount_
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' ConversionGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Numeric ID of the ad group.
cgAdGroupId :: Lens' ConversionGet (Maybe Int64)
cgAdGroupId
  = lens _cgAdGroupId (\ s a -> s{_cgAdGroupId = a}) .
      mapping _Coerce

-- | Numeric ID of the engine account.
cgEngineAccountId :: Lens' ConversionGet Int64
cgEngineAccountId
  = lens _cgEngineAccountId
      (\ s a -> s{_cgEngineAccountId = a})
      . _Coerce

-- | Numeric ID of the agency.
cgAgencyId :: Lens' ConversionGet Int64
cgAgencyId
  = lens _cgAgencyId (\ s a -> s{_cgAgencyId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' ConversionGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' ConversionGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Numeric ID of the advertiser.
cgAdvertiserId :: Lens' ConversionGet Int64
cgAdvertiserId
  = lens _cgAdvertiserId
      (\ s a -> s{_cgAdvertiserId = a})
      . _Coerce

-- | Last date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cgEndDate :: Lens' ConversionGet Int32
cgEndDate
  = lens _cgEndDate (\ s a -> s{_cgEndDate = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' ConversionGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | Numeric ID of the campaign.
cgCampaignId :: Lens' ConversionGet (Maybe Int64)
cgCampaignId
  = lens _cgCampaignId (\ s a -> s{_cgCampaignId = a})
      . mapping _Coerce

-- | Numeric ID of the criterion.
cgCriterionId :: Lens' ConversionGet (Maybe Int64)
cgCriterionId
  = lens _cgCriterionId
      (\ s a -> s{_cgCriterionId = a})
      . mapping _Coerce

-- | First date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cgStartDate :: Lens' ConversionGet Int32
cgStartDate
  = lens _cgStartDate (\ s a -> s{_cgStartDate = a}) .
      _Coerce

-- | The 0-based starting index for retrieving conversions results.
cgStartRow :: Lens' ConversionGet Word32
cgStartRow
  = lens _cgStartRow (\ s a -> s{_cgStartRow = a}) .
      _Coerce

-- | Numeric ID of the ad.
cgAdId :: Lens' ConversionGet (Maybe Int64)
cgAdId
  = lens _cgAdId (\ s a -> s{_cgAdId = a}) .
      mapping _Coerce

-- | The number of conversions to return per call.
cgRowCount :: Lens' ConversionGet Int32
cgRowCount
  = lens _cgRowCount (\ s a -> s{_cgRowCount = a}) .
      _Coerce

-- | JSONP
cgCallback :: Lens' ConversionGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest ConversionGet where
        type Rs ConversionGet = ConversionList
        type Scopes ConversionGet =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionGet'{..}
          = go _cgAgencyId _cgAdvertiserId _cgEngineAccountId
              (Just _cgEndDate)
              (Just _cgRowCount)
              (Just _cgStartDate)
              (Just _cgStartRow)
              _cgXgafv
              _cgAdGroupId
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCampaignId
              _cgCriterionId
              _cgAdId
              _cgCallback
              (Just AltJSON)
              doubleClickSearchService
          where go
                  = buildClient (Proxy :: Proxy ConversionGetResource)
                      mempty
