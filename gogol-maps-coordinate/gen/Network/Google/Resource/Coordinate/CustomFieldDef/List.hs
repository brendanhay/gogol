{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.CustomFieldDef.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of custom field definitions for a team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateCustomFieldDefList@.
module Coordinate.CustomFieldDef.List
    (
    -- * REST Resource
      CustomFieldDefListAPI

    -- * Creating a Request
    , customFieldDefList
    , CustomFieldDefList

    -- * Request Lenses
    , cfdlQuotaUser
    , cfdlPrettyPrint
    , cfdlUserIp
    , cfdlTeamId
    , cfdlKey
    , cfdlOauthToken
    , cfdlFields
    , cfdlAlt
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateCustomFieldDefList@ which the
-- 'CustomFieldDefList' request conforms to.
type CustomFieldDefListAPI =
     "teams" :>
       Capture "teamId" Text :>
         "custom_fields" :>
           Get '[JSON] CustomFieldDefListResponse

-- | Retrieves a list of custom field definitions for a team.
--
-- /See:/ 'customFieldDefList' smart constructor.
data CustomFieldDefList = CustomFieldDefList
    { _cfdlQuotaUser   :: !(Maybe Text)
    , _cfdlPrettyPrint :: !Bool
    , _cfdlUserIp      :: !(Maybe Text)
    , _cfdlTeamId      :: !Text
    , _cfdlKey         :: !(Maybe Text)
    , _cfdlOauthToken  :: !(Maybe Text)
    , _cfdlFields      :: !(Maybe Text)
    , _cfdlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFieldDefList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdlQuotaUser'
--
-- * 'cfdlPrettyPrint'
--
-- * 'cfdlUserIp'
--
-- * 'cfdlTeamId'
--
-- * 'cfdlKey'
--
-- * 'cfdlOauthToken'
--
-- * 'cfdlFields'
--
-- * 'cfdlAlt'
customFieldDefList
    :: Text -- ^ 'teamId'
    -> CustomFieldDefList
customFieldDefList pCfdlTeamId_ =
    CustomFieldDefList
    { _cfdlQuotaUser = Nothing
    , _cfdlPrettyPrint = True
    , _cfdlUserIp = Nothing
    , _cfdlTeamId = pCfdlTeamId_
    , _cfdlKey = Nothing
    , _cfdlOauthToken = Nothing
    , _cfdlFields = Nothing
    , _cfdlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfdlQuotaUser :: Lens' CustomFieldDefList' (Maybe Text)
cfdlQuotaUser
  = lens _cfdlQuotaUser
      (\ s a -> s{_cfdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfdlPrettyPrint :: Lens' CustomFieldDefList' Bool
cfdlPrettyPrint
  = lens _cfdlPrettyPrint
      (\ s a -> s{_cfdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfdlUserIp :: Lens' CustomFieldDefList' (Maybe Text)
cfdlUserIp
  = lens _cfdlUserIp (\ s a -> s{_cfdlUserIp = a})

-- | Team ID
cfdlTeamId :: Lens' CustomFieldDefList' Text
cfdlTeamId
  = lens _cfdlTeamId (\ s a -> s{_cfdlTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfdlKey :: Lens' CustomFieldDefList' (Maybe Text)
cfdlKey = lens _cfdlKey (\ s a -> s{_cfdlKey = a})

-- | OAuth 2.0 token for the current user.
cfdlOauthToken :: Lens' CustomFieldDefList' (Maybe Text)
cfdlOauthToken
  = lens _cfdlOauthToken
      (\ s a -> s{_cfdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfdlFields :: Lens' CustomFieldDefList' (Maybe Text)
cfdlFields
  = lens _cfdlFields (\ s a -> s{_cfdlFields = a})

-- | Data format for the response.
cfdlAlt :: Lens' CustomFieldDefList' Text
cfdlAlt = lens _cfdlAlt (\ s a -> s{_cfdlAlt = a})

instance GoogleRequest CustomFieldDefList' where
        type Rs CustomFieldDefList' =
             CustomFieldDefListResponse
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u CustomFieldDefList{..}
          = go _cfdlQuotaUser _cfdlPrettyPrint _cfdlUserIp
              _cfdlTeamId
              _cfdlKey
              _cfdlOauthToken
              _cfdlFields
              _cfdlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomFieldDefListAPI)
                      r
                      u
