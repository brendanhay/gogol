{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DoubleClickSearch.Conversion.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a batch of conversions in DoubleClick Search. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @doubleclicksearch.conversion.patch@.
module Network.Google.API.DoubleClickSearch.Conversion.Patch
    (
    -- * REST Resource
      ConversionPatchAPI

    -- * Creating a Request
    , conversionPatch'
    , ConversionPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpEngineAccountId
    , cpAgencyId
    , cpUserIp
    , cpAdvertiserId
    , cpEndDate
    , cpStartDate
    , cpKey
    , cpStartRow
    , cpOauthToken
    , cpRowCount
    , cpFields
    , cpAlt
    ) where

import           Network.Google.DoubleClick.Search.Types
import           Network.Google.Prelude

-- | A resource alias for doubleclicksearch.conversion.patch which the
-- 'ConversionPatch'' request conforms to.
type ConversionPatchAPI =
     "conversion" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "engineAccountId" Int64 :>
             QueryParam "agencyId" Int64 :>
               QueryParam "userIp" Text :>
                 QueryParam "advertiserId" Int64 :>
                   QueryParam "endDate" Nat :>
                     QueryParam "startDate" Nat :>
                       QueryParam "key" Text :>
                         QueryParam "startRow" Word32 :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "rowCount" Nat :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Patch '[JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search. This method
-- supports patch semantics.
--
-- /See:/ 'conversionPatch'' smart constructor.
data ConversionPatch' = ConversionPatch'
    { _cpQuotaUser       :: !(Maybe Text)
    , _cpPrettyPrint     :: !Bool
    , _cpEngineAccountId :: !Int64
    , _cpAgencyId        :: !Int64
    , _cpUserIp          :: !(Maybe Text)
    , _cpAdvertiserId    :: !Int64
    , _cpEndDate         :: !Nat
    , _cpStartDate       :: !Nat
    , _cpKey             :: !(Maybe Text)
    , _cpStartRow        :: !Word32
    , _cpOauthToken      :: !(Maybe Text)
    , _cpRowCount        :: !Nat
    , _cpFields          :: !(Maybe Text)
    , _cpAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpEngineAccountId'
--
-- * 'cpAgencyId'
--
-- * 'cpUserIp'
--
-- * 'cpAdvertiserId'
--
-- * 'cpEndDate'
--
-- * 'cpStartDate'
--
-- * 'cpKey'
--
-- * 'cpStartRow'
--
-- * 'cpOauthToken'
--
-- * 'cpRowCount'
--
-- * 'cpFields'
--
-- * 'cpAlt'
conversionPatch'
    :: Int64 -- ^ 'engineAccountId'
    -> Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> Natural -- ^ 'endDate'
    -> Natural -- ^ 'startDate'
    -> Word32 -- ^ 'startRow'
    -> Natural -- ^ 'rowCount'
    -> ConversionPatch'
conversionPatch' pCpEngineAccountId_ pCpAgencyId_ pCpAdvertiserId_ pCpEndDate_ pCpStartDate_ pCpStartRow_ pCpRowCount_ =
    ConversionPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpEngineAccountId = pCpEngineAccountId_
    , _cpAgencyId = pCpAgencyId_
    , _cpUserIp = Nothing
    , _cpAdvertiserId = pCpAdvertiserId_
    , _cpEndDate = pCpEndDate_
    , _cpStartDate = pCpStartDate_
    , _cpKey = Nothing
    , _cpStartRow = pCpStartRow_
    , _cpOauthToken = Nothing
    , _cpRowCount = pCpRowCount_
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' ConversionPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' ConversionPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | Numeric ID of the engine account.
cpEngineAccountId :: Lens' ConversionPatch' Int64
cpEngineAccountId
  = lens _cpEngineAccountId
      (\ s a -> s{_cpEngineAccountId = a})

-- | Numeric ID of the agency.
cpAgencyId :: Lens' ConversionPatch' Int64
cpAgencyId
  = lens _cpAgencyId (\ s a -> s{_cpAgencyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' ConversionPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | Numeric ID of the advertiser.
cpAdvertiserId :: Lens' ConversionPatch' Int64
cpAdvertiserId
  = lens _cpAdvertiserId
      (\ s a -> s{_cpAdvertiserId = a})

-- | Last date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cpEndDate :: Lens' ConversionPatch' Natural
cpEndDate
  = lens _cpEndDate (\ s a -> s{_cpEndDate = a}) . _Nat

-- | First date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cpStartDate :: Lens' ConversionPatch' Natural
cpStartDate
  = lens _cpStartDate (\ s a -> s{_cpStartDate = a}) .
      _Nat

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ConversionPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The 0-based starting index for retrieving conversions results.
cpStartRow :: Lens' ConversionPatch' Word32
cpStartRow
  = lens _cpStartRow (\ s a -> s{_cpStartRow = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' ConversionPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | The number of conversions to return per call.
cpRowCount :: Lens' ConversionPatch' Natural
cpRowCount
  = lens _cpRowCount (\ s a -> s{_cpRowCount = a}) .
      _Nat

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ConversionPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' ConversionPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest ConversionPatch' where
        type Rs ConversionPatch' = ConversionList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ConversionPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint)
              (Just _cpEngineAccountId)
              (Just _cpAgencyId)
              _cpUserIp
              (Just _cpAdvertiserId)
              (Just _cpEndDate)
              (Just _cpStartDate)
              _cpKey
              (Just _cpStartRow)
              _cpOauthToken
              (Just _cpRowCount)
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ConversionPatchAPI)
                      r
                      u
