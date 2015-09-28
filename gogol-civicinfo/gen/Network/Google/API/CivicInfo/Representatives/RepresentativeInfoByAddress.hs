{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByAddress
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByAddress@.
module Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByAddress
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByAddressAPI

    -- * Creating a Request
    , representativesRepresentativeInfoByAddress'
    , RepresentativesRepresentativeInfoByAddress'

    -- * Request Lenses
    , rribaQuotaUser
    , rribaRoles
    , rribaPrettyPrint
    , rribaUserIp
    , rribaAddress
    , rribaKey
    , rribaIncludeOffices
    , rribaLevels
    , rribaOauthToken
    , rribaFields
    , rribaAlt
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for civicinfo.representatives.representativeInfoByAddress which the
-- 'RepresentativesRepresentativeInfoByAddress'' request conforms to.
type RepresentativesRepresentativeInfoByAddressAPI =
     "representatives" :>
       QueryParam "quotaUser" Text :>
         QueryParam "roles"
           RepresentativesRepresentativeInfoByAddress'Roles
           :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "address" Text :>
                 QueryParam "key" Text :>
                   QueryParam "includeOffices" Bool :>
                     QueryParam "levels"
                       RepresentativesRepresentativeInfoByAddress'Levels
                       :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] RepresentativeInfoResponse

-- | Looks up political geography and representative information for a single
-- address.
--
-- /See:/ 'representativesRepresentativeInfoByAddress'' smart constructor.
data RepresentativesRepresentativeInfoByAddress' = RepresentativesRepresentativeInfoByAddress'
    { _rribaQuotaUser      :: !(Maybe Text)
    , _rribaRoles          :: !(Maybe RepresentativesRepresentativeInfoByAddress'Roles)
    , _rribaPrettyPrint    :: !Bool
    , _rribaUserIp         :: !(Maybe Text)
    , _rribaAddress        :: !(Maybe Text)
    , _rribaKey            :: !(Maybe Text)
    , _rribaIncludeOffices :: !Bool
    , _rribaLevels         :: !(Maybe RepresentativesRepresentativeInfoByAddress'Levels)
    , _rribaOauthToken     :: !(Maybe Text)
    , _rribaFields         :: !(Maybe Text)
    , _rribaAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'rribaUserIp'
--
-- * 'rribaAddress'
--
-- * 'rribaKey'
--
-- * 'rribaIncludeOffices'
--
-- * 'rribaLevels'
--
-- * 'rribaOauthToken'
--
-- * 'rribaFields'
--
-- * 'rribaAlt'
representativesRepresentativeInfoByAddress'
    :: RepresentativesRepresentativeInfoByAddress'
representativesRepresentativeInfoByAddress' =
    RepresentativesRepresentativeInfoByAddress'
    { _rribaQuotaUser = Nothing
    , _rribaRoles = Nothing
    , _rribaPrettyPrint = True
    , _rribaUserIp = Nothing
    , _rribaAddress = Nothing
    , _rribaKey = Nothing
    , _rribaIncludeOffices = True
    , _rribaLevels = Nothing
    , _rribaOauthToken = Nothing
    , _rribaFields = Nothing
    , _rribaAlt = JSON
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
rribaRoles :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe RepresentativesRepresentativeInfoByAddress'Roles)
rribaRoles
  = lens _rribaRoles (\ s a -> s{_rribaRoles = a})

-- | Returns response with indentations and line breaks.
rribaPrettyPrint :: Lens' RepresentativesRepresentativeInfoByAddress' Bool
rribaPrettyPrint
  = lens _rribaPrettyPrint
      (\ s a -> s{_rribaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rribaUserIp :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaUserIp
  = lens _rribaUserIp (\ s a -> s{_rribaUserIp = a})

-- | The address to look up. May only be specified if the field ocdId is not
-- given in the URL.
rribaAddress :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaAddress
  = lens _rribaAddress (\ s a -> s{_rribaAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rribaKey :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
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
rribaLevels :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe RepresentativesRepresentativeInfoByAddress'Levels)
rribaLevels
  = lens _rribaLevels (\ s a -> s{_rribaLevels = a})

-- | OAuth 2.0 token for the current user.
rribaOauthToken :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaOauthToken
  = lens _rribaOauthToken
      (\ s a -> s{_rribaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rribaFields :: Lens' RepresentativesRepresentativeInfoByAddress' (Maybe Text)
rribaFields
  = lens _rribaFields (\ s a -> s{_rribaFields = a})

-- | Data format for the response.
rribaAlt :: Lens' RepresentativesRepresentativeInfoByAddress' Alt
rribaAlt = lens _rribaAlt (\ s a -> s{_rribaAlt = a})

instance GoogleRequest
         RepresentativesRepresentativeInfoByAddress' where
        type Rs RepresentativesRepresentativeInfoByAddress' =
             RepresentativeInfoResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u
          RepresentativesRepresentativeInfoByAddress'{..}
          = go _rribaQuotaUser _rribaRoles
              (Just _rribaPrettyPrint)
              _rribaUserIp
              _rribaAddress
              _rribaKey
              (Just _rribaIncludeOffices)
              _rribaLevels
              _rribaOauthToken
              _rribaFields
              (Just _rribaAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RepresentativesRepresentativeInfoByAddressAPI)
                      r
                      u
