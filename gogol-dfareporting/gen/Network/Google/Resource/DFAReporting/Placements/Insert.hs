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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsInsert@.
module Network.Google.Resource.DFAReporting.Placements.Insert
    (
    -- * REST Resource
      PlacementsInsertResource

    -- * Creating a Request
    , placementsInsert'
    , PlacementsInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piUserIP
    , piProfileId
    , piKey
    , piOAuthToken
    , piPlacement
    , piFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsInsert@ which the
-- 'PlacementsInsert'' request conforms to.
type PlacementsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Placement :> Post '[JSON] Placement

-- | Inserts a new placement.
--
-- /See:/ 'placementsInsert'' smart constructor.
data PlacementsInsert' = PlacementsInsert'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piUserIP      :: !(Maybe Text)
    , _piProfileId   :: !Int64
    , _piKey         :: !(Maybe Key)
    , _piOAuthToken  :: !(Maybe OAuthToken)
    , _piPlacement   :: !Placement
    , _piFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIP'
--
-- * 'piProfileId'
--
-- * 'piKey'
--
-- * 'piOAuthToken'
--
-- * 'piPlacement'
--
-- * 'piFields'
placementsInsert'
    :: Int64 -- ^ 'profileId'
    -> Placement -- ^ 'Placement'
    -> PlacementsInsert'
placementsInsert' pPiProfileId_ pPiPlacement_ =
    PlacementsInsert'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIP = Nothing
    , _piProfileId = pPiProfileId_
    , _piKey = Nothing
    , _piOAuthToken = Nothing
    , _piPlacement = pPiPlacement_
    , _piFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PlacementsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PlacementsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIP :: Lens' PlacementsInsert' (Maybe Text)
piUserIP = lens _piUserIP (\ s a -> s{_piUserIP = a})

-- | User profile ID associated with this request.
piProfileId :: Lens' PlacementsInsert' Int64
piProfileId
  = lens _piProfileId (\ s a -> s{_piProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PlacementsInsert' (Maybe Key)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOAuthToken :: Lens' PlacementsInsert' (Maybe OAuthToken)
piOAuthToken
  = lens _piOAuthToken (\ s a -> s{_piOAuthToken = a})

-- | Multipart request metadata.
piPlacement :: Lens' PlacementsInsert' Placement
piPlacement
  = lens _piPlacement (\ s a -> s{_piPlacement = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PlacementsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

instance GoogleAuth PlacementsInsert' where
        authKey = piKey . _Just
        authToken = piOAuthToken . _Just

instance GoogleRequest PlacementsInsert' where
        type Rs PlacementsInsert' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsInsert'{..}
          = go _piProfileId _piQuotaUser (Just _piPrettyPrint)
              _piUserIP
              _piFields
              _piKey
              _piOAuthToken
              (Just AltJSON)
              _piPlacement
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsInsertResource)
                      r
                      u
