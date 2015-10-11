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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsUpdate@.
module Network.Google.Resource.DFAReporting.Placements.Update
    (
    -- * REST Resource
      PlacementsUpdateResource

    -- * Creating a Request
    , placementsUpdate'
    , PlacementsUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIP
    , puProFileId
    , puPayload
    , puKey
    , puOAuthToken
    , puFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsUpdate@ method which the
-- 'PlacementsUpdate'' request conforms to.
type PlacementsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Placement :> Put '[JSON] Placement

-- | Updates an existing placement.
--
-- /See:/ 'placementsUpdate'' smart constructor.
data PlacementsUpdate' = PlacementsUpdate'
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIP      :: !(Maybe Text)
    , _puProFileId   :: !Int64
    , _puPayload     :: !Placement
    , _puKey         :: !(Maybe AuthKey)
    , _puOAuthToken  :: !(Maybe OAuthToken)
    , _puFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIP'
--
-- * 'puProFileId'
--
-- * 'puPayload'
--
-- * 'puKey'
--
-- * 'puOAuthToken'
--
-- * 'puFields'
placementsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Placement -- ^ 'payload'
    -> PlacementsUpdate'
placementsUpdate' pPuProFileId_ pPuPayload_ =
    PlacementsUpdate'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIP = Nothing
    , _puProFileId = pPuProFileId_
    , _puPayload = pPuPayload_
    , _puKey = Nothing
    , _puOAuthToken = Nothing
    , _puFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlacementsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlacementsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PlacementsUpdate' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | User profile ID associated with this request.
puProFileId :: Lens' PlacementsUpdate' Int64
puProFileId
  = lens _puProFileId (\ s a -> s{_puProFileId = a})

-- | Multipart request metadata.
puPayload :: Lens' PlacementsUpdate' Placement
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlacementsUpdate' (Maybe AuthKey)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PlacementsUpdate' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlacementsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PlacementsUpdate' where
        _AuthKey = puKey . _Just
        _AuthToken = puOAuthToken . _Just

instance GoogleRequest PlacementsUpdate' where
        type Rs PlacementsUpdate' = Placement
        request = requestWith dFAReportingRequest
        requestWith rq PlacementsUpdate'{..}
          = go _puProFileId _puQuotaUser (Just _puPrettyPrint)
              _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
              _puPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PlacementsUpdateResource)
                      rq
