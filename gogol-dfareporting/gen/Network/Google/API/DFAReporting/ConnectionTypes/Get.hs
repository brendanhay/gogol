{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.ConnectionTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one connection type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.connectionTypes.get@.
module Network.Google.API.DFAReporting.ConnectionTypes.Get
    (
    -- * REST Resource
      ConnectionTypesGetAPI

    -- * Creating a Request
    , connectionTypesGet'
    , ConnectionTypesGet'

    -- * Request Lenses
    , ctgQuotaUser
    , ctgPrettyPrint
    , ctgUserIp
    , ctgProfileId
    , ctgKey
    , ctgId
    , ctgOauthToken
    , ctgFields
    , ctgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.connectionTypes.get which the
-- 'ConnectionTypesGet'' request conforms to.
type ConnectionTypesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "connectionTypes" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ConnectionType

-- | Gets one connection type by ID.
--
-- /See:/ 'connectionTypesGet'' smart constructor.
data ConnectionTypesGet' = ConnectionTypesGet'
    { _ctgQuotaUser   :: !(Maybe Text)
    , _ctgPrettyPrint :: !Bool
    , _ctgUserIp      :: !(Maybe Text)
    , _ctgProfileId   :: !Int64
    , _ctgKey         :: !(Maybe Text)
    , _ctgId          :: !Int64
    , _ctgOauthToken  :: !(Maybe Text)
    , _ctgFields      :: !(Maybe Text)
    , _ctgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgQuotaUser'
--
-- * 'ctgPrettyPrint'
--
-- * 'ctgUserIp'
--
-- * 'ctgProfileId'
--
-- * 'ctgKey'
--
-- * 'ctgId'
--
-- * 'ctgOauthToken'
--
-- * 'ctgFields'
--
-- * 'ctgAlt'
connectionTypesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ConnectionTypesGet'
connectionTypesGet' pCtgProfileId_ pCtgId_ =
    ConnectionTypesGet'
    { _ctgQuotaUser = Nothing
    , _ctgPrettyPrint = True
    , _ctgUserIp = Nothing
    , _ctgProfileId = pCtgProfileId_
    , _ctgKey = Nothing
    , _ctgId = pCtgId_
    , _ctgOauthToken = Nothing
    , _ctgFields = Nothing
    , _ctgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctgQuotaUser :: Lens' ConnectionTypesGet' (Maybe Text)
ctgQuotaUser
  = lens _ctgQuotaUser (\ s a -> s{_ctgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctgPrettyPrint :: Lens' ConnectionTypesGet' Bool
ctgPrettyPrint
  = lens _ctgPrettyPrint
      (\ s a -> s{_ctgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctgUserIp :: Lens' ConnectionTypesGet' (Maybe Text)
ctgUserIp
  = lens _ctgUserIp (\ s a -> s{_ctgUserIp = a})

-- | User profile ID associated with this request.
ctgProfileId :: Lens' ConnectionTypesGet' Int64
ctgProfileId
  = lens _ctgProfileId (\ s a -> s{_ctgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctgKey :: Lens' ConnectionTypesGet' (Maybe Text)
ctgKey = lens _ctgKey (\ s a -> s{_ctgKey = a})

-- | Connection type ID.
ctgId :: Lens' ConnectionTypesGet' Int64
ctgId = lens _ctgId (\ s a -> s{_ctgId = a})

-- | OAuth 2.0 token for the current user.
ctgOauthToken :: Lens' ConnectionTypesGet' (Maybe Text)
ctgOauthToken
  = lens _ctgOauthToken
      (\ s a -> s{_ctgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctgFields :: Lens' ConnectionTypesGet' (Maybe Text)
ctgFields
  = lens _ctgFields (\ s a -> s{_ctgFields = a})

-- | Data format for the response.
ctgAlt :: Lens' ConnectionTypesGet' Alt
ctgAlt = lens _ctgAlt (\ s a -> s{_ctgAlt = a})

instance GoogleRequest ConnectionTypesGet' where
        type Rs ConnectionTypesGet' = ConnectionType
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ConnectionTypesGet'{..}
          = go _ctgQuotaUser (Just _ctgPrettyPrint) _ctgUserIp
              _ctgProfileId
              _ctgKey
              _ctgId
              _ctgOauthToken
              _ctgFields
              (Just _ctgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConnectionTypesGetAPI)
                      r
                      u
