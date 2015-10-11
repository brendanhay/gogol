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
-- Module      : Network.Google.Resource.DFAReporting.Cities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCitiesList@.
module Network.Google.Resource.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListResource

    -- * Creating a Request
    , citiesList'
    , CitiesList'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cRegionDartIds
    , cUserIP
    , cProFileId
    , cNamePrefix
    , cKey
    , cCountryDartIds
    , cDartIds
    , cOAuthToken
    , cFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCitiesList@ method which the
-- 'CitiesList'' request conforms to.
type CitiesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "cities" :>
           QueryParams "regionDartIds" Int64 :>
             QueryParam "namePrefix" Text :>
               QueryParams "countryDartIds" Int64 :>
                 QueryParams "dartIds" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList'' smart constructor.
data CitiesList' = CitiesList'
    { _cQuotaUser      :: !(Maybe Text)
    , _cPrettyPrint    :: !Bool
    , _cRegionDartIds  :: !(Maybe [Int64])
    , _cUserIP         :: !(Maybe Text)
    , _cProFileId      :: !Int64
    , _cNamePrefix     :: !(Maybe Text)
    , _cKey            :: !(Maybe AuthKey)
    , _cCountryDartIds :: !(Maybe [Int64])
    , _cDartIds        :: !(Maybe [Int64])
    , _cOAuthToken     :: !(Maybe OAuthToken)
    , _cFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cRegionDartIds'
--
-- * 'cUserIP'
--
-- * 'cProFileId'
--
-- * 'cNamePrefix'
--
-- * 'cKey'
--
-- * 'cCountryDartIds'
--
-- * 'cDartIds'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
citiesList'
    :: Int64 -- ^ 'profileId'
    -> CitiesList'
citiesList' pCProFileId_ =
    CitiesList'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cRegionDartIds = Nothing
    , _cUserIP = Nothing
    , _cProFileId = pCProFileId_
    , _cNamePrefix = Nothing
    , _cKey = Nothing
    , _cCountryDartIds = Nothing
    , _cDartIds = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CitiesList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CitiesList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | Select only cities from these regions.
cRegionDartIds :: Lens' CitiesList' [Int64]
cRegionDartIds
  = lens _cRegionDartIds
      (\ s a -> s{_cRegionDartIds = a})
      . _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIP :: Lens' CitiesList' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | User profile ID associated with this request.
cProFileId :: Lens' CitiesList' Int64
cProFileId
  = lens _cProFileId (\ s a -> s{_cProFileId = a})

-- | Select only cities with names starting with this prefix.
cNamePrefix :: Lens' CitiesList' (Maybe Text)
cNamePrefix
  = lens _cNamePrefix (\ s a -> s{_cNamePrefix = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CitiesList' (Maybe AuthKey)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | Select only cities from these countries.
cCountryDartIds :: Lens' CitiesList' [Int64]
cCountryDartIds
  = lens _cCountryDartIds
      (\ s a -> s{_cCountryDartIds = a})
      . _Default
      . _Coerce

-- | Select only cities with these DART IDs.
cDartIds :: Lens' CitiesList' [Int64]
cDartIds
  = lens _cDartIds (\ s a -> s{_cDartIds = a}) .
      _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' CitiesList' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CitiesList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth CitiesList' where
        _AuthKey = cKey . _Just
        _AuthToken = cOAuthToken . _Just

instance GoogleRequest CitiesList' where
        type Rs CitiesList' = CitiesListResponse
        request = requestWith dFAReportingRequest
        requestWith rq CitiesList'{..}
          = go _cProFileId (_cRegionDartIds ^. _Default)
              _cNamePrefix
              (_cCountryDartIds ^. _Default)
              (_cDartIds ^. _Default)
              _cQuotaUser
              (Just _cPrettyPrint)
              _cUserIP
              _cFields
              _cKey
              _cOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CitiesListResource) rq
