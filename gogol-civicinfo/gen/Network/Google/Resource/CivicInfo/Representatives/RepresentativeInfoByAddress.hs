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
-- Module      : Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicInfoRepresentativesRepresentativeInfoByAddress@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByAddressResource

    -- * Creating a Request
    , representativesRepresentativeInfoByAddress'
    , RepresentativesRepresentativeInfoByAddress'

    -- * Request Lenses
    , rribaQuotaUser
    , rribaRoles
    , rribaPrettyPrint
    , rribaUserIP
    , rribaAddress
    , rribaKey
    , rribaIncludeOffices
    , rribaLevels
    , rribaOAuthToken
    , rribaFields
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicInfoRepresentativesRepresentativeInfoByAddress@ which the
-- 'RepresentativesRepresentativeInfoByAddress'' request conforms to.
type RepresentativesRepresentativeInfoByAddressResource
     =
     "representatives" :>
       QueryParams "roles"
         RepresentativesRepresentativeInfoByAddressRoles
         :>
         QueryParam "address" Text :>
           QueryParam "includeOffices" Bool :>
             QueryParams "levels"
               RepresentativesRepresentativeInfoByAddressLevels
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RepresentativeInfoResponse

-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ 'representativesRepresentativeInfoByAddress'' smart constructor.
data RepresentativesRepresentativeInfoByAddress' = RepresentativesRepresentativeInfoByAddress'
    { _rribaQuotaUser      :: !(Maybe Text)
    , _rribaRoles          :: !(Maybe [RepresentativesRepresentativeInfoByAddressRoles])
    , _rribaPrettyPrint    :: !Bool
    , _rribaUserIP         :: !(Maybe Text)
    , _rribaAddress        :: !(Maybe Text)
    , _rribaKey            :: !(Maybe Key)
    , _rribaIncludeOffices :: !Bool
    , _rribaLevels         :: !(Maybe [RepresentativesRepresentativeInfoByAddressLevels])
    , _rribaOAuthToken     :: !(Maybe OAuthToken)
    , _rribaFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativesRepresentativeInfoByAddress'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribaQuotaUser'
--
-- * 'rribaRoles'
--
-- * 'rribaPrettyPrint'
--
-- * 'rribaUserIP'
--
-- * 'rribaAddress'
--
-- * 'rribaKey'
--
-- * 'rribaIncludeOffices'
--
-- * 'rribaLevels'
--
-- * 'rribaOAuthToken'
--
-- * 'rribaFields'
representativesRepresentativeInfoByAddress'
    :: RepresentativesRepresentativeInfoByAddress'
representativesRepresentativeInfoByAddress' =
    RepresentativesRepresentativeInfoByAddress'
    { _rribaQuotaUser = Nothing
    , _rribaRoles = Nothing
    , _rribaPrettyPrint = True
    , _rribaUserIP = Nothing
    , _rribaAddress = Nothing
    , _rribaKey = Nothing
    , _rribaIncludeOffices = True
    , _rribaLevels = Nothing
    , _rribaOAuthToken = Nothing
    , _rribaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rribaQuotaUser :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaQuotaUser
  = lens _rribaQuotaUser
      (\ s a -> s{_rribaQuotaUser = a})

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribaRoles :: Lens' RepresentativesRepresentativeInfoByAddress' [RepresentativesRepresentativeInfoByAddressRoles]
rribaRoles
  = lens _rribaRoles (\ s a -> s{_rribaRoles = a}) .
      _Default
      . _Coerce

-- | Returns response with indentations and line breaks.
rribaPrettyPrint :: Lens' RepresentativesRepresentativeInfoByAddress' Bool
rribaPrettyPrint
  = lens _rribaPrettyPrint
      (\ s a -> s{_rribaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rribaUserIP :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaUserIP
  = lens _rribaUserIP (\ s a -> s{_rribaUserIP = a})

-- | The address to look up. May only be specified if the field ocdId is not
-- given in the URL.
rribaAddress :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaAddress
  = lens _rribaAddress (\ s a -> s{_rribaAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rribaKey :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Key)
rribaKey = lens _rribaKey (\ s a -> s{_rribaKey = a})

-- | Whether to return information about offices and officials. If false,
-- only the top-level district information will be returned.
rribaIncludeOffices :: Lens' RepresentativesRepresentativeInfoByAddress' Bool
rribaIncludeOffices
  = lens _rribaIncludeOffices
      (\ s a -> s{_rribaIncludeOffices = a})

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
rribaLevels :: Lens' RepresentativesRepresentativeInfoByAddress' [RepresentativesRepresentativeInfoByAddressLevels]
rribaLevels
  = lens _rribaLevels (\ s a -> s{_rribaLevels = a}) .
      _Default
      . _Coerce

-- | OAuth 2.0 token for the current user.
rribaOAuthToken :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe OAuthToken)
rribaOAuthToken
  = lens _rribaOAuthToken
      (\ s a -> s{_rribaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rribaFields :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaFields
  = lens _rribaFields (\ s a -> s{_rribaFields = a})

instance GoogleAuth
         RepresentativesRepresentativeInfoByAddress' where
        authKey = rribaKey . _Just
        authToken = rribaOAuthToken . _Just

instance GoogleRequest
         RepresentativesRepresentativeInfoByAddress' where
        type Rs RepresentativesRepresentativeInfoByAddress' =
             RepresentativeInfoResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u
          RepresentativesRepresentativeInfoByAddress'{..}
          = go (_rribaRoles ^. _Default) _rribaAddress
              (Just _rribaIncludeOffices)
              (_rribaLevels ^. _Default)
              _rribaQuotaUser
              (Just _rribaPrettyPrint)
              _rribaUserIP
              _rribaFields
              _rribaKey
              _rribaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByAddressResource)
                      r
                      u
