{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleclicksearchConversionGet@.
module DoubleClickSearch.Conversion.Get
    (
    -- * REST Resource
      ConversionGetAPI

    -- * Creating a Request
    , conversionGet
    , ConversionGet

    -- * Request Lenses
    , cgQuotaUser
    , cgAdGroupId
    , cgPrettyPrint
    , cgEngineAccountId
    , cgAgencyId
    , cgUserIp
    , cgAdvertiserId
    , cgEndDate
    , cgCampaignId
    , cgCriterionId
    , cgStartDate
    , cgKey
    , cgStartRow
    , cgAdId
    , cgOauthToken
    , cgRowCount
    , cgFields
    , cgAlt
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclicksearchConversionGet@ which the
-- 'ConversionGet' request conforms to.
type ConversionGetAPI =
     "agency" :>
       Capture "agencyId" Int64 :>
         "advertiser" :>
           Capture "advertiserId" Int64 :>
             "engine" :>
               Capture "engineAccountId" Int64 :>
                 "conversion" :>
                   QueryParam "adGroupId" Int64 :>
                     QueryParam "endDate" Int32 :>
                       QueryParam "campaignId" Int64 :>
                         QueryParam "criterionId" Int64 :>
                           QueryParam "startDate" Int32 :>
                             QueryParam "startRow" Word32 :>
                               QueryParam "adId" Int64 :>
                                 QueryParam "rowCount" Int32 :>
                                   Get '[JSON] ConversionList

-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ 'conversionGet' smart constructor.
data ConversionGet = ConversionGet
    { _cgQuotaUser       :: !(Maybe Text)
    , _cgAdGroupId       :: !(Maybe Int64)
    , _cgPrettyPrint     :: !Bool
    , _cgEngineAccountId :: !Int64
    , _cgAgencyId        :: !Int64
    , _cgUserIp          :: !(Maybe Text)
    , _cgAdvertiserId    :: !Int64
    , _cgEndDate         :: !Int32
    , _cgCampaignId      :: !(Maybe Int64)
    , _cgCriterionId     :: !(Maybe Int64)
    , _cgStartDate       :: !Int32
    , _cgKey             :: !(Maybe Text)
    , _cgStartRow        :: !Word32
    , _cgAdId            :: !(Maybe Int64)
    , _cgOauthToken      :: !(Maybe Text)
    , _cgRowCount        :: !Int32
    , _cgFields          :: !(Maybe Text)
    , _cgAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgAdGroupId'
--
-- * 'cgPrettyPrint'
--
-- * 'cgEngineAccountId'
--
-- * 'cgAgencyId'
--
-- * 'cgUserIp'
--
-- * 'cgAdvertiserId'
--
-- * 'cgEndDate'
--
-- * 'cgCampaignId'
--
-- * 'cgCriterionId'
--
-- * 'cgStartDate'
--
-- * 'cgKey'
--
-- * 'cgStartRow'
--
-- * 'cgAdId'
--
-- * 'cgOauthToken'
--
-- * 'cgRowCount'
--
-- * 'cgFields'
--
-- * 'cgAlt'
conversionGet
    :: Int64 -- ^ 'engineAccountId'
    -> Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> Int32 -- ^ 'endDate'
    -> Int32 -- ^ 'startDate'
    -> Word32 -- ^ 'startRow'
    -> Int32 -- ^ 'rowCount'
    -> ConversionGet
conversionGet pCgEngineAccountId_ pCgAgencyId_ pCgAdvertiserId_ pCgEndDate_ pCgStartDate_ pCgStartRow_ pCgRowCount_ =
    ConversionGet
    { _cgQuotaUser = Nothing
    , _cgAdGroupId = Nothing
    , _cgPrettyPrint = True
    , _cgEngineAccountId = pCgEngineAccountId_
    , _cgAgencyId = pCgAgencyId_
    , _cgUserIp = Nothing
    , _cgAdvertiserId = pCgAdvertiserId_
    , _cgEndDate = pCgEndDate_
    , _cgCampaignId = Nothing
    , _cgCriterionId = Nothing
    , _cgStartDate = pCgStartDate_
    , _cgKey = Nothing
    , _cgStartRow = pCgStartRow_
    , _cgAdId = Nothing
    , _cgOauthToken = Nothing
    , _cgRowCount = pCgRowCount_
    , _cgFields = Nothing
    , _cgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ConversionGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Numeric ID of the ad group.
cgAdGroupId :: Lens' ConversionGet' (Maybe Int64)
cgAdGroupId
  = lens _cgAdGroupId (\ s a -> s{_cgAdGroupId = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ConversionGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | Numeric ID of the engine account.
cgEngineAccountId :: Lens' ConversionGet' Int64
cgEngineAccountId
  = lens _cgEngineAccountId
      (\ s a -> s{_cgEngineAccountId = a})

-- | Numeric ID of the agency.
cgAgencyId :: Lens' ConversionGet' Int64
cgAgencyId
  = lens _cgAgencyId (\ s a -> s{_cgAgencyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' ConversionGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | Numeric ID of the advertiser.
cgAdvertiserId :: Lens' ConversionGet' Int64
cgAdvertiserId
  = lens _cgAdvertiserId
      (\ s a -> s{_cgAdvertiserId = a})

-- | Last date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cgEndDate :: Lens' ConversionGet' Int32
cgEndDate
  = lens _cgEndDate (\ s a -> s{_cgEndDate = a})

-- | Numeric ID of the campaign.
cgCampaignId :: Lens' ConversionGet' (Maybe Int64)
cgCampaignId
  = lens _cgCampaignId (\ s a -> s{_cgCampaignId = a})

-- | Numeric ID of the criterion.
cgCriterionId :: Lens' ConversionGet' (Maybe Int64)
cgCriterionId
  = lens _cgCriterionId
      (\ s a -> s{_cgCriterionId = a})

-- | First date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cgStartDate :: Lens' ConversionGet' Int32
cgStartDate
  = lens _cgStartDate (\ s a -> s{_cgStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ConversionGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The 0-based starting index for retrieving conversions results.
cgStartRow :: Lens' ConversionGet' Word32
cgStartRow
  = lens _cgStartRow (\ s a -> s{_cgStartRow = a})

-- | Numeric ID of the ad.
cgAdId :: Lens' ConversionGet' (Maybe Int64)
cgAdId = lens _cgAdId (\ s a -> s{_cgAdId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' ConversionGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | The number of conversions to return per call.
cgRowCount :: Lens' ConversionGet' Int32
cgRowCount
  = lens _cgRowCount (\ s a -> s{_cgRowCount = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ConversionGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' ConversionGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest ConversionGet' where
        type Rs ConversionGet' = ConversionList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ConversionGet{..}
          = go _cgQuotaUser _cgAdGroupId _cgPrettyPrint
              _cgEngineAccountId
              _cgAgencyId
              _cgUserIp
              _cgAdvertiserId
              (Just _cgEndDate)
              _cgCampaignId
              _cgCriterionId
              (Just _cgStartDate)
              _cgKey
              (Just _cgStartRow)
              _cgAdId
              _cgOauthToken
              (Just _cgRowCount)
              _cgFields
              _cgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ConversionGetAPI) r
                      u
