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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchConversionGet@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Get
    (
    -- * REST Resource
      ConversionGetResource

    -- * Creating a Request
    , conversionGet'
    , ConversionGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgAdGroupId
    , cgPrettyPrint
    , cgEngineAccountId
    , cgAgencyId
    , cgUserIP
    , cgAdvertiserId
    , cgEndDate
    , cgCampaignId
    , cgCriterionId
    , cgStartDate
    , cgKey
    , cgStartRow
    , cgAdId
    , cgOAuthToken
    , cgRowCount
    , cgFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchConversionGet@ which the
-- 'ConversionGet'' request conforms to.
type ConversionGetResource =
     "agency" :>
       Capture "agencyId" Int64 :>
         "advertiser" :>
           Capture "advertiserId" Int64 :>
             "engine" :>
               Capture "engineAccountId" Int64 :>
                 "conversion" :>
                   QueryParam "endDate" Int32 :>
                     QueryParam "rowCount" Int32 :>
                       QueryParam "startDate" Int32 :>
                         QueryParam "startRow" Word32 :>
                           QueryParam "adGroupId" Int64 :>
                             QueryParam "campaignId" Int64 :>
                               QueryParam "criterionId" Int64 :>
                                 QueryParam "adId" Int64 :>
                                   QueryParam "quotaUser" Text :>
                                     QueryParam "prettyPrint" Bool :>
                                       QueryParam "userIp" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "key" AuthKey :>
                                             QueryParam "oauth_token" OAuthToken
                                               :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] ConversionList

-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
--
-- /See:/ 'conversionGet'' smart constructor.
data ConversionGet' = ConversionGet'
    { _cgQuotaUser       :: !(Maybe Text)
    , _cgAdGroupId       :: !(Maybe Int64)
    , _cgPrettyPrint     :: !Bool
    , _cgEngineAccountId :: !Int64
    , _cgAgencyId        :: !Int64
    , _cgUserIP          :: !(Maybe Text)
    , _cgAdvertiserId    :: !Int64
    , _cgEndDate         :: !Int32
    , _cgCampaignId      :: !(Maybe Int64)
    , _cgCriterionId     :: !(Maybe Int64)
    , _cgStartDate       :: !Int32
    , _cgKey             :: !(Maybe AuthKey)
    , _cgStartRow        :: !Word32
    , _cgAdId            :: !(Maybe Int64)
    , _cgOAuthToken      :: !(Maybe OAuthToken)
    , _cgRowCount        :: !Int32
    , _cgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cgUserIP'
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
-- * 'cgOAuthToken'
--
-- * 'cgRowCount'
--
-- * 'cgFields'
conversionGet'
    :: Int64 -- ^ 'engineAccountId'
    -> Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> Int32 -- ^ 'endDate'
    -> Int32 -- ^ 'startDate'
    -> Word32 -- ^ 'startRow'
    -> Int32 -- ^ 'rowCount'
    -> ConversionGet'
conversionGet' pCgEngineAccountId_ pCgAgencyId_ pCgAdvertiserId_ pCgEndDate_ pCgStartDate_ pCgStartRow_ pCgRowCount_ =
    ConversionGet'
    { _cgQuotaUser = Nothing
    , _cgAdGroupId = Nothing
    , _cgPrettyPrint = True
    , _cgEngineAccountId = pCgEngineAccountId_
    , _cgAgencyId = pCgAgencyId_
    , _cgUserIP = Nothing
    , _cgAdvertiserId = pCgAdvertiserId_
    , _cgEndDate = pCgEndDate_
    , _cgCampaignId = Nothing
    , _cgCriterionId = Nothing
    , _cgStartDate = pCgStartDate_
    , _cgKey = Nothing
    , _cgStartRow = pCgStartRow_
    , _cgAdId = Nothing
    , _cgOAuthToken = Nothing
    , _cgRowCount = pCgRowCount_
    , _cgFields = Nothing
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
cgUserIP :: Lens' ConversionGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

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
cgKey :: Lens' ConversionGet' (Maybe AuthKey)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The 0-based starting index for retrieving conversions results.
cgStartRow :: Lens' ConversionGet' Word32
cgStartRow
  = lens _cgStartRow (\ s a -> s{_cgStartRow = a})

-- | Numeric ID of the ad.
cgAdId :: Lens' ConversionGet' (Maybe Int64)
cgAdId = lens _cgAdId (\ s a -> s{_cgAdId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' ConversionGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | The number of conversions to return per call.
cgRowCount :: Lens' ConversionGet' Int32
cgRowCount
  = lens _cgRowCount (\ s a -> s{_cgRowCount = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ConversionGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth ConversionGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest ConversionGet' where
        type Rs ConversionGet' = ConversionList
        request = requestWith doubleClickSearchRequest
        requestWith rq ConversionGet'{..}
          = go _cgAgencyId _cgAdvertiserId _cgEngineAccountId
              (Just _cgEndDate)
              (Just _cgRowCount)
              (Just _cgStartDate)
              (Just _cgStartRow)
              _cgAdGroupId
              _cgCampaignId
              _cgCriterionId
              _cgAdId
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ConversionGetResource)
                      rq
