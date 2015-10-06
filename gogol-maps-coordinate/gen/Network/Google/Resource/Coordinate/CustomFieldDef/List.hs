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
module Network.Google.Resource.Coordinate.CustomFieldDef.List
    (
    -- * REST Resource
      CustomFieldDefListResource

    -- * Creating a Request
    , customFieldDefList'
    , CustomFieldDefList'

    -- * Request Lenses
    , cfdlQuotaUser
    , cfdlPrettyPrint
    , cfdlUserIP
    , cfdlTeamId
    , cfdlKey
    , cfdlOAuthToken
    , cfdlFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateCustomFieldDefList@ which the
-- 'CustomFieldDefList'' request conforms to.
type CustomFieldDefListResource =
     "teams" :>
       Capture "teamId" Text :>
         "custom_fields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CustomFieldDefListResponse

-- | Retrieves a list of custom field definitions for a team.
--
-- /See:/ 'customFieldDefList'' smart constructor.
data CustomFieldDefList' = CustomFieldDefList'
    { _cfdlQuotaUser   :: !(Maybe Text)
    , _cfdlPrettyPrint :: !Bool
    , _cfdlUserIP      :: !(Maybe Text)
    , _cfdlTeamId      :: !Text
    , _cfdlKey         :: !(Maybe AuthKey)
    , _cfdlOAuthToken  :: !(Maybe OAuthToken)
    , _cfdlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFieldDefList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdlQuotaUser'
--
-- * 'cfdlPrettyPrint'
--
-- * 'cfdlUserIP'
--
-- * 'cfdlTeamId'
--
-- * 'cfdlKey'
--
-- * 'cfdlOAuthToken'
--
-- * 'cfdlFields'
customFieldDefList'
    :: Text -- ^ 'teamId'
    -> CustomFieldDefList'
customFieldDefList' pCfdlTeamId_ =
    CustomFieldDefList'
    { _cfdlQuotaUser = Nothing
    , _cfdlPrettyPrint = True
    , _cfdlUserIP = Nothing
    , _cfdlTeamId = pCfdlTeamId_
    , _cfdlKey = Nothing
    , _cfdlOAuthToken = Nothing
    , _cfdlFields = Nothing
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
cfdlUserIP :: Lens' CustomFieldDefList' (Maybe Text)
cfdlUserIP
  = lens _cfdlUserIP (\ s a -> s{_cfdlUserIP = a})

-- | Team ID
cfdlTeamId :: Lens' CustomFieldDefList' Text
cfdlTeamId
  = lens _cfdlTeamId (\ s a -> s{_cfdlTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfdlKey :: Lens' CustomFieldDefList' (Maybe AuthKey)
cfdlKey = lens _cfdlKey (\ s a -> s{_cfdlKey = a})

-- | OAuth 2.0 token for the current user.
cfdlOAuthToken :: Lens' CustomFieldDefList' (Maybe OAuthToken)
cfdlOAuthToken
  = lens _cfdlOAuthToken
      (\ s a -> s{_cfdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfdlFields :: Lens' CustomFieldDefList' (Maybe Text)
cfdlFields
  = lens _cfdlFields (\ s a -> s{_cfdlFields = a})

instance GoogleAuth CustomFieldDefList' where
        authKey = cfdlKey . _Just
        authToken = cfdlOAuthToken . _Just

instance GoogleRequest CustomFieldDefList' where
        type Rs CustomFieldDefList' =
             CustomFieldDefListResponse
        request = requestWith mapsCoordinateRequest
        requestWith rq CustomFieldDefList'{..}
          = go _cfdlTeamId _cfdlQuotaUser
              (Just _cfdlPrettyPrint)
              _cfdlUserIP
              _cfdlFields
              _cfdlKey
              _cfdlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CustomFieldDefListResource)
                      rq
