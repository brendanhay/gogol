{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up representative information for a single geographic division.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicinfoRepresentativesRepresentativeInfoByDivision@.
module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision
    (
    -- * REST Resource
      RepresentativesRepresentativeInfoByDivisionResource

    -- * Creating a Request
    , representativesRepresentativeInfoByDivision'
    , RepresentativesRepresentativeInfoByDivision'

    -- * Request Lenses
    , rribdQuotaUser
    , rribdRoles
    , rribdPrettyPrint
    , rribdUserIp
    , rribdKey
    , rribdRecursive
    , rribdOcdId
    , rribdLevels
    , rribdOauthToken
    , rribdFields
    , rribdAlt
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicinfoRepresentativesRepresentativeInfoByDivision@ which the
-- 'RepresentativesRepresentativeInfoByDivision'' request conforms to.
type RepresentativesRepresentativeInfoByDivisionResource
     =
     "representatives" :>
       Capture "ocdId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParams "roles"
             CivicinfoRepresentativesRepresentativeInfoByDivisionRoles
             :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "recursive" Bool :>
                     QueryParams "levels"
                       CivicinfoRepresentativesRepresentativeInfoByDivisionLevels
                       :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] RepresentativeInfoData

-- | Looks up representative information for a single geographic division.
--
-- /See:/ 'representativesRepresentativeInfoByDivision'' smart constructor.
data RepresentativesRepresentativeInfoByDivision' = RepresentativesRepresentativeInfoByDivision'
    { _rribdQuotaUser   :: !(Maybe Text)
    , _rribdRoles       :: !(Maybe CivicinfoRepresentativesRepresentativeInfoByDivisionRoles)
    , _rribdPrettyPrint :: !Bool
    , _rribdUserIp      :: !(Maybe Text)
    , _rribdKey         :: !(Maybe Text)
    , _rribdRecursive   :: !(Maybe Bool)
    , _rribdOcdId       :: !Text
    , _rribdLevels      :: !(Maybe CivicinfoRepresentativesRepresentativeInfoByDivisionLevels)
    , _rribdOauthToken  :: !(Maybe Text)
    , _rribdFields      :: !(Maybe Text)
    , _rribdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativesRepresentativeInfoByDivision'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rribdQuotaUser'
--
-- * 'rribdRoles'
--
-- * 'rribdPrettyPrint'
--
-- * 'rribdUserIp'
--
-- * 'rribdKey'
--
-- * 'rribdRecursive'
--
-- * 'rribdOcdId'
--
-- * 'rribdLevels'
--
-- * 'rribdOauthToken'
--
-- * 'rribdFields'
--
-- * 'rribdAlt'
representativesRepresentativeInfoByDivision'
    :: Text -- ^ 'ocdId'
    -> RepresentativesRepresentativeInfoByDivision'
representativesRepresentativeInfoByDivision' pRribdOcdId_ =
    RepresentativesRepresentativeInfoByDivision'
    { _rribdQuotaUser = Nothing
    , _rribdRoles = Nothing
    , _rribdPrettyPrint = True
    , _rribdUserIp = Nothing
    , _rribdKey = Nothing
    , _rribdRecursive = Nothing
    , _rribdOcdId = pRribdOcdId_
    , _rribdLevels = Nothing
    , _rribdOauthToken = Nothing
    , _rribdFields = Nothing
    , _rribdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rribdQuotaUser :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdQuotaUser
  = lens _rribdQuotaUser
      (\ s a -> s{_rribdQuotaUser = a})

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
rribdRoles :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe CivicinfoRepresentativesRepresentativeInfoByDivisionRoles)
rribdRoles
  = lens _rribdRoles (\ s a -> s{_rribdRoles = a})

-- | Returns response with indentations and line breaks.
rribdPrettyPrint :: Lens' RepresentativesRepresentativeInfoByDivision' Bool
rribdPrettyPrint
  = lens _rribdPrettyPrint
      (\ s a -> s{_rribdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rribdUserIp :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdUserIp
  = lens _rribdUserIp (\ s a -> s{_rribdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rribdKey :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdKey = lens _rribdKey (\ s a -> s{_rribdKey = a})

-- | If true, information about all divisions contained in the division
-- requested will be included as well. For example, if querying
-- ocd-division\/country:us\/district:dc, this would also return all DC\'s
-- wards and ANCs.
rribdRecursive :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Bool)
rribdRecursive
  = lens _rribdRecursive
      (\ s a -> s{_rribdRecursive = a})

-- | The Open Civic Data division identifier of the division to look up.
rribdOcdId :: Lens' RepresentativesRepresentativeInfoByDivision' Text
rribdOcdId
  = lens _rribdOcdId (\ s a -> s{_rribdOcdId = a})

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
rribdLevels :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe CivicinfoRepresentativesRepresentativeInfoByDivisionLevels)
rribdLevels
  = lens _rribdLevels (\ s a -> s{_rribdLevels = a})

-- | OAuth 2.0 token for the current user.
rribdOauthToken :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdOauthToken
  = lens _rribdOauthToken
      (\ s a -> s{_rribdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rribdFields :: Lens' RepresentativesRepresentativeInfoByDivision' (Maybe Text)
rribdFields
  = lens _rribdFields (\ s a -> s{_rribdFields = a})

-- | Data format for the response.
rribdAlt :: Lens' RepresentativesRepresentativeInfoByDivision' Alt
rribdAlt = lens _rribdAlt (\ s a -> s{_rribdAlt = a})

instance GoogleRequest
         RepresentativesRepresentativeInfoByDivision' where
        type Rs RepresentativesRepresentativeInfoByDivision'
             = RepresentativeInfoData
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u
          RepresentativesRepresentativeInfoByDivision'{..}
          = go _rribdQuotaUser _rribdRoles
              (Just _rribdPrettyPrint)
              _rribdUserIp
              _rribdKey
              _rribdRecursive
              _rribdOcdId
              _rribdLevels
              _rribdOauthToken
              _rribdFields
              (Just _rribdAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           RepresentativesRepresentativeInfoByDivisionResource)
                      r
                      u
