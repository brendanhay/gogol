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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a batch of conversions in DoubleClick Search. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchConversionPatch@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Patch
    (
    -- * REST Resource
      ConversionPatchResource

    -- * Creating a Request
    , conversionPatch'
    , ConversionPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpEngineAccountId
    , cpAgencyId
    , cpUserIP
    , cpAdvertiserId
    , cpEndDate
    , cpPayload
    , cpStartDate
    , cpKey
    , cpStartRow
    , cpOAuthToken
    , cpRowCount
    , cpFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchConversionPatch@ which the
-- 'ConversionPatch'' request conforms to.
type ConversionPatchResource =
     "conversion" :>
       QueryParam "advertiserId" Int64 :>
         QueryParam "agencyId" Int64 :>
           QueryParam "endDate" Int32 :>
             QueryParam "engineAccountId" Int64 :>
               QueryParam "rowCount" Int32 :>
                 QueryParam "startDate" Int32 :>
                   QueryParam "startRow" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ConversionList :>
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
    , _cpUserIP          :: !(Maybe Text)
    , _cpAdvertiserId    :: !Int64
    , _cpEndDate         :: !Int32
    , _cpPayload         :: !ConversionList
    , _cpStartDate       :: !Int32
    , _cpKey             :: !(Maybe Key)
    , _cpStartRow        :: !Word32
    , _cpOAuthToken      :: !(Maybe OAuthToken)
    , _cpRowCount        :: !Int32
    , _cpFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cpUserIP'
--
-- * 'cpAdvertiserId'
--
-- * 'cpEndDate'
--
-- * 'cpPayload'
--
-- * 'cpStartDate'
--
-- * 'cpKey'
--
-- * 'cpStartRow'
--
-- * 'cpOAuthToken'
--
-- * 'cpRowCount'
--
-- * 'cpFields'
conversionPatch'
    :: Int64 -- ^ 'engineAccountId'
    -> Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> Int32 -- ^ 'endDate'
    -> ConversionList -- ^ 'payload'
    -> Int32 -- ^ 'startDate'
    -> Word32 -- ^ 'startRow'
    -> Int32 -- ^ 'rowCount'
    -> ConversionPatch'
conversionPatch' pCpEngineAccountId_ pCpAgencyId_ pCpAdvertiserId_ pCpEndDate_ pCpPayload_ pCpStartDate_ pCpStartRow_ pCpRowCount_ =
    ConversionPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpEngineAccountId = pCpEngineAccountId_
    , _cpAgencyId = pCpAgencyId_
    , _cpUserIP = Nothing
    , _cpAdvertiserId = pCpAdvertiserId_
    , _cpEndDate = pCpEndDate_
    , _cpPayload = pCpPayload_
    , _cpStartDate = pCpStartDate_
    , _cpKey = Nothing
    , _cpStartRow = pCpStartRow_
    , _cpOAuthToken = Nothing
    , _cpRowCount = pCpRowCount_
    , _cpFields = Nothing
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
cpUserIP :: Lens' ConversionPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Numeric ID of the advertiser.
cpAdvertiserId :: Lens' ConversionPatch' Int64
cpAdvertiserId
  = lens _cpAdvertiserId
      (\ s a -> s{_cpAdvertiserId = a})

-- | Last date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cpEndDate :: Lens' ConversionPatch' Int32
cpEndDate
  = lens _cpEndDate (\ s a -> s{_cpEndDate = a})

-- | Multipart request metadata.
cpPayload :: Lens' ConversionPatch' ConversionList
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | First date (inclusive) on which to retrieve conversions. Format is
-- yyyymmdd.
cpStartDate :: Lens' ConversionPatch' Int32
cpStartDate
  = lens _cpStartDate (\ s a -> s{_cpStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ConversionPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The 0-based starting index for retrieving conversions results.
cpStartRow :: Lens' ConversionPatch' Word32
cpStartRow
  = lens _cpStartRow (\ s a -> s{_cpStartRow = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' ConversionPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | The number of conversions to return per call.
cpRowCount :: Lens' ConversionPatch' Int32
cpRowCount
  = lens _cpRowCount (\ s a -> s{_cpRowCount = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ConversionPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth ConversionPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest ConversionPatch' where
        type Rs ConversionPatch' = ConversionList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ConversionPatch'{..}
          = go (Just _cpAdvertiserId) (Just _cpAgencyId)
              (Just _cpEndDate)
              (Just _cpEngineAccountId)
              (Just _cpRowCount)
              (Just _cpStartDate)
              (Just _cpStartRow)
              _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConversionPatchResource)
                      r
                      u
